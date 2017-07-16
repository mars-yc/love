<%@ page import="com.master.love.util.SessionHelper" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
    String username = (String) request.getSession().getAttribute(SessionHelper.SESSION_LOGIN_USER);
%>
<html>
<head>
    <title>Blog</title>
    <script src="<%= ctx%>/js/jquery-2.1.1.js"></script>
</head>
<body>
    <div style="width: 960px; margin-left: auto; margin-right: auto">
        <div id="blog-list">
            <ul>
            </ul>
        </div>
        <div id="blog-detail">
        </div>
    </div>
</body>
<script type="application/javascript">
    $(document).ready(function () {
        $.ajax({
            type: "get",
            dataType: "json",
            url: '<%= ctx%>/mvc/blog/load/<%= username%>',
            success: function (data) {
                if (data != "") {
                    $.each(data, function () {
                        $('#blog-list ul').append('<li><a href="javascript:;">' + data[0].subject + '</a></li>');
                    });
                }
            }
        });
    })
</script>
</html>