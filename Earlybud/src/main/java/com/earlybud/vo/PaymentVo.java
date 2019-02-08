package com.earlybud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaymentVo {
	private String nickname;
	private String email;
	private String del_name;
	private String del_phone;
	private String zip_code;
	private String addr1;
	private String addr2;
	private String cardnum;
	private String cardcvc;
	private String birthdate;
	private String pur_type;
	private String exp_month;
	private String exp_year;
	private String cardpwd;
}
