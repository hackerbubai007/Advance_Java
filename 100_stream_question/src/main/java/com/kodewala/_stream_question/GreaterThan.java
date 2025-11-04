package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class GreaterThan {

	public static void main(String[] args) {
		
		LinkedList<Integer> nums= new LinkedList<Integer>(Arrays.asList(12,56,78,90,34,45,41));
		
		List<Integer> finalList=nums.stream().filter(n->n>50)
				.collect(Collectors.toList());
		System.out.println(finalList);
		

	}

}
