package com.earlybud.category.service;

import java.util.HashMap;
import java.util.List;

import com.earlybud.model.Category;
import com.earlybud.vo.CategoryVO;
import com.earlybud.vo.PageVO;


public interface CategoryService {
	
	//public List<CategoryVO> cateListService();
	public List<Category> cateListService();
	int countService();
	List<CategoryVO> itemListService(PageVO vo);
	public List<CategoryVO> selectCategoryService(HashMap map);
}
