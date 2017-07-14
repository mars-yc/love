<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%= ctx%>/css/style1.css">
    <link rel="stylesheet" href="<%= ctx%>/css/common.css">
</head>
<body class="frame-bd-c-1">

    <%--<div id="happy-birthday-to-you-audio">
        <EMBED src="audio/happy-birthday.mp3" autostart="true" loop=20 width=0 height=0>
    </div>--%>

    <div class="frame-main-container center">
        <div id="div-recipient" class="center">
            <div class="shining-star left-float"></div>
            <div class="shining-star right-float"></div>
            <div class="eval"></div>
        </div>

        <%--<div class="express" style="color: bisque; text-align: left;font-family: 'Times New Roman',Times,serif;font-size:18px;">--%>
        <div class="express" style="color: bisque; text-align: left;font-family: '叶根友毛笔行书2.0版';font-size:18px;">
            <ul>
                <li style="list-style-image: url(img/li-label.gif);">
                    Light the candle and make a wish
                    <div style="margin-left: 0px; margin-top: 50px;">
                        <div style="width: 700px; margin-left: 100px;">
                            <object codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" height="450" width="650" border="0" classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000">
                                <param name="movie" value="flash/happy-birthday.swf?name=Eval">
                                <param name="quality" value="High">
                                <embed src="flash/happy-birthday.swf?name=Eval" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="650" height="450">
                                <%--<embed src="flash/cake.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="650" height="450">--%>
                            </object>
                        </div>
                    </div>
                </li>
                <li style="list-style-image: url(img/li-label.gif); margin-top: 50px;">
                    From Lesly
                    <br><br>
                    <p>
                        &emsp;&emsp;宝贝
                    </p>
                    &emsp;&emsp;认识以来, 你的第一个生日, 很想回来陪你一起过, 遗憾假期可能会安排不过来. 如果今天我不能回来当面跟你说一声生日快乐. 那我一定会在远方送上祝福.
                    希望你永远开心、快乐、幸福.
                </li>
            </ul>
            <div id="bottom-nav" style="color: bisque; margin-top: 50px;">
                <a href="#" onclick="javascript:Module.openPageInSelf('destiny.jsp');">
                    <img src="img/arrow.jpg" style="width: 100px; float: right; margin-left: 10px; margin-right: 300px;">
                </a>
                <span style="float: right; margin-top: 20px;">Take Time machine</span>
            </div>
        </div>
    </div>

</body>
</html>