package com.zys.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * @function:��list�������ȡ���ɲ��ظ�Ԫ��
 *
 * @param paramList:����ȡlist
 * @param count:��ȡԪ�صĸ���
 * @return:�ɳ�ȡԪ����ɵ���list
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
			temp = random.nextInt(paramList.size());// ���������������Ϊ����list������
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
