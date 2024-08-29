package ra.crud.repository.imp;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ra.crud.repository.CategoryRepository;
import ra.crud.model.Category;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class CategoryRepositoryImp implements CategoryRepository {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Category> findAll() {
        return entityManager.createQuery("from Category ", Category.class).getResultList();
    }

    @Override
    public Category findById(int id) {
        return entityManager.createQuery("from Category d where d.categoryId = :id", Category.class)
                .setParameter("id", id).getSingleResult();
    }

    @Override
    @Transactional
    public boolean create(Category department) {
        try {
            entityManager.persist(department);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    @Transactional
    public boolean update(Category department) {
        try {
            entityManager.merge(department);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    @Transactional
    public boolean delete(int id) {
        try {
            //Lấy đối tượng cần xóa
            Category dept = entityManager.find(Category.class, id);
            //Xóa
            entityManager.remove(dept);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}