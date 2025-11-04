package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

public class FindMaximum {

	public static void main(String[] args) {

		List<Integer> nums = new LinkedList<Integer>(Arrays.asList(12, 34, 67, 99, 78, 67));

		Optional<Integer> maxi = nums.stream().sorted(Comparator.reverseOrder()).findFirst();
		
		System.out.println(maxi);

	}

}
