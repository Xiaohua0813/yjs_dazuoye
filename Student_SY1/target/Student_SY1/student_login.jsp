<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: FL8000UN
  Date: 2020/4/8
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工登录页面</title>
</head>
<body>
<h1>基于Struts2+Hibernate员工信息管理系统</h1>
<h3>员工登录</h3>
<s:form action="studentlogin" method="post">
    <s:textfield name="stu.sid" label="学号" size="16"/>
    <s:password name="stu.password" label="密码" size="16"/>
    <s:submit value="登录"/>
</s:form>

</body>
</html>
