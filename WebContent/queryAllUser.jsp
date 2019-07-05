<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<script type="text/javascript" src="www.cctv.com/Library/a2.js"></script>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/star/Messi/style/style.css-3673e98d69f4cedf2ee01d64ff5b3def.css" />
<script type="text/javascript" src="r.img.cctvpic.com/photoAlbum/templet/js/jquery-1.7.2.min.js" ></script>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqnav/style/style.css-7e2cc264e5277cb6b4bbca73c732b556.css"/>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqbanner/style/style.css-fafb0e849bb3f254505034cc2446336b.css"/>
<style>
	.table{
		margin-left:80px;
	}
	.table1 th,td,a{
		font-size:12px;
		color:#15467a;
		width:200px;
		text-align: center;
	}
	.page-header{
		font-size:35px;
		color:#15467a;
		margin-left:500px;
		margin-top:30px;
	}
	.table1{
		height:50px;
	}
	.table2{
		height:30px;
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
	
				<div id="page_body">
					<div class="column_wrapper_13292">
						<div id="SUBD1526869985062680">
							<div class="qiuxing17931_ind01">
							<!-- 信息 -->
							<div class="intro" style="margin-left:0px;">
							<div class="name">
								<div class="brief" id="playerdata">
									<h2 class="page-header">用户数据列表</h2>
									<div class="vspace" style="height:30px;"></div>
									<table class="table" id="dataTable">
										<thead>
											<tr class="table1">
												<th>用户名</th>
												<th>密码</th>
												<th>用户头像</th>
											</tr>
										</thead>
										<tbody>
											
										</tbody>
				
									</table>
								</div>
							</div>
							</div><!-- 
								<div class="right">
									<div class="star" id="star">
										<img src="img/messi.jpg" alt=""/>
										模糊效果
										<span class="cover"></span>
									</div>
								</div> -->
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

<script type="text/javascript">
			$(function() {
				//初始化调用
				getData();
			});
			//查询函数
			function getData() {
				$.getJSON('queryAllUser', function(data) {
					var list = data; //获得数据集合
					var html; //拼接html字符串
					var dataTable = $('#dataTable tbody');
					//清空原始内容
					dataTable.empty();
					//遍历数据集合
					$.each(list, function(index, item) {
						html = '<tr class="table2">';
						html += '	<td>' + item.uUser + '</td>';
						html += '	<td>' + item.uPwd + '</td>';
						html += '	<td><img src="' + item.uPic + '" width="50px" height="50px"/></td>';
						html += '   <td></td>'
						html += '	<td>';
						html += '		<span onClick="deleteUserById(' + item.uId + ')">删除</span>';
						html += '		<a href="queryUserById?uId=' + item.uId + '">修改</a>';
						html += '		<a href="insertUser.jsp">增加</a>';
						html += '	</td>';
						html += '</tr>';
						dataTable.append(html);
					});
				});
			}
			
			function deleteUserById(uId) {
				if (confirm("确认删除吗？")) {
					//删除掉
					$.get("deleteUserById", {
						uId: uId
					}, function(data) {
						if (data == 'yes') {
							alert("删除成功");
							getData();
						}
					});
				}
			}
	</script>
</body>
</html>