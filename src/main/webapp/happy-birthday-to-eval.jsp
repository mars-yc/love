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
        <EMBED src="audio/happy-birthday.mp3" autostart="true" loop="20" width=0 height=0>
    </div>

    <div id="main-container" style="margin-left: auto; margin-right: auto; width: 960px;">
        <div id="content-1" style="margin-top: 50px;">
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

        <div class="express" style="color: bisque; margin-top: 180px; text-align: left;">
            <ul>
                <li style="list-style-image: url(img/li-label.gif); margin-top: 100px;">
                    Light The Candles
                    <div id="content-2" style="margin-left: 0px; text-align: left; margin-top: 80px;">
                        <div id="happy-birthday-flash-div" style="margin-left: 100px;">
                            <object id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" height="450" width="650" border="0" classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000">
                                <param name="movie" value="flash/happy-birthday.swf?name=Eval">
                                <param name="quality" value="High">
                                <embed src="flash/happy-birthday.swf?name=Eval" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="650" height="450">
                            </object>
                        </div>
                    </div>
                </li>
                <li style="list-style-image: url(img/li-label.gif); margin-top: 100px">Catch The Blessing From Lesly</li>
            </ul>
        </div>


<%--        <div style="background: url(img/label.jpg) no-repeat 100px -808px;width:250px; height:135px; margin-top:10px;">
        </div>--%>
        <%-- 点燃生日的烛光，点燃幸福的希望;品尝生日的蛋糕，品尝快乐的味道;接受生日的祝福，接受祝愿的美好，愿快乐永久将你围绕，幸福的滋味你最知道 --%>


        <div class="express" style="color: bisque; margin-top: 80px; text-align: left;">
            <p>
                &emsp;&emsp;宝贝, 生日快乐！
            </p>
            <p>
                &emsp;&emsp;认识你之后你的第一个生日. 很想回来陪你一起渡过,但假期已经安排不过来,很想每天都见到你幸福的模样,虽然这次缺席了你的生日,但知道当你看到我给你
                做的简易贺卡,一定会很开心,记得要发几张你的靓照给你的果果.
            </p>
            <p>
                &emsp;&emsp;在我心里,你永远是那个集成熟与可爱于一身,汇美貌与智慧于一体的姑娘.
            </p>
            <br>
            <p>
                &emsp;&emsp;宝贝! 做我女朋友吧! 记不记得我说过,每一个阶段都应该有一个仪式,不一样的方式,可以让我们多年以后,依然记得当年的故事.
                我始终相信,美好生活是双手创造出来的. 幸福,就在路上不愿的地方. 你愿意与我携手出发吗? 看到时光机器没,就在脚下.
            </p>
            <p>
                &emsp;&emsp;Here we go!
            </p>
            <%--<p>
                &emsp;&emsp;Yesterday is history.Tomorrow is mystery.Today is a gift.That's why it is called present!
            </p>
            <p>
                &emsp;&emsp;看着这些漂亮的金鱼，有没有觉得，我们跟它们一样，在撞见彼此之前，徜徉在已被束缚的圈子里，自在而孤独。
                直到有天，因缘分而邂逅，继而心心相惜，再也不愿意放手
            </p>--%>
        </div>

        <div id="bottom-nav" style="color: bisque; margin-top: 700px;">
            <a href="#" onclick="javascript:Module.openPageInSelf('photos.jsp');">
                <img src="img/arrow.jpg" style="width: 100px; float: right; margin-left: 10px; margin-right: 300px;">
            </a>
            <span style="float: right; margin-top: 20px;">Take Time machine</span>
        </div>

        <%-- background --%>
        <div id="gold_fish_2" style="position:absolute; left:0; top:1000px; width:100%; height:1000px; z-index:1; color: bisque;">
            <div align="center">
                <embed src="flash/gold_fish_2.swf" width="100%" height="100%" wmode="transparent">
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
                var confirmMsg = "敢问皇后! 是否需要微臣快马加鞭通知陛下您已答应做他女朋友并准备登上时光机器?";
                var trueMsg = "喳!";
                var falseMsg = "皇后请恕罪! 奴才的那匹马已经急不可待,飞奔而去了…";
                var ret=confirm(confirmMsg);
                if(ret) {
                    alert(trueMsg);
                } else {
                    alert(falseMsg)
                }
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