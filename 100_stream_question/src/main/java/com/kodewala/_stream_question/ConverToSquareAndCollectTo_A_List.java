package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;

public class ConverToSquareAndCollectTo_A_List {

	public static void main(String[] args) {
		
		
		List<Integer> nums=Arrays.asList(12,33,55,44,33);
		
	List<Integer> squere =	nums.stream().map(n->n*n).toList();
	
	System.out.println(squere);

	}

}
