package ra.crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ra.crud.model.Product;
import ra.crud.service.CategoryService;
import ra.crud.service.ProductService;

@Controller
@RequestMapping("/productController")
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/findAll")
    public String findAllProducts(Model model) {
        model.addAttribute("listProducts", productService.findAll());
        return "products";
    }

    @GetMapping("/initCreate")
    public String initCreateProduct(Model model) {

        model.addAttribute("product", new Product());

        model.addAttribute("listCategories", categoryService.findAll());
        return "newProduct";
    }
    @PostMapping("/create")
    public String createProduct(Product product){
        boolean result = productService.create(product);
        if(result){
            return "redirect:findAll";
        }
        return "error";
    }
}