package com.mebx.dao;

import java.util.List;

import com.mebx.model.Film;
import com.mebx.model.FilmWithBLOBs;

public interface FilmMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FilmWithBLOBs record);

    int insertSelective(FilmWithBLOBs record);

    FilmWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FilmWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(FilmWithBLOBs record);

    int updateByPrimaryKey(Film record);
    
    List<FilmWithBLOBs> selectall();
    
    List<FilmWithBLOBs> selectPage(FilmWithBLOBs record);
    
    List<FilmWithBLOBs> selectHot();
}