package com.heaven.dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.heaven.vo.Article;

public class ArticleDao extends BaseDao {
	/**
	 * 
	 * @param lanmuxuanze
	 * @param title
	 * @param author
	 * @param content
	 * @param l
	 * @param count
	 * @param pic
	 * @return
	 */
	public int add(String lanmuxuanze, String title, String author, String content, String l, int count, String pic) {
		String sql = "insert into aiticle (belong,title,author,content,outtime,count,pic) values (?,?,?,?,?,?,?)";
		Object[] params = { lanmuxuanze, title, author, content, l, count, pic };
		return excuteUpdate(sql, params);
	}

	/**
	 * 
	 * @param belong
	 * @return
	 */
	public List<Article> getArticleByBelong(int belong) {
		List<Article> ArticleList = new ArrayList<Article>();
		Article oneArt;
		String sql = "";
		if(belong == 7 || belong ==3 ){
			 sql = "SELECT aiticle.rec_id,aiticle.title,aiticle.author,aiticle.count,aiticle.outtime,left(aiticle.content,300) as content,aiticle.pic FROM aiticle WHERE aiticle.belong=? order by rec_id";
		}else{
			 sql = "SELECT aiticle.rec_id,aiticle.title,aiticle.author,aiticle.count,aiticle.outtime,left(aiticle.content,300) as content,aiticle.pic FROM aiticle WHERE aiticle.belong=? order by rec_id desc";
		}
		
		
		
		Object[] params = { belong };
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				oneArt = new Article();
				oneArt.setId(rs.getInt("rec_id"));
				oneArt.setTitle(rs.getString("title"));
				oneArt.setAuthor(rs.getString("author"));
				oneArt.setCount(rs.getInt("count"));

				String timechuo = rs.getString("outtime");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String sd = sdf.format(new Date(Long.parseLong(String.valueOf(timechuo)))); // 时间戳转换成时间

				oneArt.setOuttime(sd);

				oneArt.setContent(rs.getString("content"));

				oneArt.setPic(rs.getString("pic"));
				ArticleList.add(oneArt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ArticleList;
	}

	/**
	 * 
	 * @param belong
	 * @param page
	 * @return
	 */
	public List<Article> getArticleByBelongLimit(int belong, int page) {
		List<Article> ArticleList = new ArrayList<Article>();
		Article oneArt;
		String sql="";
		if(belong == 9999){
			 sql = "SELECT aiticle.rec_id,aiticle.title,aiticle.author,aiticle.count,aiticle.outtime,aiticle.content,aiticle.pic FROM aiticle WHERE aiticle.belong=? order by rec_id LIMIT ?,3";
		}else{
			 sql = "SELECT aiticle.rec_id,aiticle.title,aiticle.author,aiticle.count,aiticle.outtime,aiticle.content,aiticle.pic FROM aiticle WHERE aiticle.belong=? order by rec_id desc LIMIT ?,3";
		}
		
		Object[] params = { belong, page };
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				oneArt = new Article();
				oneArt.setId(rs.getInt("rec_id"));
				oneArt.setTitle(rs.getString("title"));
				oneArt.setAuthor(rs.getString("author"));
				oneArt.setCount(rs.getInt("count"));

				String timechuo = rs.getString("outtime");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String sd = sdf.format(new Date(Long.parseLong(String.valueOf(timechuo)))); // 时间戳转换成时间

				oneArt.setOuttime(sd);
				
				//部分屏蔽
				/*
				if (belong == 6 || belong == 11 || belong == 4 || belong == 1 || belong == 7) {
					oneArt.setContent("");
				} else {
					String orage = toContent(rs.getString("content"));
					if(orage.length()<100){
						orage = orage.substring(0, orage.length());
					}else{
						orage = orage.substring(0, 100);
					}
					orage = "<span style=\"font-size:15px;\">&nbsp;&nbsp;&nbsp;&nbsp;"+orage+"</span>";
					oneArt.setContent(orage);
				}
				 */
				//全部开启
				String orage = toContent(rs.getString("content"));
				if(orage.length()<100){
					orage = orage.substring(0, orage.length());
				}else{
					orage = orage.substring(0, 100);
				}
				orage = "<span style=\"font-size:15px;\">&nbsp;&nbsp;&nbsp;&nbsp;"+orage+"</span>";
				oneArt.setContent(orage);
				
				
				oneArt.setPic(rs.getString("pic"));
				ArticleList.add(oneArt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ArticleList;
	}

	/**
	 * 
	 * @param id
	 * @return
	 */
	public Article getArticleById(int id) {
		Article oneArt = null;
		String sql = "SELECT aiticle.rec_id,aiticle.title,aiticle.author,aiticle.count,aiticle.outtime,aiticle.content,aiticle.belong FROM aiticle WHERE aiticle.rec_id=?";
		Object[] params = { id };
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				oneArt = new Article();
				oneArt.setId(rs.getInt("rec_id"));
				oneArt.setTitle(rs.getString("title"));
				oneArt.setAuthor(rs.getString("author"));
				oneArt.setCount(rs.getInt("count"));
				oneArt.setBelong(rs.getInt("belong"));

				String timechuo = rs.getString("outtime");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
				String sd = sdf.format(new Date(Long.parseLong(String.valueOf(timechuo)))); // 时间戳转换成时间

				oneArt.setOuttime(sd);
				oneArt.setContent(rs.getString("content"));
				// oneArt.setPic(rs.getString("pic"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return oneArt;

	}

	/**
	 * 
	 * @param lanmuxuanze
	 * @param title
	 * @param author
	 * @param editor
	 * @param outtime1
	 * @param img
	 * @param id
	 * @return
	 */
	public int update(String lanmuxuanze, String title, String author, String editor, String outtime1, String img,
			int id) {
		String sql = "UPDATE aiticle SET belong = ?,title = ?,author = ?,content = ?,outtime = ?,pic = ? WHERE rec_id =?";
		Object[] params = { lanmuxuanze, title, author, editor, outtime1, img, id };
		return excuteUpdate(sql, params);
	}

	public int readCount(int id) {
		String sql = "UPDATE aiticle SET count = count+1 WHERE rec_id =?";
		Object[] params = { id };
		return excuteUpdate(sql, params);
	}

	public String toContent(String content) {
		String txtcontent = content.replaceAll("</?[^>]+>", ""); // 剔出<html>的标签
		txtcontent = txtcontent.replaceAll("<a>\\s*|\t|\r|\n</a>", "");// 去除字符串中的空格,回车,换行符,制表符
		txtcontent = txtcontent.replaceAll("&nbsp;", " ");
		//System.out.println(txtcontent);
		return txtcontent;
	}
}
