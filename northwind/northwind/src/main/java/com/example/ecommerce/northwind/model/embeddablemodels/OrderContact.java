package com.example.ecommerce.northwind.model.embeddablemodels;


import com.example.ecommerce.northwind.model.Contact;
import com.example.ecommerce.northwind.model.Order;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "orders_contacts")
public class OrderContact {

    @EmbeddedId
    private OrderContact orderContact;

    @Column(name = "DATA_REGISTER", nullable = false)
    private LocalDateTime dataRegister;

    @Column(name = "CLOSE_REGISTER")
    private LocalDateTime closeRegister;

    //Relacionamento
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @MapsId("orderId")
    @JoinColumn(name = "order_id")
    private Order order;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @MapsId("contactId")
    @JoinColumn(name = "contact_id")
    private Contact contact;
}
