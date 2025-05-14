package com.example.rojekti;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Raportit {


    private StringProperty asiakas;
    private boolean onkosiivottu;




    public Raportit(String asiakas, boolean onkosiivottu){
        this.asiakas = new SimpleStringProperty(asiakas);
        this.onkosiivottu = onkosiivottu;
    }


    public String getAsiakas() {
        return asiakas.get();
    }

    public StringProperty asiakasProperty() {
        return asiakas;
    }

    public void setAsiakas(String asiakas) {
        this.asiakas.set(asiakas);
    }

    public boolean isOnkosiivottu() {
        return onkosiivottu;
    }

    public void setOnkosiivottu(boolean onkosiivottu) {
        this.onkosiivottu = onkosiivottu;
    }
}
