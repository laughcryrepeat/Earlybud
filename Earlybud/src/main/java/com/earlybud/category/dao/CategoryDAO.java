package com.earlybud.category.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import com.earlybud.vo.CategoryVO;

public interface CategoryDAO {
	
	public List<CategoryVO> getList();
}
