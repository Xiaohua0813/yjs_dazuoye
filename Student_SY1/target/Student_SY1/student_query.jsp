<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: FL8000UN
  Date: 2020/4/8
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>超级管理员页面</title>
</head>
<body>
当前登录：管理员<s:property value="#session.adminUsername"/>
<s:debug/>
<h2>查看员工信息</h2>
<form action="findByName" method="post">
    根据员工查询：<input type="text" name="stu.name">
    <input type="submit" value="查询">
    <a href="student_add.jsp"><input type="button" value="增加员工信息"></a>
</form>
<table border="1px">
    <tr>
<%--        <td width="50px">序号</td>--%>
        <td width="50px">学号</td>
        <td width="50px">姓名</td>
        <td width="50px">密码</td>
        <td width="50px">性别</td>
        <td width="50px">生日</td>
        <td width="100px">工作专业</td>
        <td width="100px">工作水平</td>
        <td width="100px">工资</td>
        <td width="50px">修改</td>
        <td width="50px">删除</td>
    </tr>

    <s:iterator value="stuList" status="st">
        <tr>
<%--            <td><s:property value="#st.count"/> </td>--%>
            <td><s:property value="sid"/> </td>
            <td><s:property value="name"/> </td>
            <td><s:property value="password"/> </td>
            <td><s:property value="sex"/> </td>
            <td><s:property value="birthday"/> </td>
            <td><s:property value="major"/> </td>
            <td><s:property value="joblevel"/> </td>
            <td><s:property value="salary"/> </td>
<%--            <td><s:property value="grade"/> </td>--%>
            <td><a href="student_update.jsp?sid=<s:property value="sid"/>">修改</a> </td>
            <td><a href="delete?stu.sid=<s:property value="sid"/>">删除</a> </td>
        </tr>
    </s:iterator>
</table>

</body>
</html>
