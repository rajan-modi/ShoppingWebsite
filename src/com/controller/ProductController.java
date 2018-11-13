package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Product;
import com.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	@RequestMapping("getProductById/{productId}")
	public ModelAndView getProductById(@PathVariable(value = "productId") Integer productId) {
		Product product = productService.getProductById(productId);
		System.out.println(product.getProductName());
		return new ModelAndView("productPage", "productObj", product);
	}
	

	@RequestMapping("/getProducts") 
	public ModelAndView getAllProducts() throws Exception {
		System.out.println("List all products");
		List<Product> products = productService.getAllProducts(); 
		System.out.println(products);
		return new ModelAndView("home", "productsList", products);
	}
}
