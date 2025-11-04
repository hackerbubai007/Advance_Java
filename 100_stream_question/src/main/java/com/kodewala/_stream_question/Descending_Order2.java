package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class Descending_Order2 {

	public static void main(String[] args) {
		List<Integer> nums= Arrays.asList(12,34,43,23,33);
		
	List<Integer> descendingOrder= 	nums.stream().sorted(Comparator.reverseOrder()).collect(Collectors.toList());
	System.out.println(descendingOrder);

	}

}
