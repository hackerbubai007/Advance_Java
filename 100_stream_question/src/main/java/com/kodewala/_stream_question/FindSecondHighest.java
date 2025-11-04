package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class FindSecondHighest {

	public static void main(String[] args) {

		List<Integer> nums = Arrays.asList(12, 44, 33, 55, 66, 77, 88);

		Integer findSecondHighest = nums.stream().sorted(Comparator.reverseOrder()).skip(1).findFirst().get();

		System.out.println(findSecondHighest);

	}

}
