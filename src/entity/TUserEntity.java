package entity;

import javax.persistence.*;

@Entity
@Table(name = "user", schema = "testin", catalog = "")
public class TUserEntity {
    private int userId;
    private String userName;
    private String password;
    private String userDate;
    private String userEmail;
    private Integer userCredit;
    private Integer userComments;
    private Integer userReports;

    @Id
    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "user_name", nullable = true, length = 45)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "password", nullable = true, length = 45)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "user_date", nullable = true, length = 45)
    public String getUserDate() {
        return userDate;
    }

    public void setUserDate(String userDate) {
        this.userDate = userDate;
    }

    @Basic
    @Column(name = "user_email", nullable = true, length = 45)
    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    @Basic
    @Column(name = "user_credit", nullable = true)
    public Integer getUserCredit() {
        return userCredit;
    }

    public void setUserCredit(Integer userCredit) {
        this.userCredit = userCredit;
    }

    @Basic
    @Column(name = "user_comments", nullable = true)
    public Integer getUserComments() {
        return userComments;
    }

    public void setUserComments(Integer userComments) {
        this.userComments = userComments;
    }

    @Basic
    @Column(name = "user_reports", nullable = true)
    public Integer getUserReports() {
        return userReports;
    }

    public void setUserReports(Integer userReports) {
        this.userReports = userReports;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TUserEntity that = (TUserEntity) o;

        if (userId != that.userId) return false;
        if (userName != null ? !userName.equals(that.userName) : that.userName != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;
        if (userDate != null ? !userDate.equals(that.userDate) : that.userDate != null) return false;
        if (userEmail != null ? !userEmail.equals(that.userEmail) : that.userEmail != null) return false;
        if (userCredit != null ? !userCredit.equals(that.userCredit) : that.userCredit != null) return false;
        if (userComments != null ? !userComments.equals(that.userComments) : that.userComments != null) return false;
        if (userReports != null ? !userReports.equals(that.userReports) : that.userReports != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = userId;
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (userDate != null ? userDate.hashCode() : 0);
        result = 31 * result + (userEmail != null ? userEmail.hashCode() : 0);
        result = 31 * result + (userCredit != null ? userCredit.hashCode() : 0);
        result = 31 * result + (userComments != null ? userComments.hashCode() : 0);
        result = 31 * result + (userReports != null ? userReports.hashCode() : 0);
        return result;
    }
}
