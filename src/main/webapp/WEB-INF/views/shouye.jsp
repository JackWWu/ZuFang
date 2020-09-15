<%--
  Created by IntelliJ IDEA.
  User: 任方杰
  Date: 2020/9/15
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <title></title>
    <style>
        body{
            margin: 0px;
            padding: 0px;
            text-align: center;
            position: relative;
        }
        #pic1{
            height: 40px;
            margin: 0% 3%;
            vertical-align: middle;
        }
        #btn1{
            vertical-align: middle;
            border: none;
            border-radius: 5px;
            background-color: grey;
        }
        a{
            text-decoration: none;
            color: white;
        }
        a:hover{
            cursor: pointer;
            color: orange;
        }
        ul li{
            list-style: none;
        }
        ul{
            display: inline-block;
            width: 70%;
        }
        .head{
            background: #666666;
            position: relative;
            width:100%;
            margin: 0px auto;
        }
        li{
            display: inline-block;
            margin-right: 2%;
        }
        #box1{
            border: 1px solid white;
            padding: 5px;
            border-radius: 3px;
        }
        .cust_list_box{
            border-radius: 5px;
            position: relative;
            background-color: #fff;
            margin-top: 4px;
            padding: 0px 0px;
            border: 1px solid #e4e4e4;
            position: absolute;
            top:60px;
            left: 385px;
            width: 65px;
            z-index: 100;
            display: none;
        }
        .cust_list_box a{
            color: black;
            font-size: 14px;
            text-align: center;
        }
        .cust_list_box a:hover{
            color: grey;
        }
        .cust_list_box ul{
            padding: 0px;
            margin: 0px;
        }
        .cust_list_box ul li{
            margin-top: 5px;
        }
        .mainbody{
            background: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(${pageContext.request.contextPath}/static/img/background-img.jpg);
            width: 100%;
            height: 600px ;
            position: relative;
            margin: 0px auto;
        }
        .title{
            position: absolute;
            font-size: 60px;
            top: 70px;
            left: 100px;
            color: #FFFFFF;
        }
        .dutytitle{
            position: absolute;
            font-size: 30px;
            top: 190px;
            left: 100px;
            color: #FFFFFF;
        }

        .mainbody a{
            text-decoration: none;
            color: white;
            font-size: 20px;
        }
        .mainbody ul li{
            list-style: none;
            margin-right: 20px;
            display: inline-block;
            float: left;
        }
        .mainbody a:hover{
            color: orange;
        }
        .mainbody ul{
            position: absolute;
            top: 330px;
            left: 65px;
        }
        .search{
            position: absolute;
            top: 380px;
            left: 100px;
            border: 0;
        }
        .search input{
            width: 600px;
            height: 60px;
            /* border: 2px solid grey; */
            border-right: none;
            font-size: 20px;
        }
        .btn1{
            position: relative;
            top: -3px;
            width: 140px;
            height: 60px;
            font-size: 14px;
            color: grey;
            background-color: white;
            border: 0;
            border: 1px solid black;
            border-right: 1px solid black;

        }
        .btn1 img{
            vertical-align: middle;
        }
        .btn2{
            position: relative;
            right: 0px;
            top: -1px;
            width: 100px;
            height: 58px;
            font-size: 14px;
            color: white;
            background-color: orange;
            border: 0;
            /* border: 2px solid orange; */
        }
        .middle{
            margin: 10px auto;
            width: 100%;
            height: 200px;
            background-color: #fff;
        }
        .middle ul{
            list-style-type: none;
            width: 100%;
        }
        .middle li{
            float: left;
            text-align: center;
            margin-right: 60px;
        }
        .middle img{
            width: 220px;
            height: 140px ;
            border-radius: 5px;
            margin-top: 25px;
            margin-right: 10px;
        }
        .middle img:hover{
            animation: dynamic 1s infinite;
        }
        @keyframes dynamic{
            0%{
                transform: scale(1,1)
            }
            50%{
                transform: scale(0.9,1.1)
            }
            100%{
                transform: scale(1,1)
            }
        }
        .controller{
            margin-left: 28px;
            position: relative;
        }
        .rent{
            border: 1px solid grey;
            border-radius: 4px;
            width: 160px;
            height: 80px;
            position: absolute;
            top: 140px;
            left:30px ;
            background-color: #fff;
            box-shadow:0px 0px 10px 0px rgba(0,0,0,0.5);
        }

        .rent h3{
            margin-bottom: 0px;
        }
        .rent span{
            color: grey;
        }
        .controller1{
            position: relative;
        }
        .service{
            border: 1px solid grey;
            border-radius: 4px;
            width: 160px;
            height: 80px;
            position: absolute;
            top: 140px;
            left:30px ;
            background-color: #fff;
            box-shadow:0px 0px 10px 0px rgba(0,0,0,0.5);
        }
        .service h3{
            margin-bottom: 0px;
        }
        .service span{
            color: grey;
        }
        .controller2{
            position: relative;
        }
        .life{
            border: 1px solid grey;
            border-radius: 4px;
            width: 160px;
            height: 80px;
            position: absolute;
            top: 140px;
            left:30px ;
            background-color: #fff;
            box-shadow:0px 0px 10px 0px rgba(0,0,0,0.5);
        }
        .life h3{
            margin-bottom: 0px;
        }
        .life span{
            color: grey;
        }
        .controller3{
            position: relative;
        }
        .host{
            border: 1px solid grey;
            border-radius: 4px;
            width: 160px;
            height: 80px;
            position: absolute;
            top: 140px;
            left:30px ;
            background-color: #fff;
            box-shadow:0px 0px 10px 0px rgba(0,0,0,0.5);
        }
        .host h3{
            margin-bottom: 0px;
        }
        .host span{
            color: grey;
        }
        .goodenv{
            width: 100%;
            height: 100px;
            /* border: 1px solid black; */
            margin-top: 50px;
        }
        .goodenv ul{
            margin: 0px;
            padding: 0px;

        }
        .goodenv li{
            margin: 0px;
            padding: 0px;
            list-style: none;
            display: inline-block;
            vertical-align: middle;
        }
        .goodenv h3{
            text-align: center;
            margin: 0px;
            color: grey;
        }
        .back{
            margin-top: 10px;
        }
        .surface{
            top: 1050px;
            left: 221.8px;
        }
        .surface p{
            color: white;
            font-size: 16px;
            text-align: center;
            margin-top: 20px;
        }
        .playContainer li { position: relative; float: left; border: 25px solid #404040; color: #404040; height: 0; width:0; -webkit-border-radius: 100%; -moz-border-radius: 100%; -o-border-radius: 100%; border-radius: 100%; margin: 0 20px; }
        .playContainer { position: relative; float: left;  padding: 20px; }
        .playContainer li { position: relative; float: left; border: 25px solid #404040; color: #404040; height: 0; width:0; -webkit-border-radius: 100%; -moz-border-radius: 100%; -o-border-radius: 100%; border-radius: 100%; margin: 0 20px; }
        .playContainer a { border-style: solid; text-indent: -9999px; position: absolute; top: -8px; left: -3px;  }

        .playBtn a { border-color: transparent transparent transparent #fff; border-width: 8px 0 8px 12px;  width: 0; height: 0; }
        .pauseBtn a { border-color: transparent white;  border-width: 0 6px; height: 15px; width: 6px; left: -9px; }
        .stopBtn a { border: 7px solid #fff; height: 0; width: 0; left: -7px; top: -7px;}
        .playContainer{
            position: absolute;
            width: 1243.6px;
            z-index: 1;
            top: 1300px;
            left: 465px;
        }
        .comprerent{
            width: 100%;
            height: 100px;
            /* border: 1px solid black; */
            margin-top: 20px;
        }
        .comprerent ul{
            margin: 0px;
            padding: 0px;
        }
        .comprerent li{
            margin: 0px;
            padding: 0px;
            list-style: none;
            display: inline-block;
            vertical-align: middle;
        }
        .comprerent h3{
            text-align: center;
            margin: 0px;
            color: grey;
        }
        .onepiece{
            position: relative;
            /* border: 1px solid grey; */
        }
        ul li{
            list-style: none;
        }
        .num ul{
            width: 100%;
        }
        .num li{
            /* display: inline-block; */
            font-size: 50px;
            color: grey;
            opacity: 0.5;
            /* margin-right: 265px; */
        }
        .ini1{
            position: absolute;
            top: -10px;
            left: 402px;
        }
        .ini2{
            position: absolute;
            top: -10px;
            left: 560px;
        }
        .ini3{
            position: absolute;
            top: -10px;
            left: 894px;
        }

        .first{
            margin-left: -20px;
        }
        .text li{
            display: inline-block;
            font-size: 30px;
            margin-right: 205px;
        }
        .second{
            margin-left: 142px;
        }

        .text li:nth-child(1){
            position: absolute;
            top: 26px;
            left: 58px;
        }
        .text li:nth-child(2){
            position: absolute;
            top: 26px;
            left: 525px;
        }
        .text li:nth-child(3){
            position: absolute;
            top: 26px;
            left: 860px;
        }
        .assimg{
            margin-top: 40px;
            text-align: right;
        }
        .assimg li{
            display: inline-block;
            display: none;
        }
        .assimg>li{
            text-align: right;
        }
        .text li:hover{
            cursor: pointer;
        }
        h4{
            color: grey;
        }
        .txt span{
            color: grey;
            margin-left: 20px;
        }
        .document li{
            display: none;
        }
        .txt{
            border: 1px solid black;
            position: absolute;
            width: 380px;
            height: 210px;
            left: -67px;
            box-shadow:0px 0px 10px 0px rgba(0,0,0,0.5);
        }
        .txt h3{
            margin-top: 20px;
            margin-left: 20px;
        }
        .txt h4{
            margin-left: 20px;
            margin-bottom: 20px;
        }
        .txt span:nth-child(5){
            margin-bottom: 20px;
        }
        .document{
            position: absolute;
            top: 1900px;
            left: 140px;
        }
        .box{
            height:400px ;
            width:100% ;
            /* background-color: #00cc66; */
            margin: 80px auto;
        }
        .container{
            width:270.2px ;
            height:200px ;
            background-color: #FFFF00;
            position: relative;
            overflow: hidden;/*隐藏溢出 超出的内容不显示*/
            float: left;
        }
        .container img{
            width: 270.2px;
            height: 200px ;
        }
        .container .mask{
            position: absolute;
            top: 50px;
            left: 100px;
            width:100px ;
            height: 100px;
            /* background-color: #9900ff; */
            border: 50px solid rgba(0,0,0,0.5);/* red green blue a:透明度*/
            box-sizing: border-box;
            border-radius: 50%;
            /* 覆盖到整个div */
            transform: scale(4);
            /*过渡*/
            transition: 2s;
            opacity: 0.6;
        }


        .container:hover .mask{
            border: 1px solid rgba(0,0,0,0.5);
        }
        .root a{
            text-decoration: none;
            color: black;
        }
        .floor1 li{
            display: inline-block;
            line-height: 60px;
            font-size: 20px;
            margin-right: 50px;
        }
        .floor1 li:nth-child(1){
            margin-left: -300px;
        }
        .floor3{
            background-color: grey;
            height: 130px;
        }
        .floor3 img{
            float: left;
        }
        .special a{
            color: #808080;
            font-size: 16px;
        }
    </style>
</head>
<body>
<!-- 顶部导航栏 -->
<div class="head">
    <img src="${pageContext.request.contextPath}/static/img/zuixinlogo.PNG" id="pic1" style="margin-left: 170px;margin-right: 0px; width: 180px;height: 40px;">
    <input type="button" id="btn1" value="南京" />
    <div class="cust_list_box">
        <ul>
            <li>
                <a href="#">北京</a>
            </li>
            <li>
                <a href="#">上海</a>
            </li>
            <li>
                <a href="#">深圳</a>
            </li>
            <li>
                <a href="#">杭州</a>
            </li>
            <li>
                <a href="#">南京</a>
            </li>
            <li>
                <a href="#">成都</a>
            </li>
            <li>
                <a href="#">武汉</a>
            </li>
            <li>
                <a href="#">广州</a>
            </li>
            <li>
                <a href="#">天津</a>
            </li>
        </ul>
    </div>
    <ul style="width: 800px; margin-left: 200px;">
        <li><a href="#">首页</a></li>
        <li><a href="zufang.html">租房</a></li>
        <li><a href="yizufuwu.html">服务</a></li>
        <li><a href="qiyuehui.html">企悦会</a></li>
        <li><a href="#">APP下载</a></li>
        <li id="box1" style="background-color: #666666;"><a href="chengweifangdong.html">成为房东</a></li>
        <li><span><a href="login.html">${sessionScope.user.userPhone}</a></span>&nbsp; <span style="color: white;">|</span>&nbsp;<span><a href="toOut">退出</a></span></li>
    </ul>
</div>
<!-- 主体背景页 -->
<div class="mainbody">
    <p class="title">品质租房选易租</p><br>
    <p class="dutytitle">8年, 9城, 近50万业主, 300万易租客的选择</p><br>
    <ul>
        <li><a href="#">全部</a></li>
        <li><a href="#">合租</a></li>
        <li><a href="#">整租</a></li>
    </ul>
    <div class="search">
        <form action="#" method="get">
            <input type="search" placeholder="请输入区域,地铁站,小区名开始找房" /><button class="btn1"><img src="${pageContext.request.contextPath}/static/img/地图.jpg" width="30px"
                                                                                             height="30px" />地图找房</button><button class="btn2">开始找房</button>
        </form>
    </div>
</div>
<!-- 中间部分 -->
<div class="middle">
    <ul style="padding-left: 200px;">
        <li class="controller">
            <img src="${pageContext.request.contextPath}/static/img/middle1.jpg" />
            <div class="rent">
                <h3>租房</h3>
                <span>合租/整租</span>
            </div>
        </li>
        <li class="controller1">
            <img src="${pageContext.request.contextPath}/static/img/middle2.jpg" />
            <div class="service">
                <h3>服务</h3>
                <span>保洁/搬家/维修</span>
            </div>
        </li>
        <li class="controller2">
            <img src="${pageContext.request.contextPath}/static/img/middle3.jpg" />
            <div class="life">
                <h3>生活</h3>
                <span>生活社区/全屋智能</span>
            </div>
        </li>
        <li class="controller3">
            <img src="${pageContext.request.contextPath}/static/img/middle4.jpg" />
            <div class="host">
                <h3>业主</h3>
                <span>出租/合作/房东</span>
            </div>
        </li>
    </ul>
</div>
<!-- 优质租住环境 -->
<div class="goodenv">
    <ul>
        <li><img src="${pageContext.request.contextPath}/static/img/左图标.png" width="40px" height="40px" /></li>
        <li>
            <h2>优质租住环境</h2>
        </li>
        <li><img src="${pageContext.request.contextPath}/static/img/右图标.png" width="40px" height="40px" /></li>
    </ul>
    <h3>/带来全新环保体验/</h3>
</div>
<!-- 图片合并 -->
<div class="back" style="position:relative;z-index:1;top:100px;left:20px;">
    <img src="${pageContext.request.contextPath}/static/img/睡觉.jpg" width="100%" />
</div>
<div class="surface" style="position:absolute;z-index:2; left: 350px;">
    <img src="https://webimg.ziroom.com/c26467e3-ba7f-497e-94b9-02e48088becc.png" width="800px" />
    <p>优于国标E1级板材&nbsp;|&nbsp;环保认证装修材料&nbsp;|&nbsp;41道关键工序&nbsp;|&nbsp;空气密闭检测&nbsp;|&nbsp;空置30天入住</p>
</div>

<section class="playContainer" style="padding-left: 140px;">
    <li class="playBtn">
        <a href="#" title="start">Start</a>
    </li>
    <li class="pauseBtn">
        <a href="#" title="pause">Pause</a>
    </li>
    <li class="stopBtn">
        <a href="#" title="stop">Stop</a>
</section>
<!-- 全面租住服务 -->
<div class="comprerent">
    <ul>
        <li><img src="${pageContext.request.contextPath}/static/img/左图标.png" width="40px" height="40px" /></li>
        <li>
            <h2>全面租住服务</h2>
        </li>
        <li><img src="${pageContext.request.contextPath}/static/img/右图标.png" width="40px" height="40px" /></li>
    </ul>
    <h3>/简化日常繁琐生活/</h3>
</div>
<!-- 手动轮播图 -->
<div class="onepiece">
    <ul class="num">
        <li class="first"><span class="ini1">01</span></li>
        <li><span class="ini2" style="margin-left: 165px;">02</span></li>
        <li><span class="ini3" style="margin-left: 175px;">03</span></li>
    </ul>
    <ul class="text">
        <li class="second"><span style="margin-left: 170px;">易租保洁</span></li>
        <li><span style="margin-left: 170px;">易租搬家</span></li>
        <li><span style="margin-left: 180px;">易租家修</span></li>
    </ul>
    <ul class="assimg">
        <li style="display: block;"><img src="${pageContext.request.contextPath}/static/img/lun1.jpg" width="800px" height="600px" /></li>
        <li><img src="${pageContext.request.contextPath}/static/img/lun2.jpg" width="800px" height="600px" /></li>
        <li><img src="${pageContext.request.contextPath}/static/img/lun3.jpg" width="800px" height="600px" /></li>
    </ul>
</div>
<ul class="document">
    <li style="display: block;">
        <div class="txt">
            <h3>易租保洁</h3>
            <h4>下一刻，明亮如新</h4>
            <span>易租旗下专业保洁品牌，成立八年至今，形成</span><br>
            <span>专属清洁服务标准——人员严选，工具放</span><br>
            <span>心，流程规范。为用户提供日常保洁，玻璃清</span><br>
            <span>洁等多样保洁产品，持续为市场提供高品质保</span><br>
            <span>洁服务。</span>
        </div>
    </li>
    <li>
        <div class="txt">
            <h3>易租搬家</h3>
            <h4>每一次搬家都珍贵</h4>
            <span>自2014年上线起，始终坚持：每一项服务标</span><br>
            <span>准清晰明确，每个物件精心打包安放。成立4</span><br>
            <span>年来，打磨和研发多项产品满足用户个性化搬</span><br>
            <span>家需求，目前已覆盖北京，上海，天津等9个</span><br>
            <span>城市。</span>
        </div>
    </li>
    <li>
        <div class="txt">
            <h3>易租家修</h3>
            <h4>用心守护，美好如初</h4>
            <span>易租旗下O2O生活服务产品，旨在为客户提</span><br>
            <span>供“专业便捷,安全透明”的全能维修。月交付</span><br>
            <span>15万+，拥有超过1400人的易租巧匠，覆盖装</span><br>
            <span>修后市场，家电售后全生态，率先实现标准化</span><br>
            <span>和数据化管理，让客户无后顾之忧。</span>
        </div>
    </li>
</ul>
<!-- 租住体验 -->
<div class="comprerent">
    <ul>
        <li><img src="${pageContext.request.contextPath}/static/img/左图标.png" width="40px" height="40px" /></li>
        <li>
            <h2>丰富租住体验</h2>
        </li>
        <li><img src="${pageContext.request.contextPath}/static/img/右图标.png" width="40px" height="40px" /></li>
    </ul>
    <h3>/聚合有趣青年玩转城市生活/</h3>
</div>
<div class="box" style="margin-left: 80px;">
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p1.jpg" />
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p2.jpg" />
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p3.jpg" />
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p4.jpg" />
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p9.jpg" />
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p5.jpg" />
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p6.jpg" />
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p7.jpg" />
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p8.jpg" />
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/static/img/p10.jpg" />
        <div class="mask"></div>
    </div>
</div>
<!-- 尾部 -->
<div class="root">
    <hr>
    <ul class="floor1" style="margin-top: 0px;margin-bottom: 0px;">
        <li style="margin-left: -300px;"><a href="#" style="font-weight: 300;font-size: 16px;">联系易租</a></li>
        <li><a href="#" style="font-weight: 300;font-size: 16px;">加入我们</a></li>
        <li><a href="#" style="font-weight: 300;font-size: 16px;">易租采购</a></li>
        <li><a href="#" style="font-weight: 300;font-size: 16px;">隐私政策</a></li>
        <li><a href="#" style="font-weight: 300;font-size: 16px;">网站地图</a></li>
    </ul>
    <hr>
    <ul class="floor1" style="margin-top: 0px;margin-bottom: 0px;">
        <li><a href="#" style="font-weight: 300;font-size: 16px;">友情链接</a></li>
        <li><a href="#" style="font-weight: 300;font-size: 16px;">热门区域</a></li>
        <li><a href="#" style="font-weight: 300;font-size: 16px;">地铁周边</a></li>
        <li><a href="#" style="font-weight: 300;font-size: 16px;">热门城市</a></li>
        <li><a href="#" style="font-weight: 300;font-size: 16px;">最新房源</a></li>
    </ul>
    <ul class="floor1 special" style="margin-top: 0px;margin-bottom: 20px; height: 40px;padding-left: 0px;">
        <li><a href="#" style="margin-left: -50px;">南京房产网</a></li>
        <li><a href="#">南京房产</a></li>
        <li><a href="#">大连房产网</a></li>
        <li><a href="#">大连房产</a></li>
    </ul>
    <div class="floor3" style="background-color: #FAFAFA;">
        <img src="${pageContext.request.contextPath}/static/img/shouyeduyoulogo.PNG" width="210px" height="60px" style="margin-left: 330px;margin-top: 40px;" />
        <div class="floor2" style="float: left;">
            <p style="width: 490px;font-weight: 300;font-size: 16px;">天津创想信息科技有限公司Copyright&copy;2020 ziroom.com版权所有</p>
            <p style="width: 260px;font-weight: 300;font-size: 16px;">北京公安网备 11010502035891号-2</p>
            <p style="width: 630px;font-weight: 300;font-size: 16px;">违法和不良信息举报电话：400100111-9 违法和不良信息举报邮箱：jubao@ziroom.com</p>
        </div>
    </div>
</div>
</body>
<script src="js/jquery-3.5.1.min.js"></script>

<script>
    var index = 0;
    $(function() {
        $("#btn1").mouseover(function() {
            $(".cust_list_box").css("display", "block");
        })
        $("#btn1").mouseout(function() {
            $(".cust_list_box").css("display", "none");
        })
        $(".text li").click(function() {
            // $(this).index();
            $(".assimg li").eq($(this).index()).show().siblings().hide();
            $(".document li").eq($(this).index()).show().siblings().hide();
        })
    })
</script>
</html>
