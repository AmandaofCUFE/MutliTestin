package entity;

import javax.persistence.*;

@Entity
@Table(name = "review", schema = "testin", catalog = "")
public class TReviewEntity {
    private int reviewId;
    private String articleTitle;
    private String articleAuthor;
    private String articleUrl;
    private String reviewContent;

    @Id
    @Column(name = "review_id", nullable = false)
    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }

    @Basic
    @Column(name = "article_title", nullable = true, length = 5000)
    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    @Basic
    @Column(name = "article_author", nullable = true, length = 5000)
    public String getArticleAuthor() {
        return articleAuthor;
    }

    public void setArticleAuthor(String articleAuthor) {
        this.articleAuthor = articleAuthor;
    }

    @Basic
    @Column(name = "article_url", nullable = true, length = 5000)
    public String getArticleUrl() {
        return articleUrl;
    }

    public void setArticleUrl(String articleUrl) {
        this.articleUrl = articleUrl;
    }

    @Basic
    @Column(name = "review_content", nullable = true, length = -1)
    public String getReviewContent() {
        return reviewContent;
    }

    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TReviewEntity that = (TReviewEntity) o;

        if (reviewId != that.reviewId) return false;
        if (articleTitle != null ? !articleTitle.equals(that.articleTitle) : that.articleTitle != null) return false;
        if (articleAuthor != null ? !articleAuthor.equals(that.articleAuthor) : that.articleAuthor != null)
            return false;
        if (articleUrl != null ? !articleUrl.equals(that.articleUrl) : that.articleUrl != null) return false;
        if (reviewContent != null ? !reviewContent.equals(that.reviewContent) : that.reviewContent != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = reviewId;
        result = 31 * result + (articleTitle != null ? articleTitle.hashCode() : 0);
        result = 31 * result + (articleAuthor != null ? articleAuthor.hashCode() : 0);
        result = 31 * result + (articleUrl != null ? articleUrl.hashCode() : 0);
        result = 31 * result + (reviewContent != null ? reviewContent.hashCode() : 0);
        return result;
    }
}
