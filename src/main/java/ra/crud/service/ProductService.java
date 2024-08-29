package ra.crud.service;

import ra.crud.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    boolean create(Product product);
}