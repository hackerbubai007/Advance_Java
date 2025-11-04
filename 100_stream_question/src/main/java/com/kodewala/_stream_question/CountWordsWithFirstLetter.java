package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;

public class CountWordsWithFirstLetter {

	public static void main(String[] args) {
		
		List<String> names= Arrays.asList("Dipankar", "Dipankar1","Aswini","Aswini1");
		
	long count=	names.stream().filter(n->n.startsWith("D")).count();
	
	System.out.println(count);
		

	}

}
