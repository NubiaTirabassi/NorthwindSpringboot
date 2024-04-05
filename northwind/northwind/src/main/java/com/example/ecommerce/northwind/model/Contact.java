package com.example.ecommerce.northwind.model;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.data.annotation.Id;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "CONTACT")
public class Contact {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "DATA_REGISTER", nullable = false)
    private LocalDateTime dataRegister;

    @Column(name = "CLOSE_REGISTER")
    private LocalDateTime closeRegister;
}
