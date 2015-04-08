<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype>
<html>
    <head>
        <title>Home</title>
    </head>
    <body>
        <div>
            <h1>Home</h1>
            <%--isAnonymous()如果用户是一个匿名登录的用户 就会返回 true--%>
            <sec:authorize access="isAnonymous()">
                <p>
                    <a href="/spring_security_login">Sign In</a>
                </p>
            </sec:authorize>
            <%--isAuthenticated() 如果用户不是匿名用户就会返回true--%>
            <sec:authorize access="isAuthenticated()">
                <p>Hello, ${userDetails.username}! <a href="/j_spring_security_logout">Sign Out</a></p>
            </sec:authorize>

            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <p>
                    <a href="/admin">Admin page</a>
                </p>
            </sec:authorize>
        </div>
    </body>
</html>