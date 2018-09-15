package com.news.service;

import java.util.List;

import com.news.pojo.Informations;

public interface InformationService {

	List<Informations> getInfoList();

	Informations getInfoById(Integer id);

}
