<%--
  Created by IntelliJ IDEA.
  User: zms
  Date: 18-2-7
  Time: 下午5:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link href="WEB-INF/jsp/common/css/bootstrap.css" rel="stylesheet" media="screen">
<%--<jsp:forward page="LoginController"></jsp:forward>--%>
<html>
<!DOCTYPE html>
<html>
<head>
    <title>欢迎使用本系统</title>
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
        <h2 class="form-signin-heading">欢迎使用本系统</h2>
        <input type="text" class="input-block-level" placeholder="用户名" name="userName">
        <input type="password" class="input-block-level" placeholder="密码" name="password">
        <font color="red">${requestScope.message }</font>
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> 记住我
        </label>
        <a class="btn btn-large btn-primary btn-danger" id="register" style="margin-left: 5%" onclick="register()" type="button">注 册</a>
        <button class="btn btn-large btn-primary" type="submit" style="margin-left: 20%" onclick="login()">登  陆</button>
    </form>

</div> <!-- /container --><%--
<script src="vendors/jquery-1.9.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>--%>
</body>
</html>

<%--<body>
<a id="denglu1"  type="button" href="loginin" target="_blank" hidden>redirec</a>
</body>--%>
<script type="text/javascript">
    $(function(){
        document.onkeydown = function(e){
            var ev = document.all ? window.event : e;
            if(ev.keyCode==13) {
                alert("请点击登陆");
            }
        }
    });
    function register(){
        window.location.href="register.jsp"
    }
    function login() {
        var userName =$("input[name='userName']").val().trim();
        var pwd =$("input[name='password']").val().trim();
        if(null==userName||null==pwd||""==userName||""==pwd){
            alert("帐号和密码不可为空");
            location.reload();
        }
    }
    /* $("#denglu").click(function() {
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
    })*/



</script>
</html>

