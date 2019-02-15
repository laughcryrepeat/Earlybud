package com.earlybud.payment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.earlybud.model.Payment_Info;
import com.earlybud.model.Purchase_Item;
import com.earlybud.payment.dao.PaymentDao;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class PaymentServiceImpl implements PaymentService {

	@Setter(onMethod_ = { @Autowired })
	private PaymentDao dao;
	
	@Override
	public String pwdCheckService(String nickname) {
		return dao.pwdCheck(nickname);
	}

	@Override
	public void insertPurchaseItem(Purchase_Item purItem) {
		dao.insertPurchaseItem(purItem);
	}

	@Override
	public void insertPaymentInfo(Payment_Info payInfo) {
		dao.insertPaymentInfo(payInfo);
	}

}
