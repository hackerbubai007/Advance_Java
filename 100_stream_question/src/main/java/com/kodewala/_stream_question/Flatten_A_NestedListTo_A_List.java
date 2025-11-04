package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Flatten_A_NestedListTo_A_List {

	public static void main(String[] args) {
		
		List<List<String>> names=Arrays.asList(Arrays.asList("jsndjh","shjgdhj","kjhsdh"),
				Arrays.asList("hjbjd","fefi"),
				Arrays.asList("kjhdhkd","jhsdjd"));
		
		
	List<Object> name=	names.stream().flatMap(n->n.stream()).collect(Collectors.toList());
		
	System.out.println(name);
		

	}

}
