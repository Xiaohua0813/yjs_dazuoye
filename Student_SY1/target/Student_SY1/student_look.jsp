<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: FL8000UN
  Date: 2020/4/10
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>普通管理员界面</title>
</head>
<body>
当前登录：管理员<s:property value="#session.adminUsername"/>
<s:debug/>
<h2>查看学生信息</h2>
<form action="findByName" method="post">
    根据姓名查询：<input type="text" name="stu.name">
    <input type="submit" value="查询">
</form>

<table border="1px">
    <tr>
        <%--        <td width="50px">序号</td>--%>
        <td width="50px">学号</td>
        <td width="50px">姓名</td>
        <td width="50px">密码</td>
        <td width="50px">性别</td>
        <td width="50px">生日</td>
        <td width="50px">大学</td>
        <td width="50px">院系</td>
        <td width="50px">专业</td>
        <td width="50px">年级</td>
    </tr>

    <s:iterator value="stuList" status="st">
        <tr>
                <%--            <td><s:property value="#st.count"/> </td>--%>
            <td><s:property value="sid"/> </td>
            <td><s:property value="name"/> </td>
            <td><s:property value="password"/> </td>
            <td><s:property value="sex"/> </td>
            <td><s:property value="birthday"/> </td>
            <td><s:property value="university"/> </td>
            <td><s:property value="department"/> </td>
            <td><s:property value="major"/> </td>
            <td><s:property value="grade"/> </td>
        </tr>
    </s:iterator>
</table>

</body>
</html>
