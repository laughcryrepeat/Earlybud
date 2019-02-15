package com.earlybud.payment.service;

import com.earlybud.model.Payment_Info;
import com.earlybud.model.Purchase_Item;

public interface PaymentService {
	String pwdCheckService(String nickname);
	void insertPurchaseItem(Purchase_Item purItem);
	void insertPaymentInfo(Payment_Info payInfo);
}
