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
        <EMBED src="audio/footprint-of-rain.mp3" autostart="true" loop=20 width=0 height=0>
    </div>

    <div id="main-container" style="margin-left: auto; margin-right: auto; width: 960px;">

        <div id="bottom-nav" style="color: bisque; margin-top: 700px;">
            <a href="#" onclick="javascript:Module.openPageInSelf('photos.jsp');">
                <img src="img/arrow.jpg" style="width: 100px; float: right; margin-left: 10px; margin-right: 300px;">
            </a>
            <span style="float: right; margin-top: 20px;">View The Photo Wall</span>
        </div>

        <div id="flash-swan" style="position:relative; right:0; top:1000px; width:60%; height:500px; z-index:-1; color: bisque;">
            <div align="center">
                <embed src="flash/swan.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>

        <%-- background --%>
        <div id="flash-gold-fish-2" style="position:relative; left:0; top:1400px; width:100%; height:1000px; z-index:1; color: bisque;">
            <div align="center">
                <embed src="flash/gold_fish_2.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>

        <div id="flash-bamboo" style="position:relative; left:0; top:3400px; width:100%; height:1000px; z-index:1; color: bisque;">
            <div align="center">
                <embed src="flash/bamboo.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>
        <div id="flash-moon" style="position:relative; left:0; top:3400px; width:100%; height:1000px; z-index:2; color: bisque;">
            <div align="center">
                <embed src="flash/moon.swf" width="100%" height="100%" wmode="transparent">
            </div>
        </div>
        <div id="flash-cat" style="position:relative; right:200px; top:0px; width:30%; height:200px; z-index:3; color: bisque;">
            <div align="center">
                <embed src="flash/cat.swf" width="100%" height="100%" wmode="transparent">
            </div>
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