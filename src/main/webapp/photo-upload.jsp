<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="mvc/photo/upload" method="post" enctype="multipart/form-data">
        <input type="file" name="file" /> <input type="submit" value="Submit" />
    </form>
</body>
</html>
