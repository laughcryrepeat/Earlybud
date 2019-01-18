package com.earlybud.model;

import java.sql.Date;

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
}
