package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;

public class FindSecondLowest {

	public static void main(String[] args) {

		List<Integer> nums = Arrays.asList(33, 44, 22, 55, 77, 66, 99, 88);

		Integer secondLowest = nums.stream().sorted().skip(1).findFirst().get();
		System.out.println(secondLowest);

	}

}
