<%--
  Created by IntelliJ IDEA.
  User: jiguang
  Date: 2015/3/31
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div class="error ${param.error == true ? '' : 'hide'}">
    登陆失败<br>
    ${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}
</div>
<form action="${pageContext.request.contextPath}/check" style="width:260px;text-align:center;">
    <fieldset>
        <legend>登陆</legend>
        用户： <input type="text" name="j_username2" style="width:150px;" value="${sessionScope['SPRING_SECURITY_LAST_USERNAME']}"/><br />
        密码： <input type="password" name="j_password3" style="width:150px;" /><br />
        <input type="checkbox" name="_spring_security_remember_me4" />两周之内不必登陆<br />
        <input type="submit" value="登陆"/>
        <input type="reset" value="重置"/>
    </fieldset>
</form>

</body>
</html>
