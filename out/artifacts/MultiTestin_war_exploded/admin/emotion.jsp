<%--
  Created by IntelliJ IDEA.
  User: sdwel
  Date: 2017/10/5
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>article with sidebar  | ShareReading</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
</head>

<body id="blog-article-sidebar">
<div class="am-breadcrumb">

    <!-- 头部菜单 -->
    <jsp:include page="header.jsp" />
</div>
<div class="left-sidebar">

    <!-- 侧边栏 -->
    <jsp:include page="usercenterleft.jsp" />
</div>

<div  class="am-g am-g-fixed blog-fixed blog-content">
    <div class="am-input-group">
        <span class="am-input-group-label">文章题目</span>
        <input type="text" id="articleTitle" name="articleTitle" class="am-form-field">
        <%--<span class="am-input-group-label">.00</span>--%>
    </div>
    <div class="am-input-group">
        <span class="am-input-group-label">文章作者</span>
        <input type="text" id="articleAuthor" name="articleAuthor" class="am-form-field">
        <%--<span class="am-input-group-label">.00</span>--%>
    </div>
    <div class="am-input-group">
        <span class="am-input-group-label">文章地址</span>
        <input type="text" id="articleUrl" name="articleUrl"class="am-form-field">
        <%--<span class="am-input-group-label">.00</span>--%>
    </div>
    <div class="am-form-group">
        <span class="am-input-group-label">读后感</span>
        <input type="text"  id="articleReview" name="articleReview"class="am-form-field">

    </div>

    <p><button type="button" class="am-btn am-btn-secondary am-round" onclick="addReview()">提交</button></p>
    <div >
        <table style="display:none" id = "addArticle" name = "addArticle" class="am-table am-table-bordered am-table-centered">
            <thead>
            <tr>
                <th>文章题目</th>
                <th>作者</th>
                <th>文章地址</th>

            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>


</div>
<script>

    function addReview() {
        $.ajax({
            url: '/addReview',
            type: 'post', //GET
            async: true,    //或false,是否异步
            timeout: 5000,    //超时时间
            data: {
                'articleTitle':$("#articleTitle").val(),
                'articleAuthor':$("#articleAuthor").val(),
                'articleUrl':$("#articleUrl").val(),
                'articleReview':$("#articleUrl").val(),
            },
            dataType: 'json',    //返回的数据格式：json/xml/html/script/jsonp/text

            success: function (data) {
                alert("success")
//                var json = eval(data);
//                console.log(json);
//                $('#addArticle tbody').after("<tr><td>"+json.articleTitle+"</td><td>&nbsp;&nbsp;"+json.articleAuthor+"</td><td>&nbsp;&nbsp;"+json.articleUrl+"</td></tr>\n")

            },
            error: function (xhr, textStatus) {
                alert("上传读后感失败");
            },
        })}
</script>






<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/header.js"></script>
</body>
</html>
