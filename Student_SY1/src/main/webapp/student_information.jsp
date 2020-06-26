<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>员工信息</title>
</head>
<body>
<h3>员工个人信息</h3>
<br>
<h5><s:property value="#session.studentInfo.name"/>，你的个人信息为：</h5>
<br>
<s:iterator value="#session.studentInfo">
    <table border="1">
        <tr>
            <td width="100px">学号</td>
            <td width="50px">姓名</td>
            <td width="50px">性别</td>
            <td width="100px">生日</td>
<%--            <td width="100px">大学</td>--%>
<%--            <td width="100px">学院</td>--%>
            <td width="100px">工作专业</td>
            <td width="100px">工作水平</td>
            <td width="100px">工资</td>
<%--            <td width="100px">年级</td>--%>
        </tr>
        <tr>
            <td><s:property value="sid"/></td>
            <td><s:property value="name"/></td>
            <td><s:property value="sex"/></td>
            <td><s:property value="birthday"/></td>
<%--            <td><s:property value="university"/></td>--%>
<%--            <td><s:property value="department"/></td>--%>
            <td><s:property value="major"/></td>
            <td><s:property value="joblevel"/></td>
            <td><s:property value="salary"/></td>
<%--            <td><s:property value="grade"/></td>--%>
        </tr>
    </table>
</s:iterator>

<br><br><br>
<button><a href="student_updatePwd.jsp">点击修改密码</a></button>
</body>
</html>
