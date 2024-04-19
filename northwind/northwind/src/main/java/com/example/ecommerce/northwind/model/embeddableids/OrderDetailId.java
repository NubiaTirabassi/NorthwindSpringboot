package com.example.ecommerce.northwind.model.embeddableids;


import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@Embeddable
@AllArgsConstructor
@NoArgsConstructor
public class OrderDetailId implements Serializable {

    private Integer orderId;
    private Integer productId;

}
