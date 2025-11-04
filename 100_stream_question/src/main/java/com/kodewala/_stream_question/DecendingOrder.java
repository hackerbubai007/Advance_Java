package com.kodewala._stream_question;

import java.net.Socket;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class DecendingOrder {

	public static void main(String[] args) {
		List<Integer> nums= Arrays.asList(12,32,23,45,67,80,98,76,31);
		
	List<Integer> sorted=	nums.stream().sorted().collect(Collectors.toList());
	System.out.println(sorted);
		
		
		

	}

}
