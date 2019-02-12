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

import com.earlybud.item.service.ItemService;

@Controller
@Component
public class Scheduler {
	@Autowired
	private ItemService serviceItem;
/*
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
		System.out.println("스케줄러 작동 시작");
		change_success_or_fail();
		/*
		 * 스케줄러가 하는 일 : 자정마다 프로젝트 끝난거 처리하기
			1. 성공여부 '0'값이고, 현재날짜-마감날짜가 -1이고, admincall이 0인 애들 중에서
			cur_sum이 target_sum보다 큰 애들 = 성공, 나머지는 실패.update
			
			2. 목표금액 미달=실패=결제정보 취소/ 결제정보 삭제
			목표금액 달성=성공=결제진행
			
		 * */		
	}

	public void change_success_or_fail() {
		System.out.println("오전12:0:0에 호출이 됩니다 ");		
		//실패일경우
		//먼저 결제 정보 취소
		//결제 정보 삭제하되 구매상품테이블에서는 삭제하면 안됨
		//제품 성공여부 실패로 
		
		//성공일경우
		//제품 성공여부 성공으로
				
		
		//취소 또는 성공해야 할 list 들
		List<Map<String, Object>> list = serviceItem.midnightService();
		System.out.println("list: "+list);
		for(int i=0; i<list.size(); i++) {
			Map<String, Object> map = list.get(i);
			System.out.println("map: "+map);
			//성공일 때			
			if(((BigDecimal)map.get("CUR_SUM")).longValue()>=((BigDecimal)map.get("TARGET_SUM")).longValue()) {
				System.out.println("펀딩 성공");
				//제품테이블 성공여부  0->1
				serviceItem.updateSuccessYService(((BigDecimal)map.get("ITEM_CODE")).longValue());
				System.out.println("ITEM_code: "+((BigDecimal)map.get("ITEM_CODE")).longValue());
			}else {//실패일 때

				System.out.println("펀딩 실패");
				/*
				System.out.println("결제승인번호: "+(String)map.get("IMP_UID"));				
				//결제 취소하고
				CancelData cancel_data = new CancelData((String)map.get("IMP_UID"), true);
				client.cancelPaymentByImpUid(cancel_data);
				//결제 정보 삭제
				//service_Payinfo.deleteService(((BigDecimal)map.get("PAYINFO_CODE")).longValue());
				*/
			}
		}
		//제품테이블 성공여부 0->2  결제가 한건도 진행되지 않은 상품도 N으로 바꿔야 하므로
		serviceItem.updateSuccessNService();
	}
}
/*
	@RequestMapping(value="admin/success.do", method=RequestMethod.GET)	
	@ResponseBody
	public void success() {
		change_boolean_success();
	}

}
*/