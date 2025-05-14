package com.example.rojekti;

import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Asiakas {

    private IntegerProperty id;
    private StringProperty nimi;
    private StringProperty osoite;
    private StringProperty sposti;
    private StringProperty puhelinnumero;



    public Asiakas(int id, String nimi, String osoite, String sposti, String puhelinnumero){
        this.id = new SimpleIntegerProperty(id);
        this.nimi = new SimpleStringProperty(nimi);
        this.osoite = new SimpleStringProperty(osoite);
        this.sposti = new SimpleStringProperty(sposti);
        this.puhelinnumero = new SimpleStringProperty(puhelinnumero);
    }


    public void setId(int id) {
        this.id.set(id);
    }
    public int getId() {
        return id.get();
    }
    public void setNimi(String nimi) {
        this.nimi.set(nimi);
    }
    public String getNimi() {
        return nimi.get();
    }
    public void setOsoite(String osoite) {
        this.osoite.set(osoite);
    }
    public String getOsoite() {
        return osoite.get();
    }
    public void setSposti(String sposti) {
        this.sposti.set(sposti);
    }
    public String getSposti() {
        return sposti.get();
    }
    public void setPuhelinnumero(String puhelinnumero) {
        this.puhelinnumero.set(puhelinnumero);
    }
    public String getPuhelinnumero() {
        return puhelinnumero.get();
    }




    public IntegerProperty idProperty() {
        return id;
    }


    public StringProperty nimiProperty() {
        return nimi;
    }
    public StringProperty osoiteProperty() {
        return osoite;
    }
    public StringProperty spostiProperty() {
        return sposti;
    }
    public StringProperty puhelinnumeroProperty() {
        return puhelinnumero;
    }



    public String toString(){
        return nimi.get();
    }



}