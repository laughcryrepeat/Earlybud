package com.earlybud.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Seller {
	private String email;
	private String image;
	private String seller_profile;
	private String seller_loc;
	private long seller_account;
}
