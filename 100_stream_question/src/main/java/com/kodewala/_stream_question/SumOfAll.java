package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;

public class SumOfAll {

	public static void main(String[] args) {

		List<Integer> nums = Arrays.asList(22, 33, 55, 66, 77, 88);
//approach 1
		int sum = nums.stream().mapToInt(Integer::intValue).sum();
		System.out.println(sum);

//approach 2
		int sum1 = nums.stream().reduce(0, (a, b) -> a + b);
		System.out.println(sum1);

// Approach with string using reduce()

		List<String> names = Arrays.asList("asdjd", "shgjhd", "hgdwud");

		String concat = names.stream().reduce("", (a, b) -> a + b);

		System.out.println(concat);

	}

}
