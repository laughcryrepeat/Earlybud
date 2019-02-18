package com.earlybud.project.service;

import com.earlybud.model.Item;
import com.earlybud.model.Seller;

public interface NewProjectService {
	public int save(Item item);
	public int update(Item item);
	public int update2(Seller seller);
}
