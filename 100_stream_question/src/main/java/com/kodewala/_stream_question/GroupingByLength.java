package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class GroupingByLength {

	public static void main(String[] args) {

		List<String> names = Arrays.asList("Dipankar", "Aswini", "Nikhil");

		Map<Object, List<String>> group = names.stream().collect(Collectors.groupingBy(n -> n.length()));

		System.out.println(group);
	}

}
