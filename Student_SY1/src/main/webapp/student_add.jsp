<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: FL8000UN
  Date: 2020/4/9
  Time: 8:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加员工信息</title>
</head>
<body>
<h1>添加员工信息页面</h1>
当前登录：管理员<s:property value="#session.adminUsername"/>
<%--<form action="insert" method="post">--%>
<%--&lt;%&ndash;    <s:iterator value="#session.stuList.{?#this.sid == #parameters.sid[]}" status="st">&ndash;%&gt;--%>
<%--        学号：<input type="text" name="stu.sid" value="<s:property value="sid"/> "><br>--%>
<%--        姓名：<input type="text" name="stu.name" value="<s:property value="name"/> "><br>--%>
<%--        性别：--%>
<%--        <input type="radio" name="stu.sex" value="男" checked="checked"/>男--%>
<%--        <input type="radio" name="stu.sex" value="女"/>女<br>--%>
<%--        生日：<input type="text" name="stu.birthday" value="<s:property value="birthday"/>"><br>--%>
<%--        学校：<input type="text" name="stu.university" value="<s:property value="university"/>"><br>--%>
<%--        学院：<input type="text" name="stu.department" value="<s:property value="department"/> "><br>--%>
<%--        专业：<input type="text" name="stu.major" value="<s:property value="major"/>"><br>--%>
<%--        年级：<input type="text" name="stu.grade" value="<s:property value="grade"/>"><br>--%>
<%--        <input type="submit" value="增加学生信息"/>--%>
<%--&lt;%&ndash;    </s:iterator>&ndash;%&gt;--%>
<%--</form>--%>
<s:form action="insert" method="POST">
<%--    <s:textfield name="stu.sid" label="学号" size="16"/>--%>
<%--    <s:textfield name="stu.name" label="姓名" size="16"/>--%>
<%--    <s:textfield name="stu.password" label="密码" size="16"/>--%>
    学号：<input type="text" name="stu.sid" value=""><br>
    姓名：<input type="text" name="stu.name" value=""><br>
    密码：<input type="text" name="stu.password" value=""><br>
<%--    <s:textfield name="stu.sex" label="性别" size="16"/>--%>
    性别：<input type="radio" name="stu.sex" value="男" checked="checked"/>男
    <input type="radio" name="stu.sex" value="女"/>女<br>
    生日：<input type="text" name="stu.birthday" value=""><br>
<%--    学校：<input type="text" name="stu.university" value=""><br>--%>
<%--    学院：<input type="text" name="stu.department" value=""><br>--%>
    工作专业：<input type="text" name="stu.major" value=""><br>
<%--    年级：<input type="text" name="stu.grade" value=""><br>--%>
    工作水平：<input type="text" name="stu.joblevel" value=""><br>
    工资：<input type="text" name="stu.salary" value=""><br>
    <s:submit value="增加员工信息"/>
</s:form>

</body>
</html>
