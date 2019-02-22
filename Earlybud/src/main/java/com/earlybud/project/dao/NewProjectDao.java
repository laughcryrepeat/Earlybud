package com.earlybud.project.dao;

import com.earlybud.model.Item;
import com.earlybud.model.Seller;
import com.earlybud.model.Type;

public interface NewProjectDao {
	public Seller seller_select(String email);
	public Item item_select(long item_code);
	public int save(Item item);
	public int save2(Type type);
	public int update(Item item);
	public int update2(Seller seller);
}
