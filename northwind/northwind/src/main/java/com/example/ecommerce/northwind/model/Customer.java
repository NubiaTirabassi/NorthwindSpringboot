package com.example.ecommerce.northwind.model;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "CUSTOMERS")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "NAME", length = 150, nullable = false)
    private String name;

    @Column(name = "DATA_REGISTER", nullable = false)
    private LocalDateTime dataRegister;

    @Column(name = "CLOSE_REGISTER")
    private LocalDateTime closeRegister;
}
