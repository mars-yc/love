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

            <div id="letter" class="center" style="margin-top: 150px;">
                <div style="padding: 50px 60px 0px 60px;" class="letter-to-eval">
                    &emsp;&emsp;宝贝
                    <br>
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
                    <br>
                    &emsp;&emsp;不知道你写给我的那封信是否还留着, 一直没机会看到它, 你有发给我一张写完后拍下的照片, 可已经被你涂得面目全非, 从几个幸存的字迹中看出来, 它记录着我们的故事. 我很想看一看它, 虽然, 我相信自己能够记住
                    它记录的每一个瞬间. 一直以来, 能够收到这封信是我的一个小心愿, 我没有提过. 我想, 就将这个还没实现的小心愿留着吧, 不要让它早早地实现. 梦, 只要足够努力, 都会实现的. 怀揣梦的这个过程, 跟小时候兜里有几毛钱,
                    却一直舍不得花一样, 何尝不是一种幸福.
                    <br>
                    &emsp;&emsp;常常想起在你家附近一起吃烧烤的那个晚上. 一直把自己当做信仰, 以为坚不可摧, 却在以为我们将会结束的时候差点没能忍住掉下眼泪. 那一刻, 紧紧地抱着你, 生怕风吹来, 把你从我怀里
                    带走. 或许, 每个人都是因为经历多了才会懂得去珍惜. 我悄悄地许下心愿, 希望从今天开始整个世界都会深情地对待这个姑娘.
                    <br>
                    &emsp;&emsp;回忆好短, 天涯好长...
                    <br>
                    &emsp;&emsp;世界好大, 我想, 我一定预支了下辈子所有的运气, 才足以幸运地遇见你. 宝贝, 让我们在一起吧! 未来的每一天我都要这样样紧紧地抱着你, 一辈子不松开...
                    <br>
                    <br>
                    <span style="float: right; margin-right: 50px;">- 果果</span>
                </div>
            </div>
            <div id="bottom-nav" style="color: bisque; margin-top: 50px;">
                <a href="#" onclick="javascript:Schedule.openPageInSelf('destiny.jsp');">
                    <img src="img/arrow.jpg" style="width: 100px; float: right; margin-left: 10px; margin-right: 300px;">
                </a>
                <span style="float: right; margin-top: 20px;">Destiny</span>
            </div>
        </div>
    </div>

    <script type="application/javascript">
        $(document).ready(function () {
            var options1 = {
                id: 'letter-to-eval'
            };
            $('.letter-to-eval').initReveal(options1);
            Media.startAudio('audio/穿越时空的思恋.mp3', $('#audio'));
        })
    </script>

</body>
</html>