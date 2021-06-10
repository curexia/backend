package tk.curexia.model;

import java.util.ArrayList;

public class Medicine {
    private String name;
    private String producer;
    private String storage;
    private String detail;
    private String contains;
    private String dosage;
    ArrayList<String> beniMain;
    ArrayList<String> beniOthers;

    public Medicine(String name, String producer, String storage, String detail, String contains, String dosage, ArrayList<String> beniMain, ArrayList<String> beniOthers) {
        this.name = name;
        this.producer = producer;
        this.storage = storage;
        this.detail = detail;
        this.contains = contains;
        this.dosage = dosage;
        this.beniMain = beniMain;
        this.beniOthers = beniOthers;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getStorage() {
        return storage;
    }

    public void setStorage(String storage) {
        this.storage = storage;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getContains() {
        return contains;
    }

    public void setContains(String contains) {
        this.contains = contains;
    }

    public String getDosage() {
        return dosage;
    }

    public void setDosage(String dosage) {
        this.dosage = dosage;
    }

    public ArrayList<String> getBeniMain() {
        return beniMain;
    }

    public void setBeniMain(ArrayList<String> beniMain) {
        this.beniMain = beniMain;
    }

    public ArrayList<String> getBeniOthers() {
        return beniOthers;
    }

    public void setBeniOthers(ArrayList<String> beniOthers) {
        this.beniOthers = beniOthers;
    }

    @Override
    public String toString() {
        return "Medicine{" +
                "name='" + name + '\'' +
                ", producer='" + producer + '\'' +
                ", storage='" + storage + '\'' +
                ", detail='" + detail + '\'' +
                ", contains='" + contains + '\'' +
                ", dosage='" + dosage + '\'' +
                ", beniMain=" + beniMain +
                ", beniOthers=" + beniOthers +
                '}';
    }

}
