package com.kodewala.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kodewala.order.request.OrderRequest;
import com.kodewala.order.service.IOrderService;

@RestController
public class OrderController {

	@Autowired
	IOrderService iOrderService;

	@PostMapping("/placeOrder")
	public String placeOrder(@RequestBody OrderRequest orderRequest) {

		iOrderService.placeOrder(orderRequest);

		return "Order placed successfully.";
	}

	@GetMapping("/orderStatus")
	public String getOrderStatus(@RequestParam int orderId) {

		return iOrderService.orderPaymentStatus(orderId);

	}
}
