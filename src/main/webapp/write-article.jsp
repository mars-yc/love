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

<div style="width: 960px; margin-left: auto; margin-right: auto;">
    <h1 style="color: #ffffff; margin-left: 300px;">Write Article</h1>

    <div id="additional-info" style="margin-bottom: 50px;">

        <table style="color: #ffffff; font-size: 14px;">
            <tr>
                <td>文章标题</td>
                <td>
                    <input id="subject" type="text">
                </td>
            </tr>
            <tr>
                <td>展示给用户</td>
                <td>
                    <input id="to-user" type="text">
                </td>
            </tr>
            <tr>
                <td>文章分类</td>
                <td>
                    <select id="category">
                        <option value="测试分类1">测试分类1</option>
                        <option value="测试分类2">测试分类2</option>
                        <option value="测试分类3">测试分类3</option>
                    </select>
                </td>
            </tr>
        </table>
    </div>

    <div id="myEditor" style="width:800px;height:240px; font-size: 14px;">
    </div>

    <button onclick="getContent()">提交</button>



</div>
<script type="text/javascript">

    var um = UM.getEditor('myEditor');

    function getContent() {
        var blogContent = um.getContent();
        var blogSubject = $('#subject').val();
        var blogCategory = $('#category').val();
        var toUserName = $('#to-user').val();

        var toUserJson = {
            username: toUserName
        }
        var blogJson = {
            subject: blogSubject,
            content: blogContent,
            category: blogCategory,
            publishTime: new Date()
        }

        var jsonData = {
            blog: blogJson,
            toUser: toUserJson
        };

        $.ajax({
            type: "post",
            dataType: "json",
            url: '<%= ctx%>/mvc/blog/save',
            data: JSON.stringify(jsonData),
//            data: blogJson,
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                if (data != "") {
                    //alert(data);
                }
            },
            error: function () {
                alert('error');
            }
        });

    }
</script>

</body>
</html>