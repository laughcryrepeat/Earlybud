package com.earlybud.project.dao;

import com.earlybud.model.Item;
import com.earlybud.model.Seller;

public interface NewProjectDao {
	public int save(Item item);
	public int update(Item item);
	public int update2(Seller seller);
}
