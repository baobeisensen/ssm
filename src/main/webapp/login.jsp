<%--
  Created by IntelliJ IDEA.
  User: zms
  Date: 18-2-7
  Time: 下午5:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="WEB-INF/jsp/common/css/bootstrap.css" rel="stylesheet" media="screen">
<%--<jsp:forward page="LoginController"></jsp:forward>--%>
<html>
<!DOCTYPE html>
<html>
<head>
    <title>登  陆  页</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="assets/styles.css" rel="stylesheet" media="screen">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body id="login">
<div class="container">

    <form class="form-signin" id="userInfoForm" name = "userInfo" action="login" method="post">
        <h2 class="form-signin-heading">请登陆</h2>
        <input type="text" class="input-block-level" placeholder="用户名" name="userName">
        <input type="password" class="input-block-level" placeholder="密码" name="password">
        <font color="red">${requestScope.message }</font>
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> 记住我
        </label>
        <button class="btn btn-large btn-primary" id="register" style="margin-left: 5%">注 册</button>
        <button class="btn btn-large btn-primary" type="submit" style="margin-left: 20%">登  陆</button>
    </form>

</div> <!-- /container --><%--
<script src="vendors/jquery-1.9.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>--%>
</body>
</html>

<body>
<a id="denglu1"  type="button" href="loginin" target="_blank" hidden>redirec</a>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    $("#denglu").click(function() {
        $.ajax({
            url:"logon",
            dataTyope:"html",
            data:$("#userInfoForm").serialize(),
            success:function (data) {
                $("#content_div")
                    .html(data);
                },
            error:function (a,b,c) {
                console.log(a+"  ======"+"======="+c);
            }
        })
   })


</script>
