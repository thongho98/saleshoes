package com.shopper.web.saleshoes.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.List;

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
    private LocalDate updateAt;

    @ManyToOne
    @JoinColumn(name="id_category", referencedColumnName = "id")
    private Category category;

    @Column(name = "id_status")
    private int statusId;

    @OneToMany(mappedBy="urlImage", fetch=FetchType.LAZY)
    private List<UrlImage> urlList;

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

    public LocalDate getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(LocalDate updateAt) {
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

    public List<UrlImage> getUrlList() {
        return urlList;
    }

    public void setUrlList(List<UrlImage> urlList) {
        this.urlList = urlList;
    }
}
