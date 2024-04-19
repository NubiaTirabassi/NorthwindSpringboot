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
public class EmployeeContactId implements Serializable {

    private Integer employeeId;
    private Integer contactId;

}
