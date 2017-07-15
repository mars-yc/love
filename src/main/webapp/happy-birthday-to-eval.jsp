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

            <div id="bottom-nav" style="color: bisque; margin-top: 50px;">
                <a href="#" onclick="javascript:Schedule.openPageInSelf('letter-to-eval.jsp');">
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