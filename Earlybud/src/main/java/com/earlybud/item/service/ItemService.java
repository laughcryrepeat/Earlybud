package com.earlybud.item.service;

import java.util.List;
import java.util.Map;

import com.earlybud.vo.RewardVO;

public interface ItemService {

	public RewardVO get(Long item_code);
	public List<Map<String, Object>> midnightService();
	void updateSuccessYService(long item_code);
	void updateSuccessNService();
	
}
