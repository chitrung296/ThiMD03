package ra.crud.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Category")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "category_id")
    private int categoryId;
    @Column(name = "category_name", columnDefinition = "varchar(50)", nullable = false, unique = true)
    private String categoryName;
    @Column(name = "category_description", columnDefinition = "text")
    private String categoryDescription;
    @Column(name = "category_status")
    private boolean categoryStatus;
    @OneToMany(mappedBy = "category")
    private List<Category> listCategories = new ArrayList<Category>();
}