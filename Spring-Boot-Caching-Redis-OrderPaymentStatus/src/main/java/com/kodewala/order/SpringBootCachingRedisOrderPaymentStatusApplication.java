package com.kodewala.order;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class SpringBootCachingRedisOrderPaymentStatusApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootCachingRedisOrderPaymentStatusApplication.class, args);
	}

}
