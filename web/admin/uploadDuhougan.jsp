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
<div class="main"><!--包含主要内容的大div，令背景颜色为白色-->


    <!--发表评论<!--发表评论--><!--发表评论--><!--发表评论--><!--发表评论-->
    <div class="div2">

        <h2>○上传读后感</h2>
        <form>
            <input type="text" id="reportTitle" name="reportTitle" placeholder="文章标题">

            <div class="div3"></div><!--白线-->

            <textarea rows="15" id="reportContent" name="reportContent" placeholder="读后感内容" ></textarea>

            <div  class="div4"></div><!--白线-->

            <button type ="button" onclick="addArticle(this);return false">提交</button>
        </form>

        <div class="div5">

            <img class="am-img-circle am-img-thumbnail" src="assets\img\海报2.jpg" width="20px" alt=""/>

            <div class="am-u-md-8"  >

                <form class="am-form" enctype="multipart/form-data" action="/fileUploadPage" method="post" >
                    <input type="file" id="reportPic" name="reportPic">
                    <p class="am-form-help">请选择要上传的图片</p>
                    <input type="submit" value = "add"/>
                </form>

            </div>
        </div>

    </div>

</div>
</div>
<script>
    function fileUpLoad() {
        var form=new FormData(document.getElementById('#user-pic'));
        $.ajax({
            url: '/fileUploadPage',
            type: 'POST', //GET
            async: false,    //或false,是否异步
            timeout: 5000,    //超时时
            contentType:'multipart/form-data;boundary=123',
            dataType: 'json',    //返回的数据格式：json/xml/html/script/jsonp/text
            success: function (data) {
            },
            error: function (xhr, textStatus) {
                alert("失败");
            },
            complete: function () {
            }
        })
    }
    function addArticle() {
        $.ajax({
            url: '/addArticle',
            type: 'GET', //GET
            async: true,    //或false,是否异步
            timeout: 5000,    //超时时间
            data: {
                'articleTitle':$("#articleTitle").val(),
                'articleAuthor':$("#articleAuthor").val(),
                'articleUrl':$("#articleUrl").val(),
            },
            dataType: 'json',    //返回的数据格式：json/xml/html/script/jsonp/text

            success: function (data) {
                window.location.href = "personalCenter.jsp"
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
