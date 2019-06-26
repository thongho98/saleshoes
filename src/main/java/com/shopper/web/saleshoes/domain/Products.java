package com.shopper.web.saleshoes.domain;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Calendar;

//@Data
@Entity
@Table(name = "products")
public class Products implements Serializable{
    private static final long serialVersionUID = -3074924826644002793L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private Double price;

    @Column(name = "update_at")
    private Calendar updateAt;

    @ManyToOne
    @JoinColumn(name="id_category", referencedColumnName = "id")
    private Category category;

    @Column(name = "id_status")
    private int statusId;

    @Column(name = "id_img")
    private int imgId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Calendar getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Calendar updateAt) {
        this.updateAt = updateAt;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public int getImgId() {
        return imgId;
    }

    public void setImgId(int imgId) {
        this.imgId = imgId;
    }
}
