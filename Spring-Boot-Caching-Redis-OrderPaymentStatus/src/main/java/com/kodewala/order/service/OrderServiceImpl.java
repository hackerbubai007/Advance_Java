package com.kodewala.order.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.kodewala.order.entity.OrderEntity;
import com.kodewala.order.repositories.IorderRepo;
import com.kodewala.order.request.OrderRequest;

@Service
public class OrderServiceImpl implements IOrderService {

	@Autowired
	IorderRepo iorderRepo;

	@Override
	public String placeOrder(OrderRequest orderRequest) {

		OrderEntity entity = new OrderEntity();
		entity.setItemName(orderRequest.getItemName());
		entity.setItemDesc(orderRequest.getItemDesc());
		entity.setItemPrice(orderRequest.getItemPrice());
		entity.setPaymentStatus(orderRequest.getPaymentStatus());

		iorderRepo.save(entity);

		return "Order placed successfully....";
	}

	@Cacheable(value = "orderId", key = "#orderId", unless = "#result==null")
	@Override
	public String orderPaymentStatus(int orderId) {

		OrderEntity result = iorderRepo.findById(orderId).get();

		String status = result.getPaymentStatus();

		return "Order placed successfully for " + result.getItemName() + " and payment is: " + status;
	}

}
