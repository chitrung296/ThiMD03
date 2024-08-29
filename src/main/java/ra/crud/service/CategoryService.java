package ra.crud.service;

import ra.crud.model.Category;

import java.util.List;

public interface CategoryService {
    List<Category> findAll();

    Category findById(int id);

    boolean create(Category category);

    boolean update(Category category);

    boolean delete(int id);
}