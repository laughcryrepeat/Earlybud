package com.earlybud.model;

import java.sql.Date;
<<<<<<< HEAD
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private String userid;
	private String userpw;
	private String userName;

	private Date regDate;
	private Date updateDate;
	private boolean enabled;
	private List<Auth> authList;
=======

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private int no;
	private String name;
	private String id;
	private String pwd;
	private String email;
	private String phone;
	private Date joindate;
>>>>>>> branch 'master' of https://github.com/laughcryrepeat/Earlybud.git
}
