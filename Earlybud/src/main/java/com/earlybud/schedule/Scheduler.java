package com.earlybud.schedule;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
/*
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.request.CancelData;

import soo.mjk.payinfo.model.service.PayinfoService;
import soo.mjk.product.model.service.ProductService;
import soo.mjk.sale.model.service.SaleService;
*/
/*http://sun-p.tistory.com/115 스케줄러 이거 보고 따라했음.*/

@Controller
@Component
public class Scheduler {
/*	@Autowired
	private ProductService service_Product;
	@Autowired
	private SaleService service_Sale;
	@Autowired
	private PayinfoService service_Payinfo;
*/
	/** * 2. 오후 05:51:00에 호출이 되는 스케쥴러 */
	//rest api 키, rest api secret
//	private IamportClient client =  new IamportClient("3019792607051222", "1LuYufJQlSP3O3KPOLnV2C9XPRzkufYw0suuHdl35b7UfRJ3D7ZGJ8Ez0eTvtR1ujvY1Jk5PvcJK4tOH");

	
	/** * 1. 오후 05:50:00에 호출이 되는 스케쥴러 */ 
	@Scheduled(cron = "0 50 17 * * *") 
	public void cronTest1(){ 
		System.out.println("오후 05:50:00에 호출이 됩니다 "); 
	} 
@Scheduled(cron = "0 55 15 * * *") 
	public void cronTest2(){
		System.out.println("하하핫");
		/*
		 * 스케줄러가 하는 일 : 자정마다 프로젝트 끝난거 처리하기
			1. 성공여부 null값인 애들 중에서 현재날짜-마감날짜가 0인 애들을 대상으로 펀딩 성공/실패여부 판단
			
			2. 
			목표금액 미달=실패=결제정보 취소/ 결제정보 삭제/ 제품 성공여부 실패로 insert 
			목표금액 달성=성공=결제진행 / 제품 성공여부 성공으로 insert
			
			
			아이템 상세페이지에서 -일-시간 남았다고 표시하는거 : 마감시간-현재시간. 마감 당일에는 "오늘 자정까지"라는 문구 띄우기
		 * 
		 * 
		 * */
		
		
		//change_boolean_success();
	}
}
/*	public void change_boolean_success() {
		System.out.println("오전12:0:0에 호출이 됩니다 ");
		//오전 12시 정각에 해야 할 일
		//select i.imp_uid, i.payinfo_code, p.product_code, p.success_qty, p.apply_qty from product p, sale s, payinfo i where p.product_code=s.product_code and s.sale_code=i.sale_code and target_date<=sysdate;
		//and p.success_qty<=p.apply_qty 성공
		//and p.success_qty>p.apply_qty 실패
		//실패일경우
		//먼저 결제 정보 취소
		//결제 정보 삭제
		//제품 성공여부 실패로 
		
		//성공일경우
		//제품 성공여부 성공으로
		
		
		//본인이 취소한 상품에 대해서는 취소하면 결제 테이블과 판매테이블에서 삭제되지만
		//12시 정각에 펀딩 성공/실패를 설정할 때는 결제 테이블에서는 삭제하되 판매테이블에서는 삭제하지 말까보다. 
		//취소 또는 성공해야 할 list 들
		List<Map<String, Object>> list = service_Product.selectMidnightService();
		System.out.println("list: "+list);
		for(int i=0; i<list.size(); i++) {
			Map<String, Object> map = list.get(i);
			System.out.println("map: "+map);
			//성공일 때
			System.out.println((String)map.get("IMP_UID"));
			System.out.println(((BigDecimal)map.get("PRODUCT_CODE")).longValue());
			//성공일때
			if(((BigDecimal)map.get("APPLY_QTY")).longValue()>=((BigDecimal)map.get("SUCCESS_QTY")).longValue()) {
				System.out.println("펀딩 성공했다");
				//제품테이블 성공여부  ING->Y
				service_Product.updateBooleanSuccessYService(((BigDecimal)map.get("PRODUCT_CODE")).longValue());
				System.out.println("product_code: "+((BigDecimal)map.get("PRODUCT_CODE")).longValue());
			}else {//실패일 때

				System.out.println("펀딩 실패했다.");
				System.out.println("결제승인번호: "+(String)map.get("IMP_UID"));
				
				//결제 취소하고
				CancelData cancel_data = new CancelData((String)map.get("IMP_UID"), true);
				client.cancelPaymentByImpUid(cancel_data);
				//결제 정보 삭제
				//service_Payinfo.deleteService(((BigDecimal)map.get("PAYINFO_CODE")).longValue());
			}
		}
		//제품테이블 성공여부 ING->N  결제가 한건도 진행되지 않은 상품도 N으로 바꿔야 하므로
		service_Product.updateBooleanSuccessNService();
	}
	
	@RequestMapping(value="admin/success.do", method=RequestMethod.GET)	
	@ResponseBody
	public void success() {
		change_boolean_success();
	}

}
*/