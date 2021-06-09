package tk.curexia.model;

import java.util.Objects;

public class Person {
    private int id;
    private String name;
    private String dob;             // DD/MM/YYYY
    private String address;
    private String designation;
    private long phone;
    private String email;
    private String password;

    public Person(int id, String name, String address, String dob, String designation, long phone, String password, String email) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.designation = designation;
        this.phone = phone;
        this.email = email;
        this.password = password;
    }

    public Person(String name, String address, String dob, String designation, long phone, String password, String email) {
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.designation = designation;
        this.phone = phone;
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Person person = (Person) o;
        return id == person.id &&
                email.equals(person.email);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, email);
    }

    @Override
    public String toString() {
        return "Person{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", dob='" + dob + '\'' +
                ", address='" + address + '\'' +
                ", designation='" + designation + '\'' +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
