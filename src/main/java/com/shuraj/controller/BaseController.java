package com.shuraj.controller;

import javax.servlet.http.HttpServletRequest;

public class BaseController {
	public static final  String PARAM_BASE_URL="";
	
	public String getBaseURL(HttpServletRequest request){
		return request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath() ;
	}
}
