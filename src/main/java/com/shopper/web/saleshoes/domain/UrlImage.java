package com.shopper.web.saleshoes.domain;


import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import static javax.persistence.CascadeType.PERSIST;

@Entity
@Table(name = "url_image")
public class UrlImage implements Serializable {

    private static final long serialVersionUID = -3074924826644002793L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "id_img", referencedColumnName = "id")
    private UrlImage urlImage;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public UrlImage getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(UrlImage urlImage) {
        this.urlImage = urlImage;
    }
}
