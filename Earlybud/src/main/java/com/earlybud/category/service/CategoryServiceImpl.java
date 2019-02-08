package com.earlybud.category.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.earlybud.category.dao.CategoryDAO;
import com.earlybud.model.Item;
import com.earlybud.vo.CategoryVO;
import com.earlybud.vo.Criteria;
import com.earlybud.vo.RewardVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

	//@Setter(onMethod_ = @Autowired)
	private CategoryDAO dao;
/*
	@Override
	public void register(Item item) {

		log.info("register......" + item);

		dao.insertSelectKey(item);
	}
*/
	@Override
	public RewardVO get(Long item_code) {

		log.info("get......" + item_code);

		return dao.read(item_code);

	}
/*
	@Override
	public boolean modify(Item item) {

		log.info("modify......" + item);

		return dao.update(item) == 1;	//정상 처리시 1값 반환하는것. 그럼 ==연산자로 true/false반환하는 방식.
	}

	@Override
	public boolean remove(Long bno) {

		log.info("remove...." + bno);

		return dao.delete(bno) == 1;
	}
*/
	 @Override
	 public List<CategoryVO> getList() {

	 log.info("getList..........");
	
	 return dao.getList();
	 }
/*
	@Override
	public List<Item> getList(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return dao.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {	
		log.info("get total count");
		return dao.getTotalCount(cri);
	}
*/
}
