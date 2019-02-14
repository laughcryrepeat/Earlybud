package com.earlybud.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data //롬복으로 getter,setter자동셋팅하기 위해서
public class Item {

  private Long item_code;
  private Long cat_code;
  private String title;
  private String summary;
  private String content;
  private String main_image;
  private String image_item;
  private Long target_sum; //목표금액
  private Long cur_sum;
  private Date opendate;
  private Date closingdate;
  private Long admincall;
  private Long success;
  private Long view_count; 
  private Long encore_num;
  private Long encore;
  private Long encore_time;
  private String email;
  private String cat_name;
}