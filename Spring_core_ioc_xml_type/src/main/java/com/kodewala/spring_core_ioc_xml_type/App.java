package com.kodewala.spring_core_ioc_xml_type;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
	public static void main(String[] args) {

		String config = "resources\\accountContext.xml";

		ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext(config);

		Account account = (Account) applicationContext.getBean("acc");
		
		System.out.println(account.getAccountNumber()+" "+account.getHolderName()+" "+account.getAccountType());

	}
}
