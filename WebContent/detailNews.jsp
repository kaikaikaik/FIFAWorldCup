<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻详情</title>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/star/Messi/style/style.css-3673e98d69f4cedf2ee01d64ff5b3def.css" />
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqnav/style/style.css-7e2cc264e5277cb6b4bbca73c732b556.css"/>
<link type="text/css" rel="stylesheet" href="r.img.cctvpic.com/worldcup/2018/include/sqbanner/style/style.css-fafb0e849bb3f254505034cc2446336b.css"/>
<link href="head/cropper.min.css" rel="stylesheet">
<link href="head/sitelogo.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="js/datetimepicker/jquery.datetimepicker.css">
<link rel="stylesheet" type="text/css" href="css/detail.css" />
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
	<input type="hidden" id="nId" value="<%=request.getParameter(" nId ")%>">
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
							<div class="intro" style="margin-left:180px;">
							<div class="name">
								<div class="brief" id="playerdata">
									
									<div class="left">
										<div id="ntitle"></div>
										<div id="ntime">
										<input type="image" id="dianzan_btn" value="点赞"
											style="width: 25px;height: 20px;" src="img/ax1.png"></input>
											<label style="font-weight: 100;margin-left: 50px;">获赞数: </label>
												<label id = "thump_" style="font-weight: 100;"></label>
												<label id = "time_" style="font-weight: 100;margin-left: 30px;"></label>
											</div>
										<div id="ninfo"></div>
									<div>
												
								</div>
							</div>
						<div class="right" id="right">
							<!-- <img id="right_img" src="" /> -->
						</div>
									
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
	<script src="js/jquery.js"></script>
	<!-- 引入全局js -->
	<script src="js/global.js"></script>
	<!--引入bootstrap的js功能-->
	<script src="js/bootstrap/js/bootstrap.js"></script>
	<!--引入layer插件-->
	<script src="js/layer/layer.js"></script>
	<!--引入日历js-->
	<script src="js/datetimepicker/jquery.datetimepicker.js"></script>
	<script src="head/html2canvas.min.js" type="text/javascript" charset="utf-8"></script>
	
	<script type="text/javascript">
		
		$(function() {
			var result = location.search.slice(1).split("&"); //split把字符串分解成数组 
			//alert(result); 
			if(result != null) {
				var arr;
				for(var i = 0; i < result.length; i++) {
					arr = result[i].split("="); //
					//alert(arr); // 
					//alert(arr.length); 
					for(var j = 0; j < arr.length; j++) {
						if(j % 2 != 0) {
							//alert(arr[j]);
							var myid = arr[j];
							document.getElementById("nId").value = myid;
							getANew();
						}
					}
				}
			}

		});

		function getANew() {

			var Iid = document.getElementById("nId").value;
			//alert(Iid);
			$.getJSON("queryNewsById", {
				nId: Iid
			}, function(data) {

				var html = '<img src="' + data.npic + '" width="500"  height="600" style="float:right"/>';
				$("#right").html(html);
				$("#ntitle").html(data.ntitle);
				$("#thump_").html(data.thump);
				$("#time_").html('   时间: ' + data.ntime);
				$("#ninfo").html('内容' + data.ninfo);

			});
		};
		
		$("#dianzan_btn").click(function(){
    		var iId = document.getElementById("nId").value;
    		$.ajax({
        		url:"updateNewsThumpById",
        		type:"GET",
        		data:{nId:iId},
        		success:function(data){
            	if(data == 'yes'){
            		
            		
            		
            		var iid = document.getElementById('thump_').innerHTML;
            		$("#thump_").html(parseInt(iid) + 1);
             	    //alert('点赞成功！');
             	    
            	}else{
            	    alert('点赞出错！');
            	}
        }
    })
})
	</script>
	<script type="text/javascript" src="js/jquery.js"></script>
</body>
	
</html>