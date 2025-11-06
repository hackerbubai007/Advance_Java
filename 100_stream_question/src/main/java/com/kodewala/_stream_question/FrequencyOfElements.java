package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class FrequencyOfElements {

	public static void main(String[] args) {
		List<String> names = Arrays.asList("Dipankar", "Aswini", "Nikhil", "Dipankar", "Aswini", "Nikhil", "Dipankar");

		Map<Object, Long> xyz = names.stream().collect(Collectors.groupingBy(name -> name, Collectors.counting()));

		System.out.println(xyz);
	}

}
