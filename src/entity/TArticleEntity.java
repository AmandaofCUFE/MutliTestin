package entity;

import javax.persistence.*;

@Entity
@Table(name = "article", schema = "testin", catalog = "")
public class TArticleEntity {
    private int articleId;
    private Integer articleReadNum;
    private String articleTitle;
    private String articleAuthor;
    private String articleUrl;
    private String articleComment;
    private String articleUploadtime;
    private String articleType;

    @Id
    @Column(name = "article_id", nullable = false)
    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    @Basic
    @Column(name = "article_read_num", nullable = true)
    public Integer getArticleReadNum() {
        return articleReadNum;
    }

    public void setArticleReadNum(Integer articleReadNum) {
        this.articleReadNum = articleReadNum;
    }

    @Basic
    @Column(name = "article_title", nullable = true, length = 45)
    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    @Basic
    @Column(name = "article_author", nullable = true, length = 45)
    public String getArticleAuthor() {
        return articleAuthor;
    }

    public void setArticleAuthor(String articleAuthor) {
        this.articleAuthor = articleAuthor;
    }

    @Basic
    @Column(name = "article_url", nullable = true, length = 45)
    public String getArticleUrl() {
        return articleUrl;
    }

    public void setArticleUrl(String articleUrl) {
        this.articleUrl = articleUrl;
    }

    @Basic
    @Column(name = "article_comment", nullable = true, length = 45)
    public String getArticleComment() {
        return articleComment;
    }

    public void setArticleComment(String articleComment) {
        this.articleComment = articleComment;
    }

    @Basic
    @Column(name = "article_uploadtime", nullable = true, length = 45)
    public String getArticleUploadtime() {
        return articleUploadtime;
    }

    public void setArticleUploadtime(String articleUploadtime) {
        this.articleUploadtime = articleUploadtime;
    }

    @Basic
    @Column(name = "article_type", nullable = true, length = 45)
    public String getArticleType() {
        return articleType;
    }

    public void setArticleType(String articleType) {
        this.articleType = articleType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TArticleEntity that = (TArticleEntity) o;

        if (articleId != that.articleId) return false;
        if (articleReadNum != null ? !articleReadNum.equals(that.articleReadNum) : that.articleReadNum != null)
            return false;
        if (articleTitle != null ? !articleTitle.equals(that.articleTitle) : that.articleTitle != null) return false;
        if (articleAuthor != null ? !articleAuthor.equals(that.articleAuthor) : that.articleAuthor != null)
            return false;
        if (articleUrl != null ? !articleUrl.equals(that.articleUrl) : that.articleUrl != null) return false;
        if (articleComment != null ? !articleComment.equals(that.articleComment) : that.articleComment != null)
            return false;
        if (articleUploadtime != null ? !articleUploadtime.equals(that.articleUploadtime) : that.articleUploadtime != null)
            return false;
        if (articleType != null ? !articleType.equals(that.articleType) : that.articleType != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = articleId;
        result = 31 * result + (articleReadNum != null ? articleReadNum.hashCode() : 0);
        result = 31 * result + (articleTitle != null ? articleTitle.hashCode() : 0);
        result = 31 * result + (articleAuthor != null ? articleAuthor.hashCode() : 0);
        result = 31 * result + (articleUrl != null ? articleUrl.hashCode() : 0);
        result = 31 * result + (articleComment != null ? articleComment.hashCode() : 0);
        result = 31 * result + (articleUploadtime != null ? articleUploadtime.hashCode() : 0);
        result = 31 * result + (articleType != null ? articleType.hashCode() : 0);
        return result;
    }
}
