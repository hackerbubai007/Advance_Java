package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class FindMinimum {

	public static void main(String[] args) {

		List<Integer> nums = new LinkedList<Integer>(Arrays.asList(98, 56, 77, 89, 45, 33));

		Integer mini = nums.stream().sorted(Comparator.naturalOrder()).findFirst().get();
		
		System.out.println(mini);

	}

}
