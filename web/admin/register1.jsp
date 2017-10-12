<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>register</title>
<meta name="description" content="这是一个注册页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="./assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="./assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="./assets/css/amazeui.min.css" />
<link rel="stylesheet" href="./assets/css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="./assets/css/app.css">
    <link rel="stylesheet" href="./assets/css/register.css">
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.form.js"></script>

    <title>register</title>


</head>
<body style="">

 <div class="header">
    <div class="header1">
        <table >

            <tr>
                <td><img src="assets\img\未标题-1.png"></td>
                <td><a href="index.jsp">&nbsp&nbsp&nbsp&nbsp首页&nbsp&nbsp&nbsp&nbsp</a></td>

            </tr>
        </table>
    </div>
 </div>

 <div class="am-g" >
    <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
        <div class="div1">
        </div>
        <h2 >请注册</h2>
        <div  class="div2">
        </div>


   <form class="" method="get">

    <input type="text" class="" id="userName" name="userName" placeholder="请输入用户名" >
    <br>

       <input type="text" class="" id="userEmail" name="userEmail" placeholder="请输入邮箱">
       <br>

       <input type="password" class="" id="password" name="password" placeholder="请输入密码" >
    <br>




    <button type ="button" onclick="register()">注册</button>

   </form>
        <div  class="div3">

        </div>

        <div>
            <p>已有账号？<a href="login.jsp">请登录</a></p>

         <div  class="div4">
         </div>
        </div>
    </div>
 </div>


<div class="div5"></div>
<div>
    <table ><tr>
        <td><a>关于我们&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
        <td><a>联系我们&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
        <td><a>新浪微博&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
        <td><a>微信公众号</a></td>
    </tr></table></div>
<div class="div6"></div>
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
</body>
</html>
