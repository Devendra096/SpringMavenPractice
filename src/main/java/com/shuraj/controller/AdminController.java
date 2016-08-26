package com.shuraj.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shuraj.model.Admin;
import com.shuraj.model.Product;
import com.shuraj.service.AdminService;
import com.shuraj.service.CategoriesService;
import com.shuraj.service.ManufactureService;
import com.shuraj.service.ProductService;

@Controller
public class AdminController extends BaseController{
	@Autowired
	private ProductService productService;
	@Autowired
	private AdminService adminService;
	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	private ManufactureService manufactureService;
	
	@RequestMapping("/adminlogin.html")
	public String getAdminPage(Map<String ,Object> map){
		map.put("adminuser", new Admin());
		return "/admin/index";
	}
	
	@RequestMapping(value="/logincontroller.html",method=RequestMethod.POST)
	public String checkLoginUser(
			@RequestParam("adminUser") String username,
			@RequestParam("adminPass") String password,
			Map<String, Object> map
			){
		Boolean check = adminService.checkUser(username, password);
		
		if(check == true){
			map.put("admin", adminService.getByName(username));
			return "/admin/admindashboard";
		}
		return "redirect:adminlogin.html";
	}
	
	@RequestMapping("/admindashboard.html")
	public String getProductAddForm(Map<String,Object> map){
		map.put("productAdmin",new Product() );
		return "/admin/admindashboard";
	}
	
	@RequestMapping("/media.html")
	public String getMediaPage(
			Map<String,Object> map,
			HttpServletRequest request){
		map.put("baseURL", getBaseURL(request));
		map.put("mediaList",productService.listProduct());
		return "/admin/media";
	}
	
	@RequestMapping("/user.html")
	public String getUserPage(Map<String,Object> map){
		map.put("userList",adminService.listUser());
		return "/admin/user";
	}
	
	@RequestMapping("/actionitems.html")
	public String getActionItems(
			@RequestParam("action") String action,
			Map<String,Object> map
		){
		
		if(action.equalsIgnoreCase("listproduct")){
			return "redirect:media.html";
		}else if(action.equalsIgnoreCase("addproduct")){
			return "redirect:addproductform.html";
		}else if(action.equalsIgnoreCase("delete")){
			return "redirect:media.html";
		}else if(action.equalsIgnoreCase("edit")){
			return "redirect:media.html";
		}
		
		return "redirect:media.html";
		
	}
	@RequestMapping("/addproductform.html")
	public String getAddProduct(Map<String,Object> map){
		map.put("productList",new Product());
		map.put("categories", categoriesService.listCategories() );
		map.put("manufacture",manufactureService.listManufacture());
		return "/admin/image_add";
	}
	
	
	
	@RequestMapping(value="addproduct.html",method=RequestMethod.POST)
	public String saveAllProduct(
			Map<String,Object> map,
			@ModelAttribute Product product,
			@RequestParam MultipartFile file,
			HttpServletRequest request
			){
		String latestUploadPhoto = "";
		String rootPath = request.getSession().getServletContext().getRealPath("/");
		File dir = new File(rootPath+File.separator+"img");
		if(!dir.exists()){
			dir.mkdirs();
		}
		File serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
		latestUploadPhoto = file.getOriginalFilename();
		
		//Write file to disk
		try{
			InputStream is = file.getInputStream();
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
			int i;
			while((i=is.read()) != -1){
				stream.write(i);
			}
			stream.flush();
			stream.close();
		}catch(IOException e){
			System.out.println("Error: "+e.getMessage());
		}
		
		//insert into database
		product.setProImage(latestUploadPhoto);
		productService.saveProduct(product);
		map.put("baseURL", getBaseURL(request));
		return "redirect:media.html";
	}
	
	
}
