<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<!--设置浏览器的布局视口，只在移动端浏览器起作用-->
		<meta name="viewport" content="width=width-device,initial-scale=1,user-scalable=no" />
		<title>2018世界杯</title>
		<!--引入bootstrap的核心css-->
		<link rel="stylesheet" href="js/bootstrap/css/bootstrap.css" />
		<!--引入日历css-->
		<link rel="stylesheet" href="js/datetimepicker/jquery.datetimepicker.css" />
		<link rel="stylesheet" href="css/query.css" />
		
		<style>
			.pagination {
				margin: 0!important;
			}
			body{
				/*background:#fff url("img/WC2.jpg") no-repeat left top;*/
  				background-size:100%;
			}
			.con01 a{
				text-decoration:none;
				margin-left:0px;
				color:#ede9c3;
				font-size:30px;
			}
		</style>
	</head>

	<body >
		<div class="shijiebeiA17891_md01">
			<div class="con">
				<div class="con01">	
				<div class="logo">
					<img src="img/2018WC.png" />
				</div>
				<div class="logos">
					<div class="yangshi"><img src="img/biaoti1.gif" width="448" height="87"></div>
						<div class="mouse">
							<img src="img/gundong.gif" width="54" height="67"> 
							<p>滚动查看</p>
						</div>
					</div>
				</div>
			</div>
		<div class="clear"></div>
	<div class="shijiebeiA17891_con01" id="imgShow">
		<div class="prev"></div>
		<div class="cont">
			<ul id="top_list"></ul>
		</div>
		<div class="next"></div>
	</div>
	<div style=" height:100%;"></div>
	</div>

		<!--<div class="container">
			<div class="top_daohang">
				<div style="margin: 0 auto; width:1200px;display:block;vertical-align: middle;padding-top: 30px;">
					<img src="img/biaoti1.gif" width="448" height="87">
				</div>
				
			</div>-->
			<div class="banner">
				<a href="index.jsp">首页</a>
		  		<a href="news.jsp">赛事快讯</a>
		  		<a href="queryAllTeamInfo">球队</a>
		  		<a href="allstar.jsp">球星</a>
		  		<a href="queryAllGame2.jsp">世界杯GOAL</a>
		  		<a href="login.jsp">登录</a>
			</div>
			
			<div class="news_area">
				<div class="info_nav">
					<h2 class="biaoti_">世界杯新闻</h2>
				<div class="news_list">
					<ul id="news_ul">
					</ul>
				</div>
				
				<div class="right_area">
					<div class="img_line">
						<div class="img_block">
							<img class="img1" src="img/1.jpg" />
						</div>
						<div class="img_block">
							<img class="img1" src="img/2.jpg"/>
						</div>
					</div>
					
					<div class="img_line">
						<div class="img_block">
							<img class="img1" src="img/3.jpg" />
						</div>
						<div class="img_block">
							<img class="img1" src="img/4.jpg" />
						</div>
					</div>
					<div class="img_line">
						<div class="img_block">
							<img class="img1" src="img/5.jpg" />
						</div>
						<div class="img_block">
							<img class="img1" src="img/6.jpg" />
						</div>
					</div>
				</div>
				</div>

			</div>
			<!--<div class="row" style="margin-top: 20px;">
					<div class="col-sm-offset-8 col-sm-4">
						<a href="insertNews.jsp" class="btn btn-success btn-block">发布新闻</a>
					</div>
			</div>-->
			
			<div id="page_bottom">
			<div class="cntv_footer_hdc"><b></b></div>
			<div class="cntv_footer">
			<div class="bottom_link"><a href="http://www.dlnu.edu.cn/comd/" target="_blank">计算机科学与工程学院</a>|<a href="NewFile.jsp" target="_blank">联系XK小组</a>|<a>网站声明</a>|<a>法律顾问</a>|</a></div>
			<div class="bottom_copyright">
			<p>大连民族大学&nbsp;&nbsp;计算机科学与工程&nbsp;&nbsp;CopyRight@&nbsp;&nbsp;xk小组<br />
			<a href="http://help.cntv.cn/2018/01/22/ARTIRZ81GBdnWp16VY09UpJd180122.shtml" target="_blank">违法和不良信息举报电话:110-8888888</a>&nbsp;&nbsp;<a href="http://www.miibeian.gov.cn/" target="_blank">京ICP证888888号</a>&nbsp;&nbsp;<a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000018"><img src="http://r.img.cctvpic.com/beian/files/ghs.png">俄罗斯8888888888888号</a>&nbsp;&nbsp;世界杯[2018]8888-888号<br />
			网上传播视听节目许可证号 888888&nbsp;&nbsp;新出网证（辽）字888号&nbsp;&nbsp;<a target="_blank" href="http://www.cctv.com/special/zlgy/zlgy/index.shtml">中国互联网视听节目服务自律公约</a>
			</p>
			<div class="copyright_wangjing_logo"> <a href="javascript:;" style="cursor:default;"><img width="115" height="48" border="0" name="wangjing" src="http://p5.img.cctvpic.com/10/2012/01/16/20120116/image/wangjing.gif"></a> </div>
			<div class="copyright_gongshang_logo"><a href="javascript:;" style="cursor:default;"><img src="http://www.cctv.com/Library/images/100011_gongshang.gif" width="29" height="39" id="gongshang" /></a></div>
			<div class="clear_float"></div>
			</div>
			</div>
			<div class="cntv_footer_ftc"><b></b></div>
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
			//分页查询函数
			function getData() {

				$.getJSON('queryAllNews', function(data) {
						
						var list = data; //获得数据集合

						var html; //拼接html字符串

						var newul = $('#news_ul');

						//清空原始内容
						newul.empty();

						//遍历数据集合
						$.each(list, function(index, item) {
							
							html = '<li class="news_li">';
							html += '	<input  type="hidden" value="'+ item.nid +'"/>'
							html += '	<a class="a_txt" target="_blank" href="detailNews.jsp?thisid='+ item.nid +'">';
							html += '   '+ item.ntitle + '';
							html += '	</a>';
							html += '	<span class = "date_time">'+ item.ntime +'</span>';
							html += '</li>';

							newul.append(html);
						});
					});
				}
		</script>
	</body>

</html>