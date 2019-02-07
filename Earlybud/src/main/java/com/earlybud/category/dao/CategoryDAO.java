package com.earlybud.category.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import com.earlybud.model.Item;
import com.earlybud.vo.CategoryVO;
import com.earlybud.vo.Criteria;
import com.earlybud.vo.RewardVO;

public interface CategoryDAO {
	//@Select("select * from tbl_board where bno > 0")
	public List<CategoryVO> getList();	

	//public List<Item> getListWithPaging(Criteria cri);

	//public void insert(Item board);

	//public Integer insertSelectKey(Item board);

	public RewardVO read(Long item_code);

	//public int delete(Long bno);

	//public int update(Item board);

	//public int getTotalCount(Criteria cri);	//총 게시글 수 뽑아내기

}
