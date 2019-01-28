package com.earlybud.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Message {
	private long message_code;
	private long item_code;
	private String receiver;
	private String sender;
	private String content;
	private Date send_date;
	private int read_check;
}
