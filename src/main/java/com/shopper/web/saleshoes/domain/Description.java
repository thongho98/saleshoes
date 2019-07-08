package com.shopper.web.saleshoes.domain;

import javax.persistence.*;
import java.io.Serializable;

//@Data
@Entity
@Table(name = "description")
public class Description implements Serializable {
    private static final long serialVersionUID = -3074924826644002793L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @OneToOne
    @JoinColumn(name="id_product", referencedColumnName = "id")
    private Products products;

    @Column(name = "code")
    private String code;

    @Column(name = "description_detail")
    private String detailDescription;

    @Column(name = "material")
    private String materrial;

    @Column(name = "brands")
    private String design;

    @Column(name = "madein")
    private String madein;



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDetailDescription() {
        return detailDescription;
    }

    public void setDetailDescription(String detailDescription) {
        this.detailDescription = detailDescription;
    }

    public String getMaterrial() {
        return materrial;
    }

    public void setMaterrial(String materrial) {
        this.materrial = materrial;
    }

    public String getDesign() {
        return design;
    }

    public void setDesign(String design) {
        this.design = design;
    }

    public String getMadein() {
        return madein;
    }

    public void setMadein(String madein) {
        this.madein = madein;
    }
}
