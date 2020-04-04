<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>员工修改页面</h1>
<form action="/kp/update" method="post">
    <input type="hidden" name="_method" value="PUT"/>   <%--类型转换--%>
    <table>
        <tr>
            <td>
                编号：
            </td>
            <td><input type="text" name="id" readonly value="${kp.id}"/></td>
        </tr>
        <tr>
            <td>
                姓名：
            </td>
            <td><input type="text" name="name"  value="${kp.name}"/></td>
        </tr>
        <tr>
            <td>
                生日：
            </td>
            <td><input type="text" name="data"  value="${kp.data}"/></td>
        </tr>
        <tr>
        <td>
            成绩：
        </td>
            <td><input type="text" name="srouce" value="${kp.srouce}"/></td>
    </tr>
    </table>
    <input type="submit" value="修改"/>
</form>

</body>
</html>
