package com.example.rojekti;

import javafx.beans.property.*;

public class Mokki {


    private StringProperty nimi;
    private StringProperty osoite;
    private DoubleProperty hinta;
    private DoubleProperty koko;


    public Mokki(String nimi, String osoite, Double hinta, Double koko) {

        this.nimi = new SimpleStringProperty(nimi);
        this.osoite = new SimpleStringProperty(osoite);
        this.hinta = new SimpleDoubleProperty(hinta);
        this.koko = new SimpleDoubleProperty(koko);

    }




    public String getNimi() {
        return nimi.get();
    }
    public void setNimi(String nimi) {
        this.nimi.set(nimi);
    }
    public String getOsoite() {
        return osoite.get();
    }
    public void setOsoite(String osoite) {
        this.osoite.set(osoite);
    }
    public Double getHinta() {
        return hinta.get();
    }
    public void setHinta(Double hinta) {
        this.hinta.set(hinta);
    }
    public Double getKoko() {
        return koko.get();
    }
    public void setKoko(Double koko) {
        this.koko.set(koko);
    }





    public StringProperty nimiProperty() {
        return nimi;
    }
    public StringProperty osoiteProperty() {
        return osoite;
    }
    public DoubleProperty hintaProperty() {
        return hinta;
    }
    public DoubleProperty kokoProperty() {
        return koko;
    }


    public String toString(){
        return nimi.get();
    }


}
