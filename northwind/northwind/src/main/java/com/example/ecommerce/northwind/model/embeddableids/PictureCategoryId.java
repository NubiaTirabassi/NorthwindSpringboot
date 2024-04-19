package com.example.ecommerce.northwind.model.embeddableids;


import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//Toda chave composta deve implementar Serializable
import java.io.Serializable;

@Data
@Embeddable
@AllArgsConstructor
@NoArgsConstructor
public class PictureCategoryId implements Serializable {

    private Integer categoryId;
    private Integer pictureId;

}
