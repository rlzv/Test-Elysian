package com.robert.model;

public class OrderReport {
    private String pharmacyName;
    private String productName;
    private int quantity;

    public OrderReport(String pharmacyName, String productName, int quantity) {
        this.pharmacyName = pharmacyName;
        this.productName = productName;
        this.quantity = quantity;
    }

    // Getters and Setters
    public String getPharmacyName() {
        return pharmacyName;
    }

    public void setPharmacyName(String pharmacyName) {
        this.pharmacyName = pharmacyName;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}