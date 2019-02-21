package com.earlybud.category.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.earlybud.model.Category;
import com.earlybud.vo.CategoryVO;
import com.earlybud.vo.PageVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.vo.CategoryVO";	//namespace로 xml을 찾아간다..
	private String ns2 = "com.earlybud.model.Category";	//카테고리 코드+이름만 담긴 오델
	
	@Override
	public List<Category> getList(){
		List<Category> listI = sqlSession.selectList(ns2+".getCateList");
		System.out.println("Item list size: "+listI.size());
		return listI;
	}
	
	
	@Override
	public List<CategoryVO> getMainList(){
		log.info("CategoryDAO");
		System.out.println("Categorydao");
		List<CategoryVO> listI = sqlSession.selectList(ns+".getList");
		System.out.println("Item list size: "+listI.size());
		return listI;
	}
	@Override
	public int countItem(HashMap map) {
		return sqlSession.selectOne(ns+".countItem", map);
	}
	@Override
	public List<CategoryVO> itemList(PageVO vo){
		return sqlSession.selectList(ns+".selectAll", vo);
	}
	@Override
	public List<CategoryVO> selectCategory(HashMap map){
		List<CategoryVO> list = sqlSession.selectList(ns+".SelectCategory", map);
		return list;
	}
	
}
