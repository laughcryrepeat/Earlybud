package com.earlybud.category.service;

import java.util.List;
import com.earlybud.model.Item;
import com.earlybud.vo.CategoryVO;
import com.earlybud.vo.Criteria;
import com.earlybud.vo.RewardVO;

public interface CategoryService {

	//public void register(Item item);

	public RewardVO get(Long item_code);

	//public boolean modify(Item item);

	//public boolean remove(Long bno);

	public List<CategoryVO> getList();

	//public List<Item> getList(Criteria cri);

	//추가
	//public int getTotal(Criteria cri); //굳이 cri를 파라미터로 받을필요는 없긴 한데, 목록과 전체데이터갯수는 항상 같이 동작하는 경우가 많아서 파라미터로 지정한다. 

}
