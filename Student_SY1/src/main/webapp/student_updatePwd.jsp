<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>修改密码</title>
</head>
<body>
当前登录用户: <s:property value="#session.studentInfo.name"/>
<h2>修改密码</h2>
<s:form action="updatePwd" method="POST">
    <%--<s:password  label="旧密码" size="16"/>--%>
    <s:password name="stu.password" label="新密码" size="16"/>
    <s:submit value="修改"/>

</s:form>
</body>
</html>
