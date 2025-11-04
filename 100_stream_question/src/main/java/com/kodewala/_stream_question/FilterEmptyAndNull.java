package com.kodewala._stream_question;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;


class HashCode{
	
	String name;
	
	
	
	public HashCode(String name) {
		//super();
		this.name = name;
	}

	public boolean equals(Object obj) {
		
		HashCode hc= (HashCode) obj;
		
		
		return this.name.equals(hc.name);
		
	}
	
	public int hashCode() {
		
		
		return this.name.hashCode();
		
	}
	
}

public class FilterEmptyAndNull {

	public static void main(String[] args) {
		
		
		List<String> names= Arrays.asList(" ",null,"jkeknd"," ","jhskhqd",null );
		
	 List<String> filteredName=	names.stream()
			 .filter(n-> n!=null && !n.equals(" "))
			 .collect(Collectors.toList());
	 System.out.println(filteredName);

	}

}
