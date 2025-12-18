package com.kodewala.order.service;

import org.springframework.stereotype.Service;

import com.kodewala.order.request.OrderRequest;

@Service
public interface IOrderService {
	
	
	public String placeOrder(OrderRequest orderRequest);
	
	
	public String orderPaymentStatus(int orderId);
}
