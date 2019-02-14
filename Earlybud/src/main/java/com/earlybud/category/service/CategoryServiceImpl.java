package com.earlybud.category.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.earlybud.category.dao.CategoryDAO;
import com.earlybud.model.Category;
import com.earlybud.vo.CategoryVO;
import com.earlybud.vo.PageVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

	private CategoryDAO dao;

	
	 @Override
	 public List<Category> cateListService() {
		 log.info("getList..........");	
		 return dao.getList();	 
	}	
	 /*
	 @Override
	 public List<CategoryVO> cateListService() {
		 log.info("getList..........");	
		 return dao.getList();	 
	}	 */
	 @Override
	public int countService() {
		return dao.count();
	}
	 @Override
	public List<CategoryVO> itemListService(PageVO vo) {
		return dao.itemList(vo);
	}
	 
	 @Override
	public List<CategoryVO> selectCategoryService(HashMap map) {
		return dao.selectCategory(map);
	}
}
