<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>Title</title>
</head>
<body background="img/bg.gif">

    <div id="happy-birthday-to-you-audio">
        <EMBED src="audio/happy-birthday.mp3" autostart="true" loop=20 width=0 height=0>
    </div>

    <div id="main-container" style="margin-left: auto; margin-right: auto; width: 960px;">
        <div id="content-1" style="margin-top: 50px; width: 700px; height: 200px; margin-left: auto; margin-right: auto;">
            <div style="background: url(img/shinning-star.gif) no-repeat 0px 0px; width:80px; height: 80px; float: left;"></div>
            <div style="background: url(img/shinning-star.gif) no-repeat 0px 0px; width:80px; height: 80px; float: right;"></div>
            <div style="background: url(img/eval.jpg) no-repeat 0px 0px;width:400px; height: 150px; margin-left: 150px;"></div>
        </div>

        <div class="express" style="color: bisque; text-align: left;">
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
                    &emsp;&emsp;宝贝, 咱们认识后你的第一个生日, 很想回来陪你一起过, 遗憾假期可能会安排不过来. 如果今天我不能回来当面跟你说一声生日快乐. 那我一定会在远方送上祝福.
                    希望你永远开心、快乐、幸福.
                    </p>
                </li>
            </ul>
            <div id="bottom-nav" style="color: bisque; margin-top: 50px;">
                <a href="#" onclick="javascript:Module.openPageInSelf('destiny.jsp');">
                    <img src="img/arrow.jpg" style="width: 100px; float: right; margin-left: 10px; margin-right: 300px;">
                </a>
                <span style="float: right; margin-top: 20px;">Take Time machine</span>
            </div>
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

            <!-- disable the viewing of source code -->
            window.onload = function() {
                document.onkeydown = function() {
                    var e = window.event || arguments[0];
                    //屏蔽F12
                    if(e.keyCode == 123) {
                        return false;
                        //屏蔽Ctrl+Shift+I
                    } else if((e.ctrlKey) && (e.shiftKey) && (e.keyCode == 73)) {
                        return false;
                        //屏蔽Shift+F10
                    } else if((e.shiftKey) && (e.keyCode == 121)){
                        return false;
                    }
                };
                //屏蔽右键单击
                document.oncontextmenu = function() {
                    return false;
                }
            }
        </script>

</body>
</html>