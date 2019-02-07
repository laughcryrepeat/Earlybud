package com.earlybud.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberLikeVO {
	private String MAIN_IMAGE;
	private String TITLE;
	private String NICKNAME;
	private String CAT_NAME;
	private Long TARGET_SUM;
	private Long CUR_SUM;
	private String SUMMARY;
	private Date CLOSINGDATE;
	private String IMAGE;
	private String INFO;
	
	
	private String EMAIL;
	private String PWD;
	private String COL;
	private String PHONE;
	private String ADDR;
	private String DETAIL_ADDR;
	private Date JOINDATE;
	private Date DROPDATE;
	private Long CARDINFO; //String아닌가
	private String BANKINFO;
	private Long BANK_NUM;
	private String ITEM_LIKED;
	private String SELLER_LIKED;
}
