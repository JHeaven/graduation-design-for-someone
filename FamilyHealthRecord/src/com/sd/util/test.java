package com.sd.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class test {

	public static void main(String[] args) {
		int arr[] = { 1, 2, 3, 4, 4, 4, 4 };
		List<Integer> temp = new ArrayList<Integer>();
		for (int i = 0; i < arr.length; i++) {
			if (temp.contains(arr[i])) {
				System.out.println("ÓÐÖØ¸´");
				System.exit(0);
			}else{
				temp.add(arr[i]);
			}
		}
		

	}

}
