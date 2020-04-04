<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link  rel="stylesheet" href="/bootstrap/dist/css/bootstrap.css"/>
    <%--<script src="/bootstrap/dist/js/bootstrap.js"></script>
    <script src="/bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="/bootstrap/dist/js/bootstrap.js"></script>--%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>SSM-员工管理</h1>
        </div>
        <div class="input-group col-md-3" style="margin-top:0px; positon:relative; padding-left: 20px;">
            <input type="text" class="form-control"placeholder="请输入字段名"/>
            <span class="input-group-btn">
               <button class="btn btn-info btn-search">查找</button>
                <a href="/add.jsp" type="button" class="btn btn-info btn-search" style="margin-left:3px">添加</a>
            </span>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
    <table id="rideInfo" class="table table-bordered table-striped" style="white-space: nowrap; vertical-align:middle">
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>生日</td>
            <td>成绩</td>
            <td colspan="3">操作</td>
        </tr>
        <c:forEach items="${list}" var="kp">
            <tr>
                <td>${kp.id}</td>
                <td>${kp.name}</td>
                <td>${kp.data}</td>
                <td>${kp.srouce}</td>
                <td>
                   <form action="/kp/deleteById/${kp.id}" method="post">
                        <input type="hidden" name="_method" value="DELETE"/>
                        <button type="submit" value="删除"class="btn btn-danger" type="button" >删除</button>
                    </form>
                </td>
                <td>
                        <a href="/kp/findById/${kp.id}" type="button" class="btn btn-success">修改</a>
                </td>
            </tr>
        </c:forEach>
    </table>
            <ul class="pagination">
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>