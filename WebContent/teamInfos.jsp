<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>世界杯球队</title>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/star/Messi/style/style.css-3673e98d69f4cedf2ee01d64ff5b3def.css" />
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqnav/style/style.css-7e2cc264e5277cb6b4bbca73c732b556.css"/>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqbanner/style/style.css-fafb0e849bb3f254505034cc2446336b.css"/>
<style>
	.banner{
		margin-left:250px;
	}
	.banner a{
		font-size:30px;
		text-decoration:none;
		margin-left:120px;
		color:#ede9c3;
	}
	.box-1 {
	text-align: center;
	margin-top: 20px; 
	width: 125px;
	height: 125px;
	float: left;
}
/*.box-1 a {
	text-align: center;
	display: block;
	font-weight: 600;
	color: midnightblue;
	text-decoration: none;
}*/
.a-1-1{
	font-size: 17px;
	text-align: center;
	display: block;
	font-weight: 600;
	color: midnightblue;
	text-decoration: none;
}
.a-1-1:hover{
	color: goldenrod;
}
.flag {
	border-radius: 50%;
}
.flag{
	margin: 5px;
	transition: all 1s;
}
.flag:hover{
	transform: scale(1.5);
}
</style>
</head>

<body>
	<div class="bg_center_v_tile">
	  <div class="bg_top_h_tile">
	    <div class="bg_top_owner">
	      <div class="bg_bottom_h_tile">	      
	        <div class="bg_bottom_owner">
	          <div id="page_head">	          
				<div class="qianban17886_banner_xq17886_20180425">
			 		<div class="banner" style="margin-left:250px;">
	  					<a href="index.jsp">首页</a>
				  		<a href="news.jsp">赛事快讯</a>
				  		<a href="queryAllTeamInfo">球队</a>
				  		<a href="allstar.jsp">球星</a>
				  		<a href="queryAllGame2.jsp">世界杯GOAL</a>
				  		<a href="login.jsp">登录</a>
			 		</div>
				</div>
			  </div>
	
				<div id="page_body">
					<div class="column_wrapper_13292">
						<div id="SUBD1526869985062680">
							<div class="qiuxing17931_ind01">
							<!-- 信息 -->
							<div class="intro">
							<div class="name">
								<div class="brief" id="playerdata">								
									<c:forEach var="p" items="${list }">								
										<div class="box-1">
											<a  href="queryTeamInfoById?tId=${p.tId }"><img  class="flag" src="${p.tPic}" width="80" height="80" /></a>
											<a class="a-1-1"  href="queryTeamInfoById?tId=${p.tId }">${p.tName }</a>
										</div>											
									</c:forEach>						
								</div>
							</div>
								
							</div>
						</div>
						<div class="ELMTbGFXR7xZpGyitu2HkRXy180522">
							<div class="vspace_jj"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>