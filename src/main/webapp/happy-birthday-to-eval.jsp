<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>Title</title>
</head>
<body background="img/bg.gif" style="text-align: center;">

    <div id="happy-birthday-to-you-audio">
        <EMBED src="audio/happy-birthday.mp3" autostart="true" loop="-1" width=0 height=0>
    </div>

    <div id="main-container" style="margin-left: auto; margin-right: auto; width: 960px;">
        <div id="content-1" style="margin-top: 30px;">
            <div class="shinning-star" style="float: left;">
                <img height="96px" src="img/shinning-star.gif" width="73px" border="0">
            </div>
            <div id="receiver" style="float: left; margin-left: 130px;">
                <img src="img/eval.jpg">
            </div>
            <div class="shinning-star">
                <img height="96" src="img/shinning-star.gif" width="73" border="0">
            </div>
        </div>

        <div id="content-2" style="margin-left: 0px; text-align: left;">
            <div id="happy-birthday-flash-div" style="margin-left: 100px; margin-top: 100px;">
                <object id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" height="450" width="650" border="0" classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000">
                    <param name="movie" value="flash/happy-birthday.swf?name=Eval">
                    <param name="quality" value="High">
                    <embed src="flash/happy-birthday.swf?name=Eval" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="650" height="450">
                </object>
            </div>
        </div>

<%--        <div style="background: url(img/label.jpg) no-repeat 100px -808px;width:250px; height:135px; margin-top:10px;">
        </div>--%>

        <div id="bottom-nav" style="color: bisque; margin-top: 50px;">
            <a href="#" onclick="javascript:Module.openPageInSelf('first-sight.jsp');">
                <img src="img/arrow.jpg" style="width: 100px; float: right; margin-left: 10px; margin-right: 300px;">
            </a>
            <span style="float: right; margin-top: 20px;">Take Time machine</span>
        </div>

        <div id="express">

        </div>

        <%-- background --%>
        <%--<div id="gold_fish_2" style="position:relative; left:0; top:0; width:100%; height:100%; z-index:1; color: bisque;">
            <div align="center">
                slkskslksd
                <embed src="flash/gold_fish_2.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>--%>

    </div>

    <script type="application/javascript">
        if(window.Module == undefined) {
            Module = {};
        }
        Module = {
            ctx : '<%= ctx%>',
            openPageInSelf: function(link) {
                window.open(link, "_self");
            }
        };
    </script>
</body>
</html>