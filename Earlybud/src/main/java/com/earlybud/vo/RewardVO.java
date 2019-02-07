package com.earlybud.vo;

import java.util.Date;

import lombok.Data;

@Data //롬복으로 getter,setter자동셋팅하기 위해서
public class RewardVO {

  private String CAT_NAME;
  private String TITLE;
  private String MAIN_IMAGE;
  private String IMAGE_ITEM;
  private String NOW_SUM;
  private String PERCENT;
  private String TARGET_SUM;
  private String DEADLINE;
  private String CONTENT;
  private String IMAGE;	//판매자 프사
  private String EMAIL;	//판매자 이메일
  private String NICKNAME; //판매자 닉네임
}


//private String 참여인원;
//private String 남은시간;	//숫자로 받아서 0일경우(펀딩마감 당일일 경우) "오늘 자정까지" 라고 문구 띄우기 - 뷰단에서 처리
//private String 옵션내용;