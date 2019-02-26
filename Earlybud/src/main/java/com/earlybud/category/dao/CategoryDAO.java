package com.earlybud.category.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.earlybud.vo.MainVO;
import com.earlybud.model.Category;
import com.earlybud.vo.CategoryVO;
import com.earlybud.vo.PageVO;


public interface CategoryDAO {
	
	public List<Category> getList();
	public List<MainVO> getMainList(HashMap map);
	int countItem(HashMap map);
	List<CategoryVO> itemList(PageVO vo);
	public List<CategoryVO> selectCategory(HashMap map);
}
