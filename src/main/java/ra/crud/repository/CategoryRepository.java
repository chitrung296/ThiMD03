package ra.crud.repository;

import ra.crud.model.Category;

import java.util.List;

public interface CategoryRepository {
    List<Category> findAll();

    Category findById(int id);

    boolean create(Category category);

    boolean update(Category category);

    boolean delete(int id);
}