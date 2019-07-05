<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${player.pName}_世界杯球星</title>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/star/Messi/style/style.css-3673e98d69f4cedf2ee01d64ff5b3def.css" />
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqnav/style/style.css-7e2cc264e5277cb6b4bbca73c732b556.css"/>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqbanner/style/style.css-fafb0e849bb3f254505034cc2446336b.css"/>
<link rel="stylesheet" href="css/query2.css" />
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
							<!-- <div class="qiuxing17931_ind01" style="margin-top:0px;"> -->
							<!-- 信息 -->
							<div class="intro" style="margin-left:10px;">
							<div class="name">
								<div class="brief" id="playerdata">
										<div class="right_area" id="star">
												<!-- ***************Data************* -->
										</div>
								</div>
							</div>
							</div>
								<div class="right">
									
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

<script>
			$(function() {
				//初始化调用
				getData();	
			});
			//分页查询函数
			function getData() {

				$.getJSON('queryAllPlayer', function(data) {
						var list = data; //获得数据集合
						var html; //拼接html字符串
						var star = $('#playerdata div');
						//清空原始内容
						star.empty();
						//遍历数据集合
						$.each(list, function(index, item) {

							html = '<div class="img_line">';
							
							/* html += '<div class="img_block">'
							html += '	<img onclick="query(' + item.pId + ')" class="img1" src="'+ item.pPic +'" />';
							html += '</div>';
							
							html = '<div class="img_block">'
							html += '	<img onclick="query(' + item.pId + ')" class="img1" src="'+ item.pPic +'" />';
							html += '</div>'; */
								
							html = '<div class="img_block">'
							html +='<form action="" method="post" id="form1"> '
							html += '	<img onclick="query(' + item.pId + ')" class="img1" src="'+ item.pPic +'" title="'+ item.pName + '" />';
							html +='</form>'
							html += '</div>';
							
							
							html += '</div>'
							
							star.append(html);
						});
					});
				}
			
			function query(pId) {
					var form1=document.getElementById("form1");
					form1.action="queryPlayerById2"+"?pId="+pId;
					form1.submit();
					
			}
		</script>

</body>
</html>