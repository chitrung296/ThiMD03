package ra.crud.repository;

import ra.crud.model.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> findAll();

    boolean create(Product product);

}