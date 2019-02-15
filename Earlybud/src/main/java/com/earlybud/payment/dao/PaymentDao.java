package com.earlybud.payment.dao;

import com.earlybud.model.Payment_Info;
import com.earlybud.model.Purchase_Item;

public interface PaymentDao {
	String pwdCheck(String nickname);
	void insertPurchaseItem(Purchase_Item purItem);
	void insertPaymentInfo(Payment_Info payInfo);
}
