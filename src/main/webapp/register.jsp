<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>一款基于JQuery做的动画背景后台管理登录模板 - </title>

<link href="css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div class="login">
    <div class="box png">
		<div class="logo png"></div>
		<div class="input">
			<div class="log">
				<div class="name">
					<label>用户名</label><input type="text" class="text" id="userName" placeholder="用户名" name="value_1" tabindex="1">
				</div>
				<div class="pwd">
					<label>密　码</label><input type="password" class="text" id="pwd" placeholder="密码" name="value_2" tabindex="2">
					<input type="button" class="submit" tabindex="3" value="注册" onclick="register()">
					<!--<div class="check"></div>-->
				</div>
				<div class="tip"></div>
			</div>
		</div>
	</div>
    <div class="air-balloon ab-1 png"></div>
	<div class="air-balloon ab-2 png"></div>
    <div class="footer"></div>
</div>

<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript" src="js/fun.base.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.md5.js"></script>
<script type="text/javascript">
    function register(){
        var userName = $("#userName").val();
        var pwd = $.md5($("#pwd").val());
        $.ajax({
            url:"register",
            data:{"userName":userName,"pwd":pwd},
            success:function (data) {
                alert("success");
                console.log(data);
            }
        })
    }
</script>

<!--[if IE 6]>
<script src="js/DD_belatedPNG.js" type="text/javascript"></script>
<script>DD_belatedPNG.fix('.png')</script>
<![endif]-->
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p>适用浏览器：360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. 不支持IE8及以下浏览器。</p>
</div>
</body>
</html>