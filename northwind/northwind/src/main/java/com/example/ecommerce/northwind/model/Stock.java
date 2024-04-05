package com.example.ecommerce.northwind.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "STOCK")
public class Stock {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "QUANTITY", nullable = false)
    private Integer quantity;

    @Column(name = "QUANTITY_PER_UNIT", nullable = false)
    private Integer quantityPerUnit;

    @Column(name = "REORDER_LEVEL", columnDefinition = "SMALLINT", nullable = false)
    private short reOrderLevel;

    @Column(name = "STOCK_ADDRESS", length = 150, nullable = false)
    private String stockAddress;
}
