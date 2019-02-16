package com.earlybud.payment.dao;

import java.util.HashMap;

import com.earlybud.model.Item;
import com.earlybud.model.Payment_Info;
import com.earlybud.model.Purchase_Item;
import com.earlybud.model.Type;

public interface PaymentDao {
	Item selectItem(Long item_code);
	Type selectType(Long type_code);
	HashMap<String,Object> selectTypeInfo(Long type_code);
	String pwdCheck(String nickname);
	void insertPurchaseItem(Purchase_Item purItem);
	void insertPaymentInfo(Payment_Info payInfo);
	void updateType(Long type_code);
}
