package com.earlybud.controller;

import java.io.*;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earlybud.member.dao.MemberDAO;
import com.earlybud.model.Member;
import com.earlybud.payment.service.PaymentService;
import com.earlybud.security.CustomNoOpPasswordEncoder;
import com.earlybud.vo.AddrVo;
import com.earlybud.vo.PaymentVo;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.request.ScheduleData;
import com.siot.IamportRestClient.request.ScheduleEntry;
import com.siot.IamportRestClient.request.UnscheduleData;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Schedule;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/payment/*")
@Log4j
public class PaymentController {
	
	@Setter(onMethod_ = { @Autowired } )
	private PaymentService service;
	
	@Setter(onMethod_ = { @Autowired })
	private MemberDAO dao;
	
	IamportClient client = new IamportClient("6720365022563293","fR14uM6bvndQ4MUl2u0pJWLjkPH4tUHJMINhvTs0hGRmtLHvgHUZDGiYv02ZVKJItwZYqrYI8P4BBL6R");
	
	@GetMapping("input")
	public void paymentInput() {
		log.info("payment input");
	}
	
	@RequestMapping("pwdCheck")
	public @ResponseBody Boolean pwdCheck(String pwd, String nickname, HttpServletResponse response) {
		log.info("pwd check with Ajex");
		log.info("pwd : "+pwd);
		log.info("nickname: "+nickname);
		String pwdMatch = service.pwdCheckService(nickname);
		log.info("pwdMatch: "+pwdMatch);
		CustomNoOpPasswordEncoder cpe = new CustomNoOpPasswordEncoder();
		System.out.println("cpe.encode(pwd) :"+cpe.encode(pwd));
		if(cpe.encode(pwd).equals(pwdMatch)) {
			System.out.println("true");
			return true;
		}else {
			System.out.println("false");
			return null;
		}
	}
	
	@RequestMapping("jusoPopup")
	public String jusoPopup(@ModelAttribute("AddrVo") AddrVo addrvo) {
		log.info("jusoPopup");
		return "payment/jusoPopup";
	}
	
	@RequestMapping(value="reserve_payment", method=RequestMethod.POST, produces="application/text; charset=utf8")
	public @ResponseBody String registerBillingKey(HttpServletRequest request ,HttpServletResponse response, PaymentVo paymentVo) {
		// 연결
		
		String customer_uid = null;
		log.info("registerBillingKey");
		log.info("paymentVo nickname: "+paymentVo.getNickname());
		String card_number = paymentVo.getCardnum();
		String expiry = paymentVo.getExp_year() +"-"+ paymentVo.getExp_month() ;
		String birth = paymentVo.getBirthdate();
		String pwd_2digit = paymentVo.getCardpwd();
		
		//Member member = dao.read(paymentVo.getEmail());
		customer_uid = getCustomerUid(paymentVo.getEmail());
		
		System.out.println("customer_uid: "+customer_uid);
		System.out.println("card_number: "+card_number);
		System.out.println("expiry: "+expiry);
		System.out.println("birth: "+birth);
		System.out.println("pwd_2digit: "+pwd_2digit);
		
		AccessToken auth = client.getAuth().getResponse();//토큰 가져오기
		System.out.println("AccessToken auth: "+auth);
		
		try {
			URL url = new URL("https://api.iamport.kr/subscribe/customers/"+customer_uid);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST"); // 보내는 타입
			conn.setRequestProperty("Content-Type", "application/json");
			conn.setRequestProperty("Authorization", auth.getToken());
		
			// 데이터
			String param = "{\"card_number\": \""+card_number+"\", \"expiry\" : \""+expiry+"\", "
					+ "\"birth\" : \""+birth+"\", \"pwd_2digit\" : \""+pwd_2digit+"\", \"pg\" : \"nictest04m\""
					+ ",\"customer_name\":\""+paymentVo.getCard_owner()+"\""
					+ ",\"customer_tel\":\""+paymentVo.getDel_phone()+"\" "
					+ ",\"customer_email\": \""+paymentVo.getEmail()+"\""
					+ ",\"customer_addr\": \""+paymentVo.getAddr1()+paymentVo.getAddr2()+"\" "
					+ ",\"customer_postcode\": \""+paymentVo.getZip_code()+"\"}";
			// 전송
			OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream());
			osw.write(param);
			System.out.println("send customer_uid & param");
			osw.flush();
			// 응답
			BufferedReader br = null;
			br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line = null;
			String message = null;
			while ((line = br.readLine()) != null) {
				System.out.println(line);
				System.out.println("Billing key response!!!");
				JsonParser jsonParser = new JsonParser();
				JsonElement element = jsonParser.parse(line);
				int code = element.getAsJsonObject().get("code").getAsInt();
				System.out.println("code = "+code);
				
				if(code==0) {
					reservePayment(paymentVo, customer_uid);
				}else {
					message = element.getAsJsonObject().get("message").getAsString();
					System.out.println("message = "+message);
					return message;
				}
			}			
			// 닫기
			osw.close();
			br.close();		
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (ProtocolException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void reservePayment(PaymentVo paymentVo, String customer_uid) {
		log.info("reserve payment");
		//log.info("paymentVo: "+paymentVo.getNickname());
		//Member member = dao.read(paymentVo.getEmail());	
		ScheduleData schedule_data = new ScheduleData(customer_uid);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println("sdf: "+sdf);
		Calendar cal = Calendar.getInstance();
		Date d;
		String merchant_uid = getMerchantUid(paymentVo.getType_code());
		try { //closingdate +1 and + 15 mins
			d = sdf.parse(paymentVo.getSchedule_at());
			cal.setTime(d);
			cal.add(Calendar.DATE,1);
			cal.add(Calendar.MINUTE, 15);
			Date d1 = cal.getTime();
			
			System.out.println("cal: "+cal);
			System.out.println("date d1: "+d1);
			schedule_data.addSchedule(new ScheduleEntry(merchant_uid, d1, BigDecimal.valueOf(100)));
			
			IamportResponse<List<Schedule>> schedule_response = client.subscribeSchedule(schedule_data);
			System.out.println("예약 요청 !");
			System.out.println("schedule_response : "+schedule_response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		//customer_uid, merchant_uid update!! paymentVo insert!!
		//스케줄된 purchase_item 테이블 pur_state 칼럼 업데이트!!
		//이메일과 쪽지 보내기.

		/*cal.set(Calendar.YEAR, Integer.parseInt(closingdate.substring(0,4)));
		cal.set(Calendar.MONTH, Integer.parseInt(closingdate.substring(4,6))-1);
		cal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(closingdate.substring(6,8))+1);
		cal.set(Calendar.HOUR, 00);
		cal.set(Calendar.MINUTE, 10);*/
	}
	public void canclePayment(PaymentVo paymentVo) {
		UnscheduleData unschedule_data = new UnscheduleData(paymentVo.getCustomer_uid());
		unschedule_data.addMerchantUid(paymentVo.getMerchant_uid());
		
		IamportResponse<List<Schedule>> unschedule_response = client.unsubscribeSchedule(unschedule_data);
		List<Schedule> cancelled_schedule = unschedule_response.getResponse();
		System.out.println("cancelled_schedule: "+cancelled_schedule);
		//스케줄된 purchase_item 테이블 cancel 칼럼 업데이트!!
	}
	
	private String getMerchantUid(String type_code) {
		DateFormat df = new SimpleDateFormat("$$hhmmssSS");
		//int n = (int) (Math.random() * 100) + 1;		
		return type_code + "_" + df.format(new Date());
	}
	private String getCustomerUid(String email) {
		DateFormat df = new SimpleDateFormat("$$hhmmssSS");
		//int n = (int) (Math.random() * 100) + 1;		
		return email+ "_" + df.format(new Date());
	}
}
