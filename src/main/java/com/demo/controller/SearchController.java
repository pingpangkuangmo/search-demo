package com.demo.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dboper.search.DBSearchService;
import com.dboper.search.domain.QueryBody;
import com.dboper.search.util.MapUtil;

@RestController
public class SearchController implements InitializingBean{
	
	@Autowired
	private DBSearchService dbSearchService;
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@RequestMapping(value="api/search")
	public List<Map<String,Object>> select(@RequestBody QueryBody q){
		return dbSearchService.select(q);
	}
	
	@RequestMapping(value="api/search/action/{action}",method=RequestMethod.GET)
	public List<Map<String,Object>> select(@PathVariable("action")String action){
		return dbSearchService.select(action);
	}
	
	@RequestMapping(value="api/search/action/{action}/{column}/{value}",method=RequestMethod.GET)
	public List<Map<String,Object>> select(@PathVariable("action")String action,
			@PathVariable("column")String column,@PathVariable("value")Object value){
		return dbSearchService.select(action,MapUtil.getMap(column,value));
	}
	
	@RequestMapping(value="api/search/action/{action}",method=RequestMethod.POST)
	public List<Map<String,Object>> select(@PathVariable("action")String action,@RequestBody Map<String,Object> params){
		return dbSearchService.select(action,params);
	}

	@Override
	public void afterPropertiesSet(){
		dbSearchService.init();
	}
}
