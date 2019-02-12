package com.earlybud.item.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.earlybud.item.dao.ItemDAO;
import com.earlybud.vo.RewardVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ItemServiceImpl implements ItemService {

	private ItemDAO dao;

	@Override
	public RewardVO get(Long item_code) {
		log.info("get......" + item_code);
		return dao.read(item_code);
	}
 
	@Override
	public List<Map<String, Object>> midnightService(){
		return dao.midnightPlan();
	}
	@Override
	public void updateSuccessNService() {
		dao.updateSuccessN();
	}
	@Override
	public void updateSuccessYService(long item_code) {
		dao.updateSuccessY(item_code);		
	}
 
}