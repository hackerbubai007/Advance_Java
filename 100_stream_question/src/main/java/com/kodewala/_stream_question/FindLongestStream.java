package com.kodewala._stream_question;

import java.util.Arrays;

import java.util.List;

public class FindLongestStream {

	public static void main(String[] args) {
		
		List<String> names= Arrays.asList("Dipankar","Nikhil","Aswini","Aouma");
		
String xyx=	names.stream().max((a,b)->a.length()-b.length()).get();
		
		
	
	System.out.println(xyx);
		

	}

}
