<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title id="title"></title>
<link type="text/css" rel="stylesheet"
	href="r.img.cctvpic.com/worldcup/2018/star/Messi/style/style.css-3673e98d69f4cedf2ee01d64ff5b3def.css" />
<link type="text/css" rel="stylesheet"
	href="r.img.cctvpic.com/worldcup/2018/include/sqnav/style/style.css-7e2cc264e5277cb6b4bbca73c732b556.css" />
<link type="text/css" rel="stylesheet"
	href="r.img.cctvpic.com/worldcup/2018/include/sqbanner/style/style.css-fafb0e849bb3f254505034cc2446336b.css" />
<style>
.banner a {
	text-decoration: none;
	margin-left: 170px;
	color: #ede9c3;
	font-size: 30px;
}

.content {
	margin-left: 10px;
	margin-right: 20px;
}

#name {
	padding: 2px;
	font-size: 60px;
	font-weight: 800;
	font-family: "楷体";
	display: inline-block;
}

#img {
	padding: 2px;
	font-size: 30px;
	font-weight: 600;
	font-family: "楷体";
	display: inline-block;
}

#birthday {
	font-size: 30px;
	font-weight: 400;
	display: inline-block;
}

#info {
	padding: 2px;
	font-size: 30px;
	font-weight: 500;
}

.left {
	width: 80%;
	float: left;
}

.right {
	width: 20%;
	float: right;
}

#right {
	margin-top: 20px;
	margin-left: 50px;
}

.img-style {
	border-radius: 10px;
	margin: 3px;
	width: 180px;
	height: 180px;
	transition: all 1s;
}

.img-style:hover {
	transform: scale(1.5);
}
.banner{
		margin-left:250px;
	}
	.banner a{
		font-size:30px;
		text-decoration:none;
		margin-left:120px;
		color:#ede9c3;
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
								<div class="banner" style="margin-left: 250px;">
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
										<div class="intro" style="margin-left: 180px;">
											<div class="name">
												<div class="brief" id="playerdata">
													<div class="content">
														<div class="left">
															<div id="name">${team.tName }</div>
															<div id="birthday">球队主教练： ${team.tCoach }</div>
															<p id="info">&nbsp;&nbsp; ${team.tInfo }</p>
														</div>
														<div class="right" id="right"></div>
													</div>
												</div>
											</div>
											<div class="right">
												<div class="star" id="star">
													<div id="right">
														<img class="img-style" src="${team.tPic }" />
													</div>
													<!-- <img src="img/messi.jpg" alt=""/> -->
													<!--模糊效果-->
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