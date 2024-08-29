package ra.crud.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Product")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private int productId;
    @Column(name = "product_name", columnDefinition = "varchar(100)", nullable = false)
    private String productName;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "price", nullable = false)
    private double price;
    @Column(name = "image_url", columnDefinition = "varchar(255)")
    private String imageUrl;
    @Column(name = "status", nullable = false, columnDefinition = "BIT DEFAULT 1")
    private boolean status;
    @Column(name = "created_at", columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @ManyToOne
    @JoinColumn(name = "category_id", referencedColumnName = "category_id", nullable = false)
    private Category category;


}