package com.earlybud.category.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.earlybud.category.dao.CategoryDAO;
import com.earlybud.vo.CategoryVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

	private CategoryDAO dao;

	 @Override
	 public List<CategoryVO> getList() {
		 log.info("getList..........");	
		 return dao.getList();	 
	}	 
	 
}
