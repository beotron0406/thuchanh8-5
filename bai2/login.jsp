<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
    <h1>Đăng nhập</h1>
    <% if (request.getParameter("error") != null) { %>
        <p style="color: red;">Tên đăng nhập hoặc mật khẩu không đúng!</p>
    <% } %>
    <form action="login" method="post">
        <label>
            Tên đăng nhập:
            <input type="text" name="username" required>
        </label>
        <br>
        <label>
            Mật khẩu:
            <input type="password" name="password" required>
        </label>
        <br>
        <button type="submit">Đăng nhập</button>
    </form>
</body>
</html> 