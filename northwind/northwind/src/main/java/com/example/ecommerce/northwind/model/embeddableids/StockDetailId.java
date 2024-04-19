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
public class StockDetailId implements Serializable {

    private Integer productId;

    private Integer stockId;

}
