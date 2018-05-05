package com.gyq.utils;

import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Random;

import com.gyq.model.CourseList;
import com.gyq.model.Section;

/**
 * greedy
 * 
 * @author Jiang
 *
 */
public class Greedy {

	public static List<Section> doGreedy(List<Section> allSec, List<CourseList> allList) {
		// sort
		Collections.sort(allList);
		int flag = 0;
		for (CourseList cou : allList) {
			for (int i = 1; i < cou.getKeshi()+1; i++) {
				cou.setPs("");
				flag = 0;
				
				//===================================START==========================================================
				// 1
				for (Section sec : allSec) {

					if (cou.getBestSite().equals("上午第一节")) {
						if (sec.getLe1Id() == null) {
							if (check(cou, allSec, sec, 1)) {
								
								//------------------
								//------------------
								
								sec.setLe1Id(cou.getcId());
								sec.setLe1Name(cou.getcName() + cou.getPs());
								sec.setLe1Class(cou.getClassName());
								sec.setLe1Tea(cou.gettName());
								flag = 1;
								break;
							}

						}
					} else if (cou.getBestSite().equals("上午第二节")) {
						if (sec.getLe2Id() == null) {
							if (check(cou, allSec, sec, 2)) {
								sec.setLe2Id(cou.getcId());
								sec.setLe2Name(cou.getcName() + cou.getPs());
								sec.setLe2Class(cou.getClassName());
								sec.setLe2Tea(cou.gettName());
								flag = 1;
								break;
							}
						}
					} else if (cou.getBestSite().equals("下午第一节")) {
						if (sec.getLe3Id() == null) {
							if (check(cou, allSec, sec, 3)) {
								sec.setLe3Id(cou.getcId());
								sec.setLe3Name(cou.getcName() + cou.getPs());
								sec.setLe3Class(cou.getClassName());
								sec.setLe3Tea(cou.gettName());
								flag = 1;
								break;
							}
						}
					} else if (cou.getBestSite().equals("下午第二节")) {
						if (sec.getLe4Id() == null) {
							if (check(cou, allSec, sec, 4)) {
								sec.setLe4Id(cou.getcId());
								sec.setLe4Name(cou.getcName() + cou.getPs());
								sec.setLe4Class(cou.getClassName());
								sec.setLe4Tea(cou.gettName());
								flag = 1;
								break;
							}
						}
					} else if (cou.getBestSite().equals("晚上")) {
						if (sec.getLe5Id() == null) {
							if (check(cou, allSec, sec, 5)) {
								sec.setLe5Id(cou.getcId());
								sec.setLe5Name(cou.getcName() + cou.getPs());
								sec.setLe5Class(cou.getClassName());
								sec.setLe5Tea(cou.gettName());
								flag = 1;
								break;
							}
						}
					}

				}

				// 2，p-ok-s2
				if (flag == 0) {
					for (Section sec : allSec) {
						if (cou.getNum() <= sec.getMaxNum()) {
							if (sec.getLe2Id() == null) {
								if (check(cou, allSec, sec, 2)) {
									sec.setLe2Id(cou.getcId());
									sec.setLe2Name(cou.getcName() + cou.getPs());
									sec.setLe2Class(cou.getClassName());
									sec.setLe2Tea(cou.gettName());
									flag = 1;
									break;
								}
							}
						}
					}
				}

				// 3p-ok-x1
				if (flag == 0) {
					for (Section sec : allSec) {
						if (cou.getNum() <= sec.getMaxNum()) {
							if (sec.getLe3Id() == null) {
								if (check(cou, allSec, sec, 3)) {
									sec.setLe3Id(cou.getcId());
									sec.setLe3Name(cou.getcName() + cou.getPs());
									sec.setLe3Class(cou.getClassName());
									sec.setLe3Tea(cou.gettName());
									flag = 1;
									break;
								}
							}
						}
					}
				}

				// 4p-ok-x2
				if (flag == 0) {
					for (Section sec : allSec) {
						if (cou.getNum() <= sec.getMaxNum()) {
							if (sec.getLe4Id() == null) {
								if (check(cou, allSec, sec, 4)) {
									sec.setLe4Id(cou.getcId());
									sec.setLe4Name(cou.getcName() + cou.getPs());
									sec.setLe4Class(cou.getClassName());
									sec.setLe4Tea(cou.gettName());
									flag = 1;
									break;
								}
							}
						}
					}
				}
				// 5p-ok-w
				if (flag == 0) {
					for (Section sec : allSec) {
						if (cou.getNum() <= sec.getMaxNum()) {
							if (sec.getLe5Id() == null) {
								if (check(cou, allSec, sec, 5)) {
									//------------------
									//------------------
									sec.setLe5Id(cou.getcId());
									sec.setLe5Name(cou.getcName() + cou.getPs());
									sec.setLe5Class(cou.getClassName());
									sec.setLe5Tea(cou.gettName());
									flag = 1;
									break;
								}
							}
						}
					}
				}

				// 6，p-no-s2
				if (flag == 0) {
					for (Section sec : allSec) {
						if (sec.getLe2Id() == null) {
							if (check(cou, allSec, sec, 2)) {
								//------------------
								//------------------
								sec.setLe2Id(cou.getcId());
								sec.setLe2Name(cou.getcName() + cou.getPs());
								sec.setLe2Class(cou.getClassName());
								sec.setLe2Tea(cou.gettName());
								flag = 1;
								break;
							}
						}
					}
				}

				// 7p-no-x1
				if (flag == 0) {
					for (Section sec : allSec) {
						if (sec.getLe3Id() == null) {
							if (check(cou, allSec, sec, 3)) {
								//------------------
								//------------------
								sec.setLe3Id(cou.getcId());
								sec.setLe3Name(cou.getcName() + cou.getPs());
								sec.setLe3Class(cou.getClassName());
								sec.setLe3Tea(cou.gettName());
								flag = 1;
								break;
							}
						}
					}
				}

				// 8p-no-x2
				if (flag == 0) {
					for (Section sec : allSec) {
						if (sec.getLe4Id() == null) {
							if (check(cou, allSec, sec, 4)) {
								sec.setLe4Id(cou.getcId());
								sec.setLe4Name(cou.getcName() + cou.getPs());
								sec.setLe4Class(cou.getClassName());
								sec.setLe4Tea(cou.gettName());
								flag = 1;
								break;
							}
						}
					}
				}
				// 9p-no-w
				if (flag == 0) {
					for (Section sec : allSec) {
						if (sec.getLe5Id() == null) {
							if (check(cou, allSec, sec, 5)) {
								sec.setLe5Id(cou.getcId());
								sec.setLe5Name(cou.getcName() + cou.getPs());
								sec.setLe5Class(cou.getClassName());
								sec.setLe5Tea(cou.gettName());
								flag = 1;
								break;
							}
						}
					}
				}

				// 10 any
				if (flag == 0) {
					for (Section sec : allSec) {
						if (sec.getLe1Id() == null) {
							if (check(cou, allSec, sec, 1)) {
								sec.setLe1Id(cou.getcId());
								sec.setLe1Name(cou.getcName() + cou.getPs());
								sec.setLe1Class(cou.getClassName());
								sec.setLe1Tea(cou.gettName());
								flag = 1;
								break;
							}
						}
					}
				}
				
				
				//===================================end==========================================================

				

			}
		}

		return allSec;
	}

