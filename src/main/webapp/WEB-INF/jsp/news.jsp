<%--
  Created by IntelliJ IDEA.
  User: zms
  Date: 18-2-10
  Time: 下午10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="l" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>News</title>
</head>
<body>
    <c:forEach items="${newses}" var="news">
        <div>${news.title}</div>

    </c:forEach>
</body>
</html>
