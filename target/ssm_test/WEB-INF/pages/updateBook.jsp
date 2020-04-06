<%--
  Created by IntelliJ IDEA.
  User: ZhaoDong
  Date: 2020/4/6
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>修改书籍</title>
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

        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">

            <%--出现的问题：我们提交了修改的SQl，但是修改失败
             1.初次考虑，是事务的问题，配置完毕，依旧失败！
             2.看一下SQL语句，能否执行成功：SQL执行失败，修改为完成
             3.前端传递隐藏域
            --%>
            <input type="hidden" name="bookID" value="${QBook.bookID}">
            <div class="form-group">
                <label for="bkname">书籍名称:</label>
                <input type="text" name="bookName" class="form-control" id="bkname" value="${QBook.bookName}" required>
            </div>
            <div class="form-group">
                <label for="bksum">书籍数量:</label>
                <input type="text" name="bookCounts" class="form-control" id="bksum" value="${QBook.bookCounts}" required>
            </div>
            <div class="form-group">
                <label for="bkdeta">书籍描述:</label>
                <input type="text" name="detail" class="form-control" id="bkdeta" value="${QBook.detail}" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="修改">
            </div>

        </form>

    </div>
</body>
</html>
