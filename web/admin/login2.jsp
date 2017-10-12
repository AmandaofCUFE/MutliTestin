<%@ page import="entity.TUserEntity" %>
<%--
  Created by IntelliJ IDEA.
  User: W  Sunshine
  Date: 2017/9/6
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp"/>
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="ShareReading"/>
<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="assets/css/amazeui.datatables.min.css"/>
<link rel="stylesheet" href="assets/css/app.css">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
<link href="assets/css/login.css" rel="stylesheet">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.form.js"></script>
<head>
    <title>登录</title>

    <title>login</title>
    <script>
        function login() {
            $.ajax({
                type: 'get', //GET
                url: '/login',
                async: false,    //或false,是否异步
                data: {
                    'userEmail':$("#userEmail").val(),
                    'password':$("#password").val(),
                },
                timeout: 5000,    //超时时间
                dataType: 'json',   //返回的数据格式：json/xml/html/script/jsonp/text

                success: function (data) {
                  var json = eval(data);
                       if(json.userid!= 0)
                           window.location.href = "firstpage.jsp";
                       //else window.location.href = "index.jsp";
                },
                error:function(data){
                    alert("哎呀出问题了！");
                }
            })
        }
    </script>
</head>
<body>
<div class="header">
    <div class="header1">
        <table >

            <tr>
                <td><img src="assets\img\logo.png"></td>
                <td><a href="index.jsp"></a></td>
            </tr>
        </table>
    </div>
</div>

<div class="am-g" >
    <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
        <div  class="div1"></div>

        <!--class="am-u-lg-6 am-u-md-8 am-u-sm-centered"-->
        <h2 >请登录</h2>
        <div  class="div2"></div>
        <form  method="get">
            <input type="text"  id="userEmail" name="userEmail" placeholder="请输入邮箱">
            <br>
            <div  class="div3"></div>
            <input type="password" id="password" name="password" placeholder="请输入密码">
            <br>
            <br>
            <div>
                <button type ="button" onclick="login()" >登录
                </button>
            </div>
            <div  class="div4"></div>

            <div>
                <a>忘记密码&nbsp&nbsp</a>
                <a>忘记会员名&nbsp&nbsp</a>
                <a href="register.jsp">立即注册</a>

            </div>

            <div  class="div5"></div>

        </form>


    </div>
    <div  class="div6"></div>
</div>


<div>
    <table  class="table1"><tr>
        <td><a>关于我们&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
        <td><a>联系我们&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
        <td><a>新浪微博&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
        <td><a>微信公众号</a></td>
    </tr></table></div>

</body>
</html>
