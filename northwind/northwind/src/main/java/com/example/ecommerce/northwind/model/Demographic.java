package com.example.ecommerce.northwind.model;

import jakarta.persistence.*;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "DEMOGRAPHICS")
public class Demographic {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private Integer id;

    //BigDecimal
    @Column(name = "LONG", precision = 12, scale = 8, nullable = false)
    private BigDecimal longitude;

    @Column(name = "LAT", precision = 12, scale = 8, nullable = false)
    private BigDecimal latitude;

    @Column(name = "DESCRIPTION", length = 150)
    private String description;

    @Column(name = "DATE_REGISTER" , nullable = false)
    private LocalDateTime dateRegister;

    @Column(name = "CLOSE_REGISTER")
    private LocalDateTime closeRegister;

}
