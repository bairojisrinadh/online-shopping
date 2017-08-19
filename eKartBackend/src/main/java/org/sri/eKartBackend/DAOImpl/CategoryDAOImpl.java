package org.sri.eKartBackend.DAOImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.sri.eKartBackend.DAO.CategoryDAO;
import org.sri.eKartBackend.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	public static List<Category> categories = new ArrayList<>();
	
	static {
		Category category = new Category();
		category.setId(1);
		category.setName("Television");
		category.setDescription("Description for Television");
		category.setImageURL("CAT_1.png");
		
		categories.add(category);
		
		category = new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("Description for Mobiles");
		category.setImageURL("CAT_2.png");
		
		categories.add(category);
		
		category = new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("Description for Laptops");
		category.setImageURL("CAT_3.png");
		
		categories.add(category);
		
		
		category = new Category();
		category.setId(4);
		category.setName("HeadPhones");
		category.setDescription("Description for HeadPhones");
		category.setImageURL("CAT_4.png");
		
		categories.add(category);
		
	}
	@Override
	public List<Category> list() {
		return categories;
	}
	@Override
	public Category get(int id) {
		Category category =categories.stream().filter(c -> c.getId() == id)
						   .findFirst().get();
		return category;
	}

	
}
