package com.earlybud.model;

import java.util.Date;

import lombok.Data;

@Data //롬복으로 getter,setter자동셋팅하기 위해서
public class Item {

  private Long ITEM_CODE;
  private Long CAT_CODE;
  private String TITLE;
  private String SUMMARY;
  private String CONTENT;
  private String MAIN_IMAGE;
  private String IMAGE_ITEM;
  private Long TARGET_SUM; //목표금액
  private Long CUR_SUM;
  private String OPENDATE;
  private String CLOSINGDATE;
  private Long ADMINCALL;
  private Long SUCCESS;
  private Long VIEW_COUNT; 
  private Long ENCORE_NUM;
  private Long ENCORE;
  private Long ENCORE_TIME;
  private String EMAIL;
}