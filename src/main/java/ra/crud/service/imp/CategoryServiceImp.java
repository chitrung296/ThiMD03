package ra.crud.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ra.crud.model.Category;
import ra.crud.repository.CategoryRepository;
import ra.crud.service.CategoryService;

import java.util.List;

@Service
public class CategoryServiceImp implements CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Category> findAll() {
        return categoryRepository.findAll();
    }

    @Override
    public Category findById(int id) {
        return categoryRepository.findById(id);
    }

    @Override
    public boolean create(Category category) {
        return categoryRepository.create(category);
    }

    @Override
    public boolean update(Category category) {
        return categoryRepository.update(category);
    }

    @Override
    public boolean delete(int id) {
        return categoryRepository.delete(id);
    }
}