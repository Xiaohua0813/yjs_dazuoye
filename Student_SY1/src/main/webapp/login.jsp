<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: FL8000UN
  Date: 2020/4/7
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工信息管理系统</title>
</head>
<body>
<h1>基于Struts2+Hibernate员工信息管理系统</h1>
<h3>管理员登录</h3>
<s:form action="adminLogin" method="post">
    <s:textfield name="username" label="username" size="16"/>
    <s:password name="password" label="password" size="16"/>
    <s:submit value="登录"/>
</s:form>
<%--<h3>学生登录</h3>--%>
<%--<s:form action="login" method="post">--%>
<%--    <s:textfield name="sid" label="studentID" size="16"/>--%>
<%--    <s:password name="password" label="password" size="16"/>--%>
<%--    <s:submit value="登录"/>--%>
<%--</s:form>--%>

</body>
</html>
