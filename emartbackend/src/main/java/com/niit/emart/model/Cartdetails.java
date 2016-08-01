package com.niit.emart.model;


import java.io.Serializable;

import javax.persistence.Entity;

@SuppressWarnings("serial")
@Entity

public class Cartdetails implements Serializable{
    
    private String name;
    private String address;
    private int mobile;
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public int getMobile() {
        return mobile;
    }
    public void setMobile(int mobile) {
        this.mobile = mobile;
    }
}