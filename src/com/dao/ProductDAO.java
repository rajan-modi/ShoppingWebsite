package com.dao;

import java.util.List;

import com.model.Product;

public interface ProductDAO{
	List<Product> getAllProducts();
	Product getProductById(Integer productId);
}
