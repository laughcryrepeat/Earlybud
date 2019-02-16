package com.earlybud.payment.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.earlybud.model.Item;
import com.earlybud.model.Payment_Info;
import com.earlybud.model.Purchase_Item;
import com.earlybud.model.Type;

import lombok.extern.log4j.Log4j;

@Log4j
@Repository
public class PaymentDaoImpl implements PaymentDao {

	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.model.Member";
	private String ns1 = "com.earlybud.model.Purchase_Item";
	private String ns2 = "com.earlybud.model.Payment_Info";
	private String ns3 = "com.earlybud.model.Type";
	private String ns4 = "com.earlybud.model.Item";
	
	@Override
	public HashMap<String, Object> selectTypeInfo(Long type_code) {
		HashMap<String,Object> itemMap = sqlSession.selectOne(ns4+".selectTypeInfo", type_code);
		System.out.println("selectTypeInfo after sql");
		System.out.println("itemMap: "+itemMap);
		System.out.println("itemMap.get('TITLE'):"+itemMap.get("TITLE"));
		return itemMap;
	}
	
	@Override
	public Type selectType(Long type_code) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns3+".selectType", type_code);
	}
	
	@Override
	public Item selectItem(Long item_code) {
		return sqlSession.selectOne(ns4+".selectItem", item_code);
	}
	
	@Override
	public String pwdCheck(String nickname) {
		log.info("pwd check DAO");
		return sqlSession.selectOne(ns+".pwdCheck", nickname);
	}


	@Override
	public void insertPurchaseItem(Purchase_Item purItem) {
		log.info("insertPurchaseItem DAO");
		int i =sqlSession.insert(ns1+".insertPurItem", purItem);
		System.out.println("insertPurchaseItem: "+i);
	}


	@Override
	public void insertPaymentInfo(Payment_Info payInfo) {
		log.info("insertPaymentInfo DAO");
		int i = sqlSession.insert(ns2+".insertPayInfo", payInfo);
		System.out.println("insertPaymentInfo :"+i);
	}


	@Override
	public void updateType(Long type_code) {
		System.out.println("type update dao");
		int i=sqlSession.update(ns3+".updatePurnum", type_code);
		System.out.println("type update: "+i);
	}

}