	public static boolean check(CourseList cou, List<Section> allSec, Section sec, int i) {
		for (Section section : allSec) {
			if (section.getSecDate().compareTo(sec.getSecDate()) == 0) {
				if (i == 1) {
					if (cou.getClassName().equals(section.getLe1Class())) {
						return false;
					}
				} else if (i == 2) {
					if (cou.getClassName().equals(section.getLe2Class())) {
						return false;
					}
				} else if (i == 3) {
					if (cou.getClassName().equals(section.getLe3Class())) {
						return false;
					}
				} else if (i == 4) {
					if (cou.getClassName().equals(section.getLe4Class())) {
						return false;
					}
				} else if (i == 5) {
					if (cou.getClassName().equals(section.getLe5Class())) {
						return false;
					}
				}
			}
		}
		return checkHeli(cou, allSec, sec, i);
	}
	
	
	
	public static int ran(){
		return ( new Random().nextInt(10) + 1);
	}
	
	
	
	public static boolean checkHeli(CourseList cou, List<Section> allSec, Section sec, int i) {
		Calendar tempCal = Calendar.getInstance();  
	    Calendar dateCal = Calendar.getInstance();  
	    Calendar thisCal = Calendar.getInstance();  
	    
	    tempCal.setTime(new Date());  
	    thisCal.setTime(sec.getSecDate());
	    
	    
		int flag = 0;
		for (Section section : allSec) {
			
			
			if (flag >= 2) {
				return false;
			}
			
			
			dateCal.setTime(section.getSecDate());
			
			if (thisCal.get(Calendar.WEEK_OF_YEAR) == dateCal.get(Calendar.WEEK_OF_YEAR)) {


				if(tempCal.get(Calendar.WEEK_OF_YEAR) == dateCal.get(Calendar.WEEK_OF_YEAR)){
					
					if ( cou.getcName().equals(section.getLe1Name()) ||cou.getcName().equals(section.getLe2Name()) ||cou.getcName().equals(section.getLe3Name()) ||cou.getcName().equals(section.getLe4Name()) ||cou.getcName().equals(section.getLe5Name()) ) {
						flag++;
					}
					
				}else{
					tempCal.setTime(section.getSecDate());
					
					flag = 0;
					
					if ( cou.getcName().equals(section.getLe1Name()) ||cou.getcName().equals(section.getLe2Name()) ||cou.getcName().equals(section.getLe3Name()) ||cou.getcName().equals(section.getLe4Name()) ||cou.getcName().equals(section.getLe5Name()) ) {
						flag++;
					}
					
				}
				
			}
			
		}
		return true;
	}

}
