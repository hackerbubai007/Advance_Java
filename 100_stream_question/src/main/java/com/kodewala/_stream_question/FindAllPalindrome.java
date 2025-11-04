package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;

public class FindAllPalindrome {

	public static void main(String[] args) {
		List<List<String>> names=Arrays.asList(Arrays.asList("oppo","Aswini","ele"),
				Arrays.asList("did","hjsx"),
				Arrays.asList("mom","Dipankar"));
		names.stream().flatMap(n->n.stream()).filter(a->isPalindrome(a)).forEach(System.out::println);
		
		

	}
	

	private static boolean isPalindrome(String s) {
	    String lower = s.toLowerCase();            // convert to lowercase
	    StringBuilder sb = new StringBuilder(lower); // create StringBuilder
	    String reversed = sb.reverse().toString();   // reverse the string
	    return lower.equals(reversed);               // compare original and reversed
	}


}
