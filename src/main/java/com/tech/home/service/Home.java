package com.tech.home.service;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Home {
    @Id
    private Integer zipCode;
    private String address;

    public Integer getZipCode() {
        return zipCode;
    }
    public void setZipCode(Integer zipCode) {
        this.zipCode = zipCode;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Address: " + address + "<br>Zip Code: " + zipCode;
    }
}
