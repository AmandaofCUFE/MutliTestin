<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
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

<body id="blog-article-sidebar" onload="personalData();">
<div class="am-breadcrumb">

    <!-- 头部菜单 -->
    <jsp:include page="header.jsp" />
</div>
<div class="left-sidebar">

    <!-- 侧边栏 -->
    <jsp:include page="usercenterleft.jsp" />
</div>
<hr>
<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed blog-content">
    <div class="am-u-md-8 am-u-sm-12">
        <article class="am-article blog-article-p">
            <div class="am-article-hd">
                <h1 class="am-article-title blog-text-center">About Me</h1>
                <p class="am-article-meta blog-text-center">

                </p>
            </div>
            <div class="am-article-bd">
                <%--<img src="assets/img/f161.jpg" alt="" class="blog-entry-img blog-article-margin">--%>


                <h1>我最喜欢：</h1>
                <p>我遇见了你，你一直觉得自己不够美好，充满惊慌与卑微，但是，你即使那样害怕，却守在我的身后，不曾后退。人们总是崇拜英雄，惊喜与他们随时随地的光芒，但是最真实的事情永远是我们都会恐惧都会失败，有时受尽打击，又是无能为力。你说我是英雄，其实我不敢告诉你，如果不是你，你傻傻地倔强地站在那里，我一回头就能看见你，那么，或许，我早就做了命运的逃兵。<br><br>
                    红衣佳人白衣友，朝与同歌暮同酒，世人谓我恋长安，其实只恋长安某。 ——殊同 <br>

                    水银泻地的时候，忧愁穿过墙壁，又和着嘶哑的音乐，使我羞惭、灰心。整个夏季，仿佛一场，没有主题的游戏。 ——赵野 <br>

                    我感到自己仿佛变得蔚蓝，变得无边无际，眼睛和指尖上，栖息着无数的星辰。 ——马林·索雷斯库 <br>

                    手中的书页犹如薄薄的剃刀片白亮亮闪着寒光。在凌晨四时寂寞的时刻里，我可以听到孤独之根正一点点伸长的声音。 ——村上春树 <br>

                    你的明眸是映现我灵魂颤动的湖，我那成群结队的梦想，为寻求解脱，而纷纷投入你这秋波深处。 ——波德莱尔  <br>

                    当我们只剩下虚无，唯有沉默的太阳够好，是你的静寂，是无声的声音。 ——佩索阿
                </p>
                </p>
            </div>
        </article>

        <div class="am-g blog-article-widget blog-article-margin">
            <%--<div class="am-u-lg-4 am-u-md-5 am-u-sm-7 am-u-sm-centered blog-text-center">--%>
                <%--<span class="am-icon-tags"> &nbsp;</span><a href="#">标签</a> , <a href="#">TAG</a> , <a href="#">啦啦</a>--%>
                <%--<hr>--%>
                <%--<a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>--%>
                <%--<a href=""><span class="am-icon-wechat am-icon-fw blog-icon"></span></a>--%>
                <%--<a href=""><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>--%>
            <%--</div>--%>
        </div>

        <hr>
        <div class="am-article-bd am-g blog-author blog-article-margin">
            <div class="am-u-sm-3 am-u-md-3 am-u-lg-2">
                <img src="assets/img/f15.jpg" alt="" class="blog-author-img am-circle">
            </div>
            <div class="am-u-sm-9 am-u-md-9 am-u-lg-10">
                <h3><span>作者 &nbsp;: &nbsp;</span><span class="blog-color">QiaoYu</span></h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
        </div>
        <hr>
        <ul class="am-pagination blog-article-margin">
            <li class="am-pagination-prev"><a href="#" class="">&laquo; 一切的回顾</a></li>
            <li class="am-pagination-next"><a href="">不远的未来 &raquo;</a></li>
        </ul>

        <hr>

        <form class="am-form am-g">
            <h3 class="blog-comment">评论</h3>
            <fieldset>
                <div class="am-form-group am-u-sm-4 blog-clear-left">
                    <input type="text" class="" placeholder="名字">
                </div>
                <div class="am-form-group am-u-sm-4">
                    <input type="email" class="" placeholder="邮箱">
                </div>

                <div class="am-form-group am-u-sm-4 blog-clear-right">
                    <input type="password" class="" placeholder="网站">
                </div>

                <div class="am-form-group">
                    <textarea class="" rows="5" placeholder="一字千金"></textarea>
                </div>

                <p><button type="submit" class="am-btn am-btn-default">发表评论</button></p>
            </fieldset>
        </form>

        <hr>
    </div>

    <div class=" am-article-bd am-u-md-4 am-u-sm-12 blog-sidebar">
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-text-center blog-title"><span>About ME</span></h2>
            <img src="assets/img/f161.jpg" alt="" class="blog-entry-img blog-article-margin">

            <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                <div class="am-g am-margin-top">
                    <table id = "personalData" name = "personalData" >

                    </table>
                </div>
            </div>
            <p>
            <h2 class="blog-text-center blog-title"><span>个性签名</span></h2>
            </p><p>我不想成为一个庸俗的人。十年百年后，当我们死去，质疑我们的人同样死去，后人看到的是裹足不前、原地打转的你，还是一直奔跑、走到远方的我？</p>
        </div>
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-text-center blog-title"><span>Contact ME</span></h2>
            <p>
                <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                <a href=""><span class="am-icon-github am-icon-fw blog-icon"></span></a>
                <a href=""><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
                <a href=""><span class="am-icon-reddit am-icon-fw blog-icon"></span></a>
                <a href=""><span class="am-icon-weixin am-icon-fw blog-icon"></span></a>
            </p>
        </div>
        <div class="blog-clear-margin blog-sidebar-widget blog-bor am-g ">
            <h2 class="blog-title"><span>TAG cloud</span></h2>
            <div class="am-u-sm-12 blog-clear-padding">
                <a href="" class="blog-tag">漂亮</a>
                <a href="" class="blog-tag">美丽</a>
                <a href="" class="blog-tag">端庄</a>
                <a href="" class="blog-tag">大方</a>
                <a href="" class="blog-tag">文艺</a>
                <a href="" class="blog-tag">学霸</a>
            </div>
        </div>
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-title"><span>么么哒</span></h2>
            <ul class="am-list">
                <li><a href="#">每个人都有一个死角， 自己走不出来，别人也闯不进去。</a></li>
                <li><a href="#">我把最深沉的秘密放在那里。</a></li>
                <li><a href="#">你不懂我，我不怪你。</a></li>
                <li><a href="#">每个人都有一道伤口， 或深或浅，盖上布，以为不存在。</a></li>
            </ul>
        </div>

    </div>
</div>
<!-- content end -->


<div class="am-breadcrumb">

    <!-- 底部文字 -->
    <jsp:include page="footer.jsp" />
</div>
<script>
    function personalData() {
        //alert("我的个人信息");
        $.ajax({
            type: 'get', //GET
            url: '/personalData',
            async: false,    //或false,是否异步
            data: {},
            timeout: 5000,    //超时时间
            dataType: 'json',   //返回的数据格式：json/xml/html/script/jsonp/text

            success: function (data) {
                var json = eval(data);
                console.log(json);
                $('#personalData').append("<tr><th class=\"am-text-middle\">用户名</th><th class=\"am-text-middle\">邮箱</th><th class=\"am-text-middle\">注册时间</th></tr> ")
                $('#personalData').append("<tr><td>"+json.userName+"</td><td>&nbsp;&nbsp;"+json.userEmail+"</td><td>&nbsp;&nbsp;"+json.userDate+"</td></tr>")

            },
            error:function(data){
                alert("personData失败！");
            }
        })
    }
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