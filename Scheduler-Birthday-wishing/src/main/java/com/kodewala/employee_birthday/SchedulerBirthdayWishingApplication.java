package com.kodewala.employee_birthday;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class SchedulerBirthdayWishingApplication {

	public static void main(String[] args) {
		SpringApplication.run(SchedulerBirthdayWishingApplication.class, args);
	}

}
