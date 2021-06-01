package tk.curexia.model;

import java.util.Objects;

public class Disease {
    private int userid;
    private String name;
    private String description;
    private String category;
    private String precaution;
    private String symptoms;
    private String remedies;

    public Disease(int userid, String name, String description, String category, String precaution, String symptoms, String remedies) {
        this.userid = userid;
        this.name = name;
        this.description = description;
        this.category = category;
        this.precaution = precaution;
        this.symptoms = symptoms;
        this.remedies = remedies;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPrecaution() {
        return precaution;
    }

    public void setPrecaution(String precaution) {
        this.precaution = precaution;
    }

    public String getSymptoms() {
        return symptoms;
    }

    public void setSymptoms(String symptoms) {
        this.symptoms = symptoms;
    }

    public String getRemedies() {
        return remedies;
    }

    public void setRemedies(String remedies) {
        this.remedies = remedies;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Disease disease = (Disease) o;
        return userid == disease.userid &&
                name.equals(disease.name) &&
                category.equals(disease.category);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userid, name, category);
    }

    @Override
    public String toString() {
        return "Disease{" +
                "userid=" + userid +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", category='" + category + '\'' +
                ", precaution='" + precaution + '\'' +
                ", symptoms='" + symptoms + '\'' +
                ", remedies='" + remedies + '\'' +
                '}';
    }
}
