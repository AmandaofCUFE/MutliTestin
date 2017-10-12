<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>LOG-IN | ShareReading</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="icon" type="image/png" href="{{assets}}i/favicon.png">

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="{{assets}}i/app-icon72x72@2x.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">

    <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
    <!--
    <link rel="canonical" href="http://www.example.com/">
    -->

    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/login1.css">
</head>
<body>
<header>
    <div class="log-header">
        <h1><a href="/">ShareReading</a> </h1>
    </div>
    <div class="log-re">
        <button type="button" class="am-btn am-btn-default am-radius log-button" onclick="javascrtpt:window.location.href='./login.jsp'">登 录</button>
    </div>
</header>

<div class="log">
    <div class="am-g">
        <div class="am-u-lg-3 am-u-md-6 am-u-sm-8 am-u-sm-centered log-content">
            <h1 class="log-title am-animation-slide-top">ShareReading</h1>
            <br>
            <form class="am-form" id="log-form">
                <div class="am-input-group am-radius am-animation-slide-left">
                    <input  id="userEmail" name="userEmail" type="email" id="doc-vld-email-2-1" class="am-radius" data-validation-message="请输入正确邮箱地址" placeholder="邮箱" required/>
                    <span class="am-input-group-label log-icon am-radius"><i class="am-icon-user am-icon-sm am-icon-fw"></i></span>
                </div>
                <br>
                <div class="am-input-group am-animation-slide-left log-animation-delay">
                    <input type="text" id="userName" name="userName" class="am-form-field am-radius log-input" placeholder="用户名" minlength="11" required>
                    <span class="am-input-group-label log-icon am-radius"><i class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
                </div>
                <br>
                <div class="am-input-group am-animation-slide-left log-animation-delay">
                    <input type="password" id="password" name="password" class="am-form-field am-radius log-input" placeholder="密码" minlength="11" required>
                    <span class="am-input-group-label log-icon am-radius"><i class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
                </div>
                <!-- <br>
                <div class="am-input-group am-animation-slide-left log-animation-delay-a">
                  <input type="password" id="repassword" name="repassword" data-equal-to="#log-password" class="am-form-field am-radius log-input" placeholder="确认密码" data-validation-message="请确认密码一致" required>
                  <span class="am-input-group-label log-icon am-radius"><i class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
                </div> -->
                <br>
                <button type ="button" onclick="register()"value="注册"class="am-btn am-btn-primary am-btn-block am-btn-lg am-radius am-animation-slide-bottom log-animation-delay-b">注 册</button>
                <!-- <button type ="button" onclick="register()">注册</button> -->
                <br>
                <div class="am-btn-group am-animation-slide-bottom log-animation-delay-b">
                    <p>支持第三方注册</p>
                    <a href="#" class="am-btn am-btn-primary am-btn-sm"><i class="am-icon-github am-icon-sm"></i> Wechat</a>
                    <a href="#" class="am-btn am-btn-success am-btn-sm"><i class="am-icon-google-plus-square am-icon-sm"></i> QQ</a>
                    <a href="#" class="am-btn am-btn-primary am-btn-sm"><i class="am-icon-stack-overflow am-icon-sm"></i> MicroBlog</a>
                </div>
            </form>
        </div>
    </div>
    <footer class="log-footer">
        © 2014 AllMobilize, Inc. Licensed under MIT license.
    </footer>
</div>
<script>
    function register() {
        alert(123);
        $.ajax({
            type: 'get', //GET
            url: '/register',
            async: false,    //或false,是否异步
            data: {
                'userName':$("#userName").val(),
                'userEmail':$("#userEmail").val(),
                'password':$("#password").val(),
            },
            timeout: 5000,    //超时时间
            dataType: 'json',   //返回的数据格式：json/xml/html/script/jsonp/text

            success: function (data) {
                var json = eval(data);
                console.log(json);
                alert("success")
                if (json!=null){
                    window.location.href = "login.jsp"
                }
                else window.location.href = "register.jsp";
            },
            error: function (xhr, textStatus) {
                alert("失败");
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
<script src="assets/js/app.js"></script>
</body>
</html>