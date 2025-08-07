<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户登录 - 二手手机交易平台</title>
    <style>
        .container { width: 300px; margin: 100px auto; padding: 20px; border: 1px solid #ccc; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input { width: 100%; padding: 8px; box-sizing: border-box; }
        .error { color: red; font-size: 0.9em; }
        button { width: 100%; padding: 10px; background: #007bff; color: white; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <div class="container">
        <h2>用户登录</h2>
        <form action="${pageContext.request.contextPath}/login" method="post">
            <div class="form-group">
                <label for="username">用户名/邮箱/手机号</label>
                <input type="text" id="username" name="username" required>
                <c:if test="${not empty errorMsg}"><span class="error">${errorMsg}</span></c:if>
            </div>
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">登录</button>
        </form>
        <p style="margin-top: 10px;">还没有账号？<a href="register.jsp">立即注册</a></p>
    </div>
</body>
</html>