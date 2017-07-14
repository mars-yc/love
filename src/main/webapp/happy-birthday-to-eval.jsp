<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>Lesly and Eval</title>
    <link rel="stylesheet" href="<%= ctx%>/css/style1.css">
    <link rel="stylesheet" href="<%= ctx%>/css/common.css">
    <link rel="stylesheet" href="<%= ctx%>/css/reveal-it.css">
    <script src="<%= ctx%>/js/jquery-2.1.1.js"></script>
    <script src="<%= ctx%>/js/reveal-it.js"></script>
    <script src="<%= ctx%>/js/main.js"></script>
</head>
<body class="frame-bd-c-1">

    <div id="audio"></div>

    <div class="frame-main-container center">

        <div id="frame-divs-container" style="color: bisque; text-align: left;font-family: '叶根友毛笔行书2.0版';font-size:18px;">

            <div class="step-1">
                <div id="div-recipient" class="center">
                    <div class="shining-star left-float"></div>
                    <div class="shining-star right-float"></div>
                    <div class="eval"></div>
                </div>

                <div style="margin-left: 0px; margin-top: 50px;">
                    <div style="width: 700px; margin-left: 180px;">
                        <object codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"
                                height="450" width="650" border="0" classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000">
                            <param name="movie" value="flash/happy-birthday.swf?name=Eval">
                            <param name="quality" value="High">
                            <embed src="flash/happy-birthday.swf?name=Eval"
                                   pluginspage="http://www.macromedia.com/go/getflashplayer"
                                   type="application/x-shockwave-flash" name="obj1" width="650" height="450">
                                <%--<embed src="flash/cake.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="650" height="450">--%>
                        </object>
                    </div>
                </div>
            </div>

            <div id="letter" class="step-2 center">
                <div style="padding: 120px 60px 0px 60px; margin-top: -100px;" class="letter-to-eval">
                    &emsp;&emsp;宝贝
                    <br>
                    &emsp;&emsp;认识以来, 你的第一个生日, 很想回来陪你一起过, 可遗憾假期安排不过来. 如果今天我不能回来跟你说一声生日快乐. 那我一定会在远方送上祝福.
                    愿我的宝贝永远快乐, 一辈子幸福.
                    <br>
                    &emsp;&emsp;如果可以, 发几张照片给我, 将你的笑容定格下来. 可以在每一个平淡的日子里看到你那甜美的微笑, 也是一种幸福.
                    <br>
                    &emsp;&emsp;他们说, 世间所有的相遇都是
                    久别重逢. 如果真是这样, 那我们一定是相别太久太久. 所以我才会如此珍惜在一起的时光. 也是因为这样, 所以才会在每
                    一个见不到你的日子里, 都万分想念.
                    <br>
                    &emsp;&emsp;常常以开玩笑的方式说, 等我们八十了, 我依然叫你宝贝, 你依然叫我果果, 让我们酸掉那帮崽崽的大牙. 或许, 你只把它当一个玩笑, 可我早已下定决心要一辈子疼爱你、守护
                    着你.
                    <br>
                    &emsp;&emsp;不知道你写给我的那封信是否还留着, 一直没机会看到它, 照片中几个没被涂掉的字告诉我, 它记录着我们的故事. 我很想看一看它, 虽然, 我很肯定自己能够记住
                    它记录的每一个瞬间. 能够收到这封信是我的一个小心愿, 我没有提过, 我想一直将这个还没实现的小心愿留着, 不让它早早地实现. 梦想都会实现的吧, 可怀揣梦想的这个过程, 亦是幸福.
                    <br>
                    &emsp;&emsp;常常想起在你家附近一起吃烧烤的那个晚上. 一直把自己当做信仰, 以为坚不可摧, 却在以为我们将会结束的时候差点没能忍住掉下眼泪. 那一刻, 紧紧地抱着你, 生怕风吹来, 把你
                    带走. 或许, 每个人都是因为经历了太多才会懂得去珍惜. 我悄悄地许下心愿, 愿这个世界都会深情地对待这个姑娘.
                    <br>
                    &emsp;&emsp;回忆好短, 天涯好长. 多希望, 未来的每一天都可以那样紧紧地抱着你, 而后再别过头来看看你. 静静地看着你, 就够了...
                    <br>
                    <br>
                    <span style="float: right; margin-right: 50px;">- 果果</span>
                </div>
            </div>
            <div id="bottom-nav" style="color: bisque; margin-top: 50px;">
                <a href="#" onclick="javascript:Schedule.displayLetter();">
                    <img src="img/arrow.jpg" style="width: 100px; float: right; margin-left: 10px; margin-right: 300px;">
                </a>
                <span style="float: right; margin-top: 20px;">A letter not yet posted</span>
            </div>
        </div>
    </div>

    <script type="application/javascript">
        $(document).ready(function () {
            var options1 = {
                id: 'letter-to-eval'
            };
            $('.letter-to-eval').initReveal(options1);
            Media.startAudio('audio/happy-birthday.mp3', $('#audio'));
        })
    </script>

</body>
</html>