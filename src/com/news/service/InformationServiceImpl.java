package com.news.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.news.dao.InformationMapper;
import com.news.pojo.Informations;

@Service
public class InformationServiceImpl implements InformationService {

	@Resource
	private InformationMapper informationMapper;

	@Override
	public Informations getInfoById(Integer id) {
		int result = informationMapper.updateViewCount(id);
		return informationMapper.getInfoById(id);
	}
	
	@Override
	public List<Informations> getInfoList() {
		return informationMapper.getInfoList();
	}

}
