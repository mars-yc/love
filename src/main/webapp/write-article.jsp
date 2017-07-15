<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>Write Article</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="js/ueditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="js/ueditor/third-party/jquery.min.js"></script>
    <script type="text/javascript" src="js/ueditor/third-party/template.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/ueditor/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/ueditor/umeditor.min.js"></script>
    <script type="text/javascript" src="js/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body background="img/bg.gif" style="text-align: left;">

<div style="width: 960px; margin-left: auto; margin-right: auto">
    <h1 style="color: #ffffff; margin-left: 300px;">Write Article</h1>

    <div id="myEditor" style="width:800px;height:240px; font-size: 14px;">
        <p></p>
    </div>

    <button onclick="getContent()">提交</button>



</div>
<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');

    function getContent() {
        var content = UM.getEditor('myEditor').getContent();
        alert(content);

        $.ajax({
            type: "post",
            dataType: "html",
            url: '/Resources/GetList.ashx',
            data: dataurl,
            success: function (data) {
                if (data != "") {
                    $("#pager").pager({ pagenumber: pagenumber, pagecount: data.split("$$")[1], buttonClickCallback: PageClick });
                    $("#anhtml").html(data.split("$$")[0]);

                }
            }
        });

    }
</script>

</body>
</html>