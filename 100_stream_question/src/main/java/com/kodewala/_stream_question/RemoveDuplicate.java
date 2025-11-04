package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class RemoveDuplicate {

	public static void main(String[] args) {

		List<String> names = new LinkedList<String>(Arrays.asList("Dipankar", "Aswini", "Nikhil", "Dipankar"));

		List<String> pureList = names.stream().distinct().collect(Collectors.toList());
		
		System.out.println(pureList);

	}

}
