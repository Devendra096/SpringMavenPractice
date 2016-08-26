package com.shuraj.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shuraj.service.CategoriesService;
import com.shuraj.service.ManufactureService;
import com.shuraj.service.ProductService;

@Controller
public class ShopController extends BaseController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	private ManufactureService manufactureService;
	
	@RequestMapping("/index.html")
	public String getHome(Map<String, Object> map, HttpServletRequest request){
		map.put("baseURL",getBaseURL(request));
		map.put("productList", productService.listProduct());
		map.put("categoriesList", categoriesService.listCategories());
		map.put("manufactureList", manufactureService.listManufacture());
		map.put("newproduct", productService.getNewProduct());
		map.put("recProduct", productService.getRecomandedProduct());
		return "/index";
	}
}
