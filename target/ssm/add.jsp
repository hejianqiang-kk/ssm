<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <link  rel="stylesheet" href="/bootstrap/dist/css/bootstrap.css"/>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>员工添加页面</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">

            <table class="table table-bordered">
<form action="/kp/save" method="post">
    <table>
        <tr>
            <td>姓名：</td>
            <td>
                <input type="text" name="name"/>
            </td>
        </tr>
        <tr>
            <td>日期：</td>
            <td>
                <input type="date" name="data"/>
            </td>
        </tr>
        <tr>
            <td>成绩：</td>
            <td>
                <input type="text" name="srouce"/>
            </td>
        </tr>
    </table>
    <input type="submit" value="提交"/>
</form>
            </table>
        </div>
    </div>
</div>
</body>
</html>
