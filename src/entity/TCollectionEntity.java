package entity;

import javax.persistence.*;
@Entity
@Table(name = "collection", schema = "testin", catalog = "")
public class TCollectionEntity {
    private int collectionId;
    private String title;
    private String author;
    private String url;
    private String collectionDate;

    @Id
    @Column(name = "collection_id", nullable = false)
    public int getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }

    @Basic
    @Column(name = "title", nullable = false, length = 45)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "author", nullable = true, length = 45)
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Basic
    @Column(name = "url", nullable = true, length = 45)
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Basic
    @Column(name = "collection_date", nullable = false, length = 45)
    public String getCollectionDate() {
        return collectionDate;
    }

    public void setCollectionDate(String collectionDate) {
        this.collectionDate = collectionDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TCollectionEntity that = (TCollectionEntity) o;

        if (collectionId != that.collectionId) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (author != null ? !author.equals(that.author) : that.author != null) return false;
        if (url != null ? !url.equals(that.url) : that.url != null) return false;
        if (collectionDate != null ? !collectionDate.equals(that.collectionDate) : that.collectionDate != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = collectionId;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (author != null ? author.hashCode() : 0);
        result = 31 * result + (url != null ? url.hashCode() : 0);
        result = 31 * result + (collectionDate != null ? collectionDate.hashCode() : 0);
        return result;
    }
}
