module com.example.rojekti {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires java.desktop;


    opens com.example.rojekti to javafx.fxml;
    exports com.example.rojekti;
}