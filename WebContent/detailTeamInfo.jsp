<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
        	body{
        		background-repeat: no-repeat;
        		background-image: url(img/detail.PNG);
        	}
        	.content{				
				margin-left:10px;
				margin-right: 20px;
			}					
			#name{
				padding: 2px;
				font-size: 60px;
				font-weight: 800;
				font-family: "楷体";
				display: inline-block;
			}
			#img{
				padding: 2px;
				font-size: 30px;
				font-weight: 600;
				font-family: "楷体";
				display: inline-block;
			}
			#birthday{
				font-size: 30px;
				font-weight: 400;
				display: inline-block;
			}
			#info{
				padding: 2px;
				font-size: 30px;
				font-weight: 500;
			}
			.left{
				
				width: 80%;
				float: left;
				
			}
			.right{
				width: 20%;
				float: right;
			}
			#right{
				margin-top: 20px;
				margin-left: 50px;
			}
			.img-style{
				border-radius: 10px;
				margin: 3px;
				width: 180px;
				height: 180px;
				transition: all 1s;
			}
			.img-style:hover{
				transform: scale(1.5);
			}
        </style>
    </head>
    <body >
    	<div class="content">
    		<div class="left">
				<div id="name">${team.tName }</div>
				<div id="birthday">球队主教练： ${team.tCoach }</div>
				<p id="info">&nbsp;&nbsp; ${team.tInfo }</p>				
				<div id="img">球队照片：</div>
				<div  id="right">
					<img class="img-style" src="${team.tPic }" />
				</div>	
			</div>
			<div class="right" id="right">
			
			</div>
		</div>	
 	</body>
</html>