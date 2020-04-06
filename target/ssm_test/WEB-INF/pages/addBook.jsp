<%--
  Created by IntelliJ IDEA.
  User: ZhaoDong
  Date: 2020/4/6
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <%--清除浮动--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/addBook" method="post">
            <div class="form-group">
                <label for="bkname">书籍名称:</label>
                <input type="text" name="bookName" class="form-control" id="bkname" required>
            </div>
            <div class="form-group">
                <label for="bksum">书籍数量:</label>
                <input type="text" name="bookCounts" class="form-control" id="bksum" required>
            </div>
            <div class="form-group">
                <label for="bkdeta">书籍描述:</label>
                <input type="text" name="detail" class="form-control" id="bkdeta" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="添加">
            </div>

        </form>

</div>
</body>
</html>
