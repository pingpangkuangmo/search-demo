package com.demo.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.FrameworkServlet;

import com.dboper.search.DBSearchService;
import com.dboper.search.domain.QueryBody;

@RestController
public class SearchController implements InitializingBean{
	
	private final Log logger = LogFactory.getLog(getClass());
	
	FrameworkServlet asdas;
	
	@Autowired
	private DBSearchService dbSearchService;

	@RequestMapping(value="api/search")
	public List<Map<String,Object>> select(@RequestBody QueryBody q){
		if(logger.isDebugEnabled()){
			logger.debug("debug");
		}
		if(logger.isInfoEnabled()){
			logger.info("request api/search"+System.currentTimeMillis()+" info");
		}
		logger.warn("warn");
		logger.error("error");
		return dbSearchService.select(q);
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		dbSearchService.init();
	}
}
