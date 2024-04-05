package com.example.ecommerce.northwind.model;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.data.annotation.Id;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "ADDRESSES")
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "INFO", length = 250, nullable = false)
    private String info;

    @Column(name = "CITY", length = 150, nullable = false)
    private String city;

    @Column(name = "REGION", length = 150, nullable = false)
    private String region;

    @Column(name = "POSTAL_CODE", length = 20, nullable = false)
    private String postalCode;

    @Column(name = "COUNTRY", length = 100, nullable = false)
    private String country;

    @Column(name = "DATE_REGISTER", nullable = false)
    private LocalDateTime dateRegister;

    @Column(name = "CLOSE_REGISTER")
    private LocalDateTime closeRegister;


}
