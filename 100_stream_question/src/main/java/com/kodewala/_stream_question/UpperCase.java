package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class UpperCase {

	public static void main(String[] args) {
		
		List<String> names= Arrays.asList("kjdnkd","kjdkjd","jbsbd" );
		
	                    List<String>   newNames=	names.stream()
	                    		                .map(n->n.toUpperCase())
	                    		                .collect(Collectors.toList());
	                    System.out.println(newNames);

	}

}
