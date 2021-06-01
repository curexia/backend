package tk.curexia.model;

import java.util.Objects;

public class Notification {
    private int touser;
    private int fromuser;
    private String type;
    private String status;
    private String description;

    public Notification(int touser, int fromuser, String type, String status, String description) {
        this.touser = touser;
        this.fromuser = fromuser;
        this.type = type;
        this.status = status;
        this.description = description;
    }

    public int getTouser() {
        return touser;
    }

    public void setTouser(int touser) {
        this.touser = touser;
    }

    public int getFromuser() {
        return fromuser;
    }

    public void setFromuser(int fromuser) {
        this.fromuser = fromuser;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Notification that = (Notification) o;
        return touser == that.touser &&
                fromuser == that.fromuser &&
                type.equals(that.type) &&
                status.equals(that.status) &&
                description.equals(that.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(touser, fromuser, type, status, description);
    }

    @Override
    public String toString() {
        return "Notification{" +
                "touser=" + touser +
                ", fromuser=" + fromuser +
                ", type='" + type + '\'' +
                ", status='" + status + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
