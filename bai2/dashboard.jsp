<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Kiểm tra xem người dùng đã đăng nhập hay chưa
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <h1>Chào mừng, <%= username %>!</h1>
    <a href="logout">Đăng xuất</a>
</body>
</html>