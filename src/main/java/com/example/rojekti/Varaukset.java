package com.example.rojekti;

import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;
import java.time.LocalDate;




public class Varaukset {





    private final SimpleStringProperty mokki;
    private final SimpleStringProperty asiakas;
    private SimpleObjectProperty<LocalDate> alkuPaiva;
    private SimpleObjectProperty<LocalDate> loppuPaiva;


    public Varaukset(String mokki, String asiakas, LocalDate alkuPaiva, LocalDate loppuPaiva) {
        this.mokki = new SimpleStringProperty(mokki);
        this.asiakas = new SimpleStringProperty(asiakas);
        this.alkuPaiva = new SimpleObjectProperty<>(alkuPaiva);
        this.loppuPaiva = new SimpleObjectProperty<>(loppuPaiva);
    }

    public String getMokki(){
        return mokki.get(); }

    public void setMokki(String mokki) { this.mokki.set(mokki); }

    public String getAsiakas() { return asiakas.get(); }
    public void setAsiakas(String asiakas) { this.asiakas.set(asiakas); }


    public LocalDate getAlkuPaiva(){
        return alkuPaiva.get();
    }


    public LocalDate getLoppuPaiva(){
        return loppuPaiva.get();
    }

    public SimpleStringProperty mokkiProperty() { return mokki; }
    public SimpleStringProperty asiakasProperty() { return asiakas; }
    public SimpleObjectProperty<LocalDate> alkuPaivaProperty() { return alkuPaiva; }
    public SimpleObjectProperty<LocalDate> loppuPaivaProperty() { return loppuPaiva; }
}