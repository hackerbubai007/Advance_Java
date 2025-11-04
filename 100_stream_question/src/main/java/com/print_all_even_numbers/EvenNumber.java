package com.print_all_even_numbers;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;

class FindEvenNumber {
	List<Integer> nums;

	public FindEvenNumber(List<Integer> _nums) {
		// super();
		this.nums = _nums;
	}

	public List<Integer> findEven() {

		List<Integer> evenNumber = nums.stream().filter(n -> n % 2 == 0).collect(Collectors.toList());
		System.out.println(evenNumber);
		return evenNumber;

	}

}

class EvenThread implements Runnable {

	FindEvenNumber findEvenNumber;

	public EvenThread(FindEvenNumber findEvenNumber) {

		this.findEvenNumber = findEvenNumber;
	}

	public void run() {

		findEvenNumber.findEven();

	}
}

public class EvenNumber {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		List<Integer> numbers = new ArrayList<Integer>();

		System.out.println("How many numbers you want to add ? ");

		int size = sc.nextInt();

		for (int i = 0; i < size; i++) {
			System.out.println("Enter " + (i + 1) + " Number");
			numbers.add(sc.nextInt());
		}

		FindEvenNumber findEvenNumber = new FindEvenNumber(numbers);
		EvenThread evenThread= new EvenThread(findEvenNumber);
		Thread t1= new Thread(evenThread);
		t1.start();
		

	}

}
