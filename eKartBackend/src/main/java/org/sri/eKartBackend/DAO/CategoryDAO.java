package org.sri.eKartBackend.DAO;

import java.util.List;

import org.sri.eKartBackend.model.Category;

public interface CategoryDAO {

	List<Category> list();
	Category get(int id);
}
