package com.earlybud.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.earlybud.model.Item;
import com.earlybud.model.Seller;
import com.earlybud.project.dao.NewProjectDao;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class NewProjectServiceImpl implements NewProjectService {
	
	@Setter(onMethod_ = { @Autowired })
	private NewProjectDao dao;
	
	public int save(Item item) {
		System.out.println("서비스 들어왔어용");
		return dao.save(item);
	}
	public int update(Item item) {
		return dao.update(item);
	}
	public int update2(Seller seller) {
		return dao.update2(seller);
	}
}
