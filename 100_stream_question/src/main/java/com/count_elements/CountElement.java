package com.count_elements;

import java.util.Arrays;
import java.util.List;

public class CountElement {

	public static void main(String[] args) {
		
		
		List<Integer> nums= Arrays.asList(12,22,33,43,12,23,21,31,24,43);
		
		 long total =  nums.stream().count();
		 
		 System.out.println(total);
		
		
		

	}

}
