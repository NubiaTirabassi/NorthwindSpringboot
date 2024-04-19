package com.example.ecommerce.northwind.model.embeddablemodels;


import com.example.ecommerce.northwind.model.Contact;
import com.example.ecommerce.northwind.model.Employee;
import com.example.ecommerce.northwind.model.embeddableids.EmployeeContactId;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "employees_contacts")
public class EmployeeContact {

    @EmbeddedId
    private EmployeeContactId employeeContactId;

    @Column(name = "DATA_REGISTER", nullable = false)
    private LocalDateTime dataRegister;

    @Column(name = "CLOSE_REGISTER")
    private LocalDateTime closeRegister;

    //Relacionamento
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @MapsId("employeeId")
    @JoinColumn(name = "employee_id")
    private Employee employee;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @MapsId("contactId")
    @JoinColumn(name = "contact_id")
    private Contact contact;
}
