<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>Blog</title>
    <script src="<%= ctx%>/js/jquery-2.1.1.js"></script>
</head>
<body>
    <div style="width: 960px; margin-left: auto; margin-right: auto">
        <div id="blog-list">
        </div>
        <div id="blog">
            <div id="title">
            </div>
            <div id="detail">
            </div>
            <div id="content">
            </div>
        </div>
    </div>
</body>
<script type="application/javascript">
    $(document).ready(function () {
        $.ajax({
            type: "get",
            dataType: "json",
            url: '<%= ctx%>/mvc/blog/load',
            success: function (data) {
                if (data != "") {
                    $('#content').append(data[0].content);
                }
            }
        });
    })
</script>
</html>