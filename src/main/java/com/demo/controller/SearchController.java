package com.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dboper.search.DBSearchService;
import com.dboper.search.domain.QueryBody;

@RestController
public class SearchController implements InitializingBean{
	
	@Autowired
	private DBSearchService dbSearchService;

	@RequestMapping(value="api/search")
	public List<Map<String,Object>> select(@RequestBody QueryBody q){
		return dbSearchService.select(q);
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		dbSearchService.init();
	}
}
