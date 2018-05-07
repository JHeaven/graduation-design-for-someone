package com.zys.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * @function:从list中随机抽取若干不重复元素
 *
 * @param paramList:被抽取list
 * @param count:抽取元素的个数
 * @return:由抽取元素组成的新list
 */

public class RandomEx {

	public static List getRandomList(List paramList, int count) {
		if (paramList.size() < count) {
			return paramList;
		}
		Random random = new Random();
		List<Integer> tempList = new ArrayList<Integer>();
		List<Object> newList = new ArrayList<Object>();
		int temp = 0;
		for (int i = 0; i < count; i++) {
			temp = random.nextInt(paramList.size());// 将产生的随机数作为被抽list的索引
			if (!tempList.contains(temp)) {
				tempList.add(temp);
				newList.add(paramList.get(temp));
			} else {
				i--;
			}
		}
		return newList;
	}
}
