package com.earlybud.project.service;

import com.earlybud.model.Item;
import com.earlybud.model.Seller;
import com.earlybud.model.Type;

public interface NewProjectService {
	public String select(String email);
	public int save(Item item);
	public int save2(Type type);
	public int update(Item item);
	public int update2(Seller seller);
}
