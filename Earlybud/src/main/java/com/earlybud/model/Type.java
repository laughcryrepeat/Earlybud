package com.earlybud.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Type {
	private Long type_code;
	private Long item_code;
	private String name;
	private String info;
	private Long price;
	private Long purnum;
}
