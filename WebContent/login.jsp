<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
        <!-- CSS -->
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/supersized.css">
        <link rel="stylesheet" href="css/style.css">   
        <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<script type="text/javascript">
</script>
        <div class="page-container">	           
		<div class="wrapper">	
			<div class="container">
				<strong><span style="font-weight: bold;font-size: 25px;">登  录</span></strong> 
				<form class="form" action="userLogin" method="post">
					<input type="text" id="uUser" name="uUser" placeholder="Username"">
					<input type="password" id="uPwd" name="uPwd"  placeholder="Password">
					<button type="submit" id="login-button" onclick="login()">Login</button>
				</form>
			</div>
	  </div>
        </div>
      <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
        <!-- Javascript -->
        <script src="js/jquery-1.8.2.min.js"></script>
        <script src="js/supersized.3.2.7.min.js"></script>
        <script src="js/supersized-init.js"></script>
        <script src="js/scripts.js"></script>
</body>

<!--引入jquery-->
<script src="js/jquery.js"></script>
<script type="text/javascript">
	function login(){
		var uUser = $("#uUser").val();
		var uPwd = $("#uPwd").val();
		if(uUser.length == 0){
			alert("用户名不能为空")
			$("#uUser").focus();
		}if(uPwd.length == 0){
			alert("密码不能为空")
			$("#uUser").focus();
		}
	}
		
</script>
</html>