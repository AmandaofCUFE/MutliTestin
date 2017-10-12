<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style>
    .divcss5{position:fixed;*posiposition:absolute;left:8%;top:35%}

</style>
<div class="divcss5">
    <div id="sidebar">
        <div >
            <ul>
                <%--<li><a href="usercenter.jsp">个人中心</a></li>--%>
                <br></br>

                <%--<li><a href="readinglist.jsp">我的阅读</a></li>--%>
                <%--<br></br>--%>
                <li><a href="uploadlist.jsp">文章上传</a></li>
                <br></br>
                <li><a href="emotion.jsp">读后感上传</a></li>
                <br></br>
                    <li><a href="collection.jsp">我的文章</a></li>
                    <br></br>
                    <li><a href="review.jsp">我的读后感</a></li>
                    <br></br>
                <%--<li><a href="comment.jsp">我的评论</a></li>--%>
            </ul>
        </div>
    </div>
</div>


