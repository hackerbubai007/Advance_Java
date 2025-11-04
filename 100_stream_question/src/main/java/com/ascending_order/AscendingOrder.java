package com.ascending_order;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class AscendingOrder {

	public static void main(String[] args) {

		List<Integer> nums = Arrays.asList(12, 32, 15, 76, 45, 34, 90);

		List<Integer> ascendingOrder = nums.stream().sorted(Comparator.naturalOrder())
				.collect(Collectors.toList());
		
		System.out.println(ascendingOrder);

	}

}
