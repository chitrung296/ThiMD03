package ra.crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ra.crud.model.Category;
import ra.crud.service.CategoryService;
import ra.crud.service.ProductService;

@Controller
@RequestMapping("/categoryController")
public class CategoryController {
    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/findAll")
    public String findAllCategories(Model model) {
        model.addAttribute("listCategories", categoryService.findAll());
        return "categories";
    }

    @GetMapping("/initCreate")
    public String initCreateCategory(Model model) {

        model.addAttribute("category", new Category());

        model.addAttribute("listProducts", productService.findAll());
        return "newCategory";
    }
    @PostMapping("/create")
    public String createCategory(Category category){
        boolean result = categoryService.create(category);
        if(result){
            return "redirect:findAll";
        }
        return "error";
    }
}