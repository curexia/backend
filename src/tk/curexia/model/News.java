package tk.curexia.model;

public class News {
    private String title;
    private String url;
    private String urltoimage;
    private String description;

    public News(String title, String url, String urltoimage, String description) {
        this.title = title;
        this.url = url;
        this.urltoimage = urltoimage;
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUrltoimage() {
        return urltoimage;
    }

    public void setUrltoimage(String urltoimage) {
        this.urltoimage = urltoimage;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "News{" +
                "title='" + title + '\'' +
                ", url='" + url + '\'' +
                ", urltoimage='" + urltoimage + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
