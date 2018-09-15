package com.news.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.news.pojo.Informations;

public interface InformationMapper {

	List<Informations> getInfoList();

	Informations getInfoById(@Param("id")Integer id);

	int updateViewCount(@Param("id")Integer id);

}
