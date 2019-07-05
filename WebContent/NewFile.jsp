<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>xk小组</title>
	<style type="text/css">
		* {
			padding: 0;
			margin: 0;
			list-style: none;
		}
		html,body {
			height: 100%;
		}
		.main {
			height: 100%;
			width: 100%;
			-webkit-background-size: cover;
			background-size: cover;
			overflow: hidden;
			position: relative;
		}
		.main ul {
			height: 100%;
			width: 3920px;
			position: absolute;
			top: 0;
			left: 0;
			animation: dong 50s linear infinite;
		}
		@keyframes dong {
			0% {
				left: 0;
			}
			100% {
				left: 1920px;
			}
		}
		.main ul li {
			height: 100%;
			width: 100%;
			background: url("imgs/2.jpg");
			float: left;
			margin-left: -2000px;
		}
		.wk {
			z-index: 999;
			width: 200px;
			height: 180px;
			background: url("imgs/west_01_3ca39fe.png") 0 0 no-repeat;
			position: absolute;
			top: 55%;
			left: 20%;
			animation: wkzou 1s steps(8) infinite;
		}
		@keyframes wkzou {
			to {
				background-position: -1600px 0;
			}
		}
		.bj {
			z-index: 999;
			width: 200px;
			height: 180px;
			background: url("imgs/west_02_47bad19.png") 0 0 no-repeat;
			position: absolute;
			top: 55%;
			left: 35%;
			animation: bjzou 1s steps(8) infinite;
		}
		@keyframes bjzou {
			to {
				background-position: -1600px 0;
			}
		}
		.ts {
			z-index: 999;
			width: 188px;
			height: 240px;
			background: url("imgs/west_03_f962447.png") 0 0 no-repeat;
			position: absolute;
			top: 50%;
			left: 50%;
			animation: tszou 1s steps(8) infinite;
		}
		@keyframes tszou {
			to {
				background-position: -1360px 0;
			}
		}
		.ss {
			z-index: 999;
			width: 210px;
			height: 200px;
			background: url("imgs/west_04_6516d80.png") 0 0 no-repeat;
			position: absolute;
			top: 57%;
			left: 62%;
			animation: sszou 1s steps(8) infinite;
		}
		@keyframes sszou {
			to {
				background-position: -1680px 0;
			}
		}
	</style>
	
</head>
<body>

    <div class="wk">肖凯(组长)</div>
    <div class="bj">陆兴旺(陆狗)</div>
    <div class="ts">
    	<span>旋哥(组长的大腿)</span><br><br>
    	<span style="float:right;">李晶锦(组长儿子)</span>
    	<br><br><br><br><br><br>
    	<span>本小组现承接广告业务，欢迎致电！</span>
    </div>
    <div class="ss">杨雪(小美女)</div>
    <div class="main">
        <ul>
        	<li></li>
        	<li></li>
        </ul>
    </div>
</body>
</html>