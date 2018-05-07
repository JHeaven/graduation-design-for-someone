package com.heaven.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.heaven.vo.Chart;

public class ChartDao extends BaseDao {

	public int add(Chart chart) {
		String sql = "insert into chart (from_id,content,out_time,isdelete,to_id) values (?,?,?,?,?)";
		Object[] params = { chart.getForm_id(), chart.getContent(), chart.getOut_time(), 0, 0 };
		return excuteUpdate(sql, params);
	}

	public List<Chart> getFirstSite() {
		List<Chart> firstChart = new ArrayList<Chart>();
		Chart chart = null;
		String sql = "SELECT chart.id, student.name, student.sex, chart.from_id, chart.content, chart.out_time FROM chart,student where student.id = chart.from_id limit 30";
		Object[] params = {};
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				chart = new Chart();
				chart.setId(rs.getInt("id"));
				chart.setName(rs.getString("name"));
				chart.setSex(rs.getString("sex"));
				chart.setForm_id(rs.getString("from_id"));
				chart.setContent(rs.getString("content"));
				chart.setOut_time(rs.getString("out_time"));
				firstChart.add(chart);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return firstChart;
	}
	
	public List<Chart> getNextSite(int id){
		List<Chart> firstChart = new ArrayList<Chart>();
		Chart chart = null;
		String sql = "SELECT chart.id, student.name, student.sex, chart.from_id, chart.content, chart.out_time FROM chart,student where student.id = chart.from_id AND chart.id > ?";
		Object[] params = {id};
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				chart = new Chart();
				chart.setId(rs.getInt("id"));
				chart.setName(rs.getString("name"));
				chart.setSex(rs.getString("sex"));
				chart.setForm_id(rs.getString("from_id"));
				chart.setContent(rs.getString("content"));
				chart.setOut_time(rs.getString("out_time"));
				firstChart.add(chart);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return firstChart;
	}
}
