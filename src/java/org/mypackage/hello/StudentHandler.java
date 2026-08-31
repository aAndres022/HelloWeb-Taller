package org.mypackage.hello;
import java.time.LocalDate;
import java.time.Period;

public class StudentHandler {
    private String name;
    private String birthDate; // Formato requerido: YYYY-MM-DD

    public StudentHandler() {
        name = null;
        birthDate = null;
    }

    // Selecciona clic derecho -> Refactor -> Encapsulate Fields para generar los métodos de acceso.
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getBirthDate() { return birthDate; }
    public void setBirthDate(String birthDate) { this.birthDate = birthDate; }

    public int getAge() {
        if (birthDate != null && !birthDate.isEmpty()) {
            LocalDate birth = LocalDate.parse(birthDate);
            return Period.between(birth, LocalDate.now()).getYears();
        }
        return 0;
    }
}