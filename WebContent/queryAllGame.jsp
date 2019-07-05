<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>

	<head>
		<meta charset="UTF-8">
		<!--设置浏览器的布局视口，只在移动端浏览器起作用-->
		<meta name="viewport" content="width=width-device,initial-scale=1,user-scalable=no" />
		<title></title>
		<!--引入bootstrap的核心css-->
		<link rel="stylesheet" href="js/bootstrap/css/bootstrap.css" />
		<!--引入日历css-->
		<link rel="stylesheet" href="js/datetimepicker/jquery.datetimepicker.css" />

		<!--判断如果是IE9以下，引入兼容h5标签的js文件，注意空格的位置-->
		<!--[if lt IE 9]>
		<script src="js/bootstrap/js/html5shiv.min.js"></script>
		<script src="js/bootstrap/js/respond.min.js"></script>		
		<![end if] -->

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
</style>
		
		
		
	</head>

	<body    background="img/back.jpg" no-repeat;background-size:auto;   >
		
		
		
		
		<div class="bg_center_v_tile">
	  <div class="bg_top_h_tile">
	    <div class="bg_top_owner">
	      <div class="bg_bottom_h_tile">	      
	        <div class="bg_bottom_owner">
	          <div id="page_head">	          
				<div class="qianban17886_banner_xq17886_20180425">
			 		<div class="banner">
						<a href="index.jsp">首页</a>
				  		<a href="news.jsp">赛事快讯</a>
				  		<a href="queryAllTeamInfo">球队</a>
				  		<a href="allstar.jsp">球星</a>
				  		<a href="queryAllGame2.jsp">世界杯GOAL</a>
				  		<a href="login.jsp">登录</a>
					</div>
				</div>
			  </div>
			  
			  
			  
			  
			  <div class="container">

			<span style="font-size: 50px;">2018世界杯赛况</span>

			<table class="table table-bordered table-striped" id="dataTable" style="margin-left: 0px;">
				<thead style="background-color: lightskyblue ;">
					<tr>
						<th>队伍名称</th>
						<th>队伍进球数</th>
						
						<th>队伍排行</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<!--<tr>
						<td>100</td>
						<td>tom</td>
						<td>tom@163.com</td>
						<td>13012345678</td>
						<td>开发部</td>
						<td>程序员</td>
						<td>
							<input type="button" value="删除" class="btn btn-danger btn-sm del-btn"/>
							<input type="button" value="详情" class="btn btn-success btn-sm update-btn" />
						</td>
					</tr>-->
				</tbody>
			</table>

			<div class="row" style="margin-top: 20px;">
				<div class="col-sm-offset-8 col-sm-4">
					<a href="insertGame.jsp" class="btn btn-success btn-block">增加新队伍</a>
					<a href="myFollow.jsp" class="btn btn-success btn-block">我的关注</a>
				</div>
			</div>

		</div>
			  
			  
			  
	
				<div id="page_body">
					<div class="column_wrapper_13292">
						<div id="SUBD1526869985062680">
							<div class="qiuxing17931_ind01">
							<!-- 信息 -->
							<div class="intro" style="margin-left:180px;">
							<div class="name">
								<div class="brief" id="playerdata">
		
								</div>
							</div>
							</div>
							
							
								<div class="right">
									<div class="star" id="star">
										<!-- <img src="img/messi.jpg" alt=""/> -->
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
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		<!--引入jquery-->
		<script src="js/jquery.js"></script>
		<!-- 引入全局js -->
		<script src="js/global.js"></script>
		<!--引入请求参数插件js-->
		<script src="js/param.js"></script>
		<!--引入bootstrap的js功能-->
		<script src="js/bootstrap/js/bootstrap.js"></script>
		<!--引入layer插件-->
		<script src="js/layer/layer.js"></script>
		<!--引入日历js-->
		<script src="js/datetimepicker/jquery.datetimepicker.js"></script>

		<script>
			$(function() {

				//初始化调用
				getData();

			});

		
			function getData() {
				$.getJSON('queryAllGame', function(data) {
					var list = data; //获得数据集合
					var html; //拼接html字q符串
					var dataTable = $('#dataTable tbody');
					//清空原始内容
					dataTable.empty();
					//遍历数据集合
					$.each(list, function(index, item) {

						html = '<tr>';
						//html += '	<td>' + item.Id + '</td>';
						html += '	<td><img src="' + item.gHeader + '" width="100" height="49" />' + item.gName + '</td>';
						html += '	<td>' + item.gGoal + '</td>';
						
						html += '	<td>' + item.gRanking + '</td>';
						//html += '	<td>' + item.gGoal + '</td>';
						//html += '	<td><img src="' + item.uHeader + '" width="50" height="50" /></td>';
						html += '	<td>';
						html += '		<input type="button"   class="btn btn-danger btn-sm"  onClick="deleteGame(' + item.gId + ')" value="删除"/>';
						html += '		<a class="btn btn-info btn-sm" href="queryGameById?gId=' + item.gId + '">修改</a>';
						
						html += '		<a  class="btn btn-danger btn-sm"  title="点击关注此球队"  onClick="followGame(' + item.gId + ')" ><img  src="img/follow.png" width="40px" height="35px" / ></a>';
						
						
						
						html += '	</td>';
						html += '</tr>';

						dataTable.append(html);
					});
				});
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			function deleteGame(gId) {
				if (confirm("确认删除吗？")) {
					//删除掉
					$.get("deleteGameById", {
						gId: gId
					}, function(data) {

						if (data == 'yes') {
							alert("删除成功");
							getData();
						}
					});
				}
			}
			
			
				function followGame(gId) {
				if (confirm("确认关注吗？")) {
					//删除掉
					$.get("followGame", {
						gId: gId
					}, function(data) {

						if (data == 'yes') {
							alert("关注成功");
							getData();
						}
					});
				}
			}
			
			
			
			
			
			
		
			
			
			
		</script>
		
		
		
		
		
		
		
		
		
		
		
		
	</body>

</html>