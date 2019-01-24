package com.earlybud.model;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private String email;
	private String pwd;
	private String nickname;
	private String phone;
	private String addr;
	private String detail_addr;
	private Date joindate;
	private Date dropdate;
	private String item_liked;
	private List<Auth> authList;
}
