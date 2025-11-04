package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class SeparatedByCommaInto_A_List {

	public static void main(String[] args) {
		
		
		List<String> names=Arrays.asList("Aswini","Dipankar Nikhil","Ajj chicken banayenge");
		
		
		List<String> separatedByCommaInto_A_List = names.stream().flatMap(n->Arrays.stream(n.split(" "))).collect(Collectors.toList());
		
		System.out.println(separatedByCommaInto_A_List);

	}

}
