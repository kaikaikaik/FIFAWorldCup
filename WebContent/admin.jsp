<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
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
				<strong><span style="font-weight: bold;font-size: 25px;">FIFA世界杯后台管理系统</span></strong>
				<strong><span style="font-weight: bold;font-size: 25px; margin-left:60px;">欢迎你，${u.uUser}</span></strong>
				<form class="form" method="post">
					<a href="queryAllPlayer.jsp"><button type="button" class="login-button" id="1">球星管理</button></a>
					<a href="teamInfo.jsp"><button type="button" class="login-button" id="2">球队管理</button></a>
					<a href="queryAllNews.jsp"><button type="button" class="login-button" id="3">赛事快讯管理</button></a>
					<a href="queryAllGame.jsp"><button type="button" class="login-button" id="4">赛况管理</button></a>
					<a href="queryAllUser.jsp"><button type="button" class="login-button" id="5">用户管理</button></a>
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
</html>