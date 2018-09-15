package com.news.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.news.pojo.Informations;
import com.news.service.InformationService;

@Controller
public class InformationController {

	@Resource
	private InformationService informationService;
	
	@RequestMapping("/info/{id}")
	public String viewInfo(Model model,@PathVariable Integer id) {
		Informations info = informationService.getInfoById(id);
		model.addAttribute("info", info);
		return "detail";
	}
	
	/**
	 * 加载首页列表
	 * @param model
	 * @return
	 */
	@RequestMapping("/index")
	public String toMain(Model model) {
		List<Informations> infoList = informationService.getInfoList();
		model.addAttribute("infoList", infoList);
		return "main";
	}
	
}
