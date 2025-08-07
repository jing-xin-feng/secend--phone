<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户注册 - 二手手机交易平台</title>
    <style>
        .container { width: 400px; margin: 50px auto; padding: 20px; border: 1px solid #ccc; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input { width: 100%; padding: 8px; box-sizing: border-box; }
        .error { color: red; font-size: 0.9em; }
        .success { color: green; font-size: 0.9em; }
        button { width: 100%; padding: 10px; background: #28a745; color: white; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <div class="container">
        <h2>用户注册</h2>
        <form action="${pageContext.request.contextPath}/register" method="post">
            <div class="form-group">
                <label for="username">用户名</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">邮箱</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phone">手机号</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">确认密码</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>
            <c:if test="${not empty errorMsg}"><span class="error">${errorMsg}</span></c:if>
            <c:if test="${not empty successMsg}"><span class="success">${successMsg}</span></c:if>
            <button type="submit">注册</button>
        </form>
        <p style="margin-top: 10px;">已有账号？<a href="login.jsp">立即登录</a></p>
    </div>
</body>
</html>