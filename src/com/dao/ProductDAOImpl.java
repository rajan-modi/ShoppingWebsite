package com.dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.model.Product;

@Repository
public class ProductDAOImpl extends AbstractDAO implements ProductDAO{

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts()
	{
		List<Product> products = new ArrayList<Product>();
		products = getSession().createCriteria(Product.class).list();
		closeSession();
		return products;
	}

	@Override
	public Product getProductById(Integer productId) {
		System.out.println("Search product with ID - "+productId);
		Product product = (Product) getSession().get(Product.class, productId);
		System.out.println(product);
		return product;
	}
}
