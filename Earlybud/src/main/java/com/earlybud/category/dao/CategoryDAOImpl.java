package com.earlybud.category.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.earlybud.vo.CategoryVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.vo.CategoryVO";	//namespace로 xml을 찾아간다..
	
	@Override
	public List<CategoryVO> getList(){
		log.info("CategoryDAO");
		System.out.println("Categorydao");
		List<CategoryVO> listI = sqlSession.selectList(ns+".getList");
		System.out.println("Item list size: "+listI.size());
		return listI;
	}
}
