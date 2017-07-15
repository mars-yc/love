<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>遇见</title>
    <link rel="stylesheet" href="<%= ctx%>/css/style1.css">
    <link rel="stylesheet" href="<%= ctx%>/css/common.css">
    <script src="<%= ctx%>/js/jquery-2.1.1.js"></script>
    <script src="<%= ctx%>/js/main.js"></script>
</head>
<body background="img/bg.gif" style="text-align: center;">

    <div id="happy-birthday-to-you-audio">
        <EMBED src="audio/footprint-of-rain.mp3" autostart="true" loop=20 width=0 height=0>
    </div>

    <div id="main-container" style="margin-left: auto; margin-right: auto; width: 100%  ; color: #ffffff;">

        <h1>First Sight</h1>

        <div id="piano" style="position:relative; right:0; top:10px; width:60%; height:500px; z-index:-1; color: bisque;">
            <div align="center">
                <embed src="flash/piano.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>

        <br>
        <br>

        <p style="width: 600px; text-align: left;">
            &emsp;&emsp;相逢, 是一件很神奇的事. 而更神奇的, 是你那么爽快地答应让我带你
        </p>

        <div style="width: 500px; height: 600px; background: url(chat/first-sight.png) no-repeat 0px 0px; margin-left: auto; margin-right: auto;">
        </div>

        <div id="flash-bamboo" style="position:absolute; left:0; top:400px; width:100%; height:1000px; z-index:-1; color: bisque;">
            <div align="center">
                <embed src="flash/bamboo.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>

        <p style="width: 600px; text-align: left;">
            &emsp;&emsp;而后, 故事开始
        </p>

        <div id="flash-swan" style="position:absolute; right:0; top:1000px; width:100%; height:400px; z-index:1; color: bisque;">
            <div align="left" style="height: 100%;">
                <embed src="flash/swan.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>

        <div style="width: 500px; height: 600px; background: url(chat/guoguo.png) no-repeat 0px 0px; margin-left: auto; margin-right: auto;">
        </div>

        <div id="flash-gold-fish-2" style="position:absolute; left:0; top:1400px; width:100%; height:1000px; z-index:1; color: bisque;">
            <div align="center" style="height: 100%">
                <embed src="flash/gold_fish_2.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>

        <div style="width: 500px; height: 600px; background: url(chat/xiaoguozi.png) no-repeat 0px 0px; margin-left: auto; margin-right: auto;">
        </div>

        <div style="width: 500px; height: 600px; background: url(chat/honey.png) no-repeat 0px 0px; margin-left: auto; margin-right: auto;">
        </div>


        <div id="flash-moon" style="position:relative; left:0; top:0px; width:100%; height:700px; z-index:2; color: bisque;">
            <div align="center">
                <embed src="flash/moon.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>
        <div id="flash-cat" style="position:relative; left:30%; top: -100px; width:30%; height:200px; z-index:3; color: bisque;">
            <div align="center">
                <embed src="flash/cat.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>
        <div id="bottom-nav" style="color: bisque; margin-top: 0px; margin-right: 20%;">
            <a href="#" onclick="javascript:Schedule.openPageInSelf('photos.jsp');">
                <img src="img/arrow.jpg" style="width: 100px; float: right; margin-right: 20%;">
            </a>
            <span style="float: right; margin-top: 20px;">View The Photo Wall</span>
        </div>

    </div>

</body>
</html>