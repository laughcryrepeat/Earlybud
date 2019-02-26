package com.earlybud.project.service;

import java.util.List;

import com.earlybud.model.Item;
import com.earlybud.model.Seller;
import com.earlybud.model.Type;

public interface NewProjectService {
	public List<Item> sellerItem(String email);
	public Seller seller_select(String email);
	public Item item_select(long item_code);
	public int save(Item item);
	public int save2(Type type);
	public int update(Item item);
	public int update2(Seller seller);
	public List<Item> sellerEndItem(String email);
	public List<Item> sellerEncoreItem(String email);
}
