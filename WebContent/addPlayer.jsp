<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title id="title"></title>
<!--引入日历js-->
<script src="js/datetimepicker/jquery.datetimepicker.js"></script>
<script src="head/html2canvas.min.js" type="text/javascript" charset="utf-8"></script>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/star/Messi/style/style.css-3673e98d69f4cedf2ee01d64ff5b3def.css" />
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqnav/style/style.css-7e2cc264e5277cb6b4bbca73c732b556.css"/>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqbanner/style/style.css-fafb0e849bb3f254505034cc2446336b.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="head/cropper.min.css" rel="stylesheet">
<link href="head/sitelogo.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="js/datetimepicker/jquery.datetimepicker.css">
<script src="head/bootstrap.min.js"></script>
<script src="head/cropper.js"></script>
<script src="head/sitelogo.js"></script>
<style>
	.table1 td{
		font-size:25px;
		color:#15467a;
	}
	.table1 tr{
		font-size:25px;
		color:#15467a;
		height:30px;
	}
	.table1 input{
		margin-left:50px;
		font-size:20px;
	}
	.table1 select{
		margin-left:50px;
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
			 		<div class="banner" style="font-size:30px;margin-left:250px;">
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
							<div class="intro" style="margin-left:80px;">
							<div class="name">
								<div class="brief" id="playerdata">
									<div class="vspace" style="height:40px;"></div>
									<form id="form1" class="form1" action="insertPlayer" method="post">
									<input type="hidden" name="pLike" id="pLike" value="0"/>
										<table class="table1">
										<tr>
											<td>球星：</td>
											<td><input id="pName" name="pName" type="text" onchange="checkName()"/></td>
										</tr>
										<tr>
											<td>球队：</td>
											<td><input id="pTname" name="pTname" type="text" onchange="checkTName()"/></td>
										</tr>
										<tr>
											<td>出生日期：</td>
											<td><input id="pBirth" name="pBirth" type="text" /></td>
										</tr>
										<tr>
											<td>身高：</td>
											<td><input id="pHeight" name="pHeight"  onchange="checkHeight()"  type="text"/></td>
										</tr>
										<tr>
											<td>体重：</td>
											<td><input id="pWeight" name="pWeight"  onchange="checkWeight()" type="text"/></td>
										</tr>
										<tr>
											<td>球衣号：</td>
											<td><input id="pNumber" name="pNumber"  onchange="checkNumber()"type="text"/></td>
										</tr>
										<tr>
											<td>场上位置：</td>
											<td>
												<select name="pPosition">
													<option>前锋</option>
													<option>左边锋</option>
													<option>右边锋</option>
													<option>影子前锋</option>
													<option>前腰</option>
													<option>中前卫</option>
													<option>左前卫</option>
													<option>右前卫</option>
													<option>后腰</option>
													<option>边后卫</option>
													<option>左后卫</option>
													<option>右后卫</option>
													<option>中后卫</option>
													<option>清道夫</option>
													<option>门将</option>
												</select>
											</td>
										</tr>
										<tr>
											<td>上传图片</td>
											<td>
												<textarea id="pPic" name="pPic" style="margin-left:50px;" rows="5" cols="20" onchange="checkPic()"></textarea>
											</td>
										</tr>
										<tr>
											<td></td>
											<td><a href="http://imgbase64.duoshitong.com/" target="view_frame" style="text-decoration:none; margin-left:50px;color:#15467a;font-size:15px;">点此进行图片转码</a></td>
										</tr>
										<tr>
											<td><input type="submit" value="增加" id="addBtn" /></td>
											<td><input type="button" value="取消" onclick="history.back();" /></td>
										</tr>
									</table>
									</form>
								</div>
							</div>
							</div>
								<div class="right">
									<div class="star" id="star">
										<img src="img/messi.jpg" alt=""/>
										<!--模糊效果-->
										<span class="cover"></span>
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

<script type="text/javascript">
	function checkName() {
		var pName = $("#pName").val();
		if (pName.length == 0) {
			alert("用户名不能为空");
			$("#pName").focus();
		}
	}
	function checkTName() {
		var pTname = $("#pTname").val();
		if (pTname.length == 0) {
			alert("队名不能为空");
			$("#pTname").focus();
		}
	}
	function checkHeight() {
		var pHeight = $("#pHeight").val();
		if (pHeight.length == 0) {
			alert("身高不能为空");
			$("#pHeight").focus();
		}
	}
	function checkWeight() {
		var pWeight = $("#pWeight").val();
		if (pWeight.length == 0) {
			alert("身高不能为空");
			$("#pWeight").focus();
		}
	}
	function checkNumber() {
		var pNumber = $("#pNumber").val();
		if (pNumber.length == 0) {
			alert("球衣号不能为空");
			$("#pNumber").focus();
		}
	}
	function checkPic() {
		var pPic = $("#pPic").val();
		if (pPic.length == 0) {
			alert("图片不能为空");
			$("#pPic").focus();
		}
	}
</script>
<!--引入jquery-->
<script src="js/jquery.js"></script>

<script type="text/javascript" src="js/datetimepicker/jquery.datetimepicker.js"></script>
<script type="text/javascript">
	$(function() {
		// 给文本框绑定日历控件
		$('#pBirth').datetimepicker({
			lang: 'ch',
			format: 'Y年m月d日',
			formatDate: 'Y-m-d',
			timepicker: false
		});
	});
</script>
</body>
</html>