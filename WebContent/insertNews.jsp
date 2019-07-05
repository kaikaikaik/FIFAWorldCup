<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<!--设置浏览器的布局视口，只在移动端浏览器起作用-->
		<meta name="viewport" content="width=width-device,initial-scale=1,user-scalable=no" />
		<title></title>
		<script src="head/jquery.min.js"></script>

		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link href="head/cropper.min.css" rel="stylesheet">
		<link href="head/sitelogo.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="js/datetimepicker/jquery.datetimepicker.css">
		<script src="head/bootstrap.min.js"></script>
		<script src="head/cropper.js"></script>
		<script src="head/sitelogo.js"></script>

		<style type="text/css">
			.avatar-btns button {
				height: 35px;
			}
			
			.header-img {
				border-radius: 50%;
			}
			body{
				background:#fff url("img/BG4.jpg") no-repeat left top;
  				background-size:100%;
			}
		</style>

		<!--判断如果是IE9以下，引入兼容h5标签的js文件，注意空格的位置-->
		<!--[if lt IE 9]>
		<script src="js/bootstrap/js/html5shiv.min.js"></script>
		<script src="js/bootstrap/js/respond.min.js"></script>		
		<![end if] -->
	</head>

	<body>
		<div class="container">

			<h2 class="page-header">发布实时新闻</h2>
			<center>
				<div class="header" id="header">
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#avatar-modal" style="margin: 10px;">上传热点头像</button>
				</div>
			</center>
			<div class="user_pic" style="margin: 10px;">
				
			</div>

			<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<!--<form class="avatar-form" action="upload-logo.php" enctype="multipart/form-data" method="post">-->
						<form class="avatar-form">
							<div class="modal-header">
								<button class="close" data-dismiss="modal" type="button">&times;</button>
								<h4 class="modal-title" id="avatar-modal-label">上传图片</h4>
							</div>
							<div class="modal-body">
								<div class="avatar-body">
									<div class="avatar-upload">
										<input class="avatar-src" name="avatar_src" type="hidden">
										<input class="avatar-data" name="avatar_data" type="hidden">
										<label for="avatarInput" style="line-height: 35px;">图片上传</label>
										<button class="btn btn-danger" type="button" style="height: 35px;" onClick="$('input[id=avatarInput]').click();">请选择图片</button>
										<span id="avatar-name"></span>
										<input class="avatar-input hide" id="avatarInput" name="avatar_file" type="file"></div>
									<div class="row">
										<div class="col-md-9">
											<div class="avatar-wrapper"></div>
										</div>
										<div class="col-md-3">
											<div class="avatar-preview preview-lg" id="imageHead"></div>
											<!--<div class="avatar-preview preview-md"></div>
						<div class="avatar-preview preview-sm"></div>-->
										</div>
									</div>
									<div class="row avatar-btns">
										<div class="col-md-4">
											<div class="btn-group">
												<button class="btn btn-danger fa fa-undo" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees"> 向左旋转</button>
											</div>
											<div class="btn-group">
												<button class="btn  btn-danger fa fa-repeat" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees"> 向右旋转</button>
											</div>
										</div>
										<div class="col-md-5" style="text-align: right;">
											<button class="btn btn-danger fa fa-arrows" data-method="setDragMode" data-option="move" type="button" title="移动">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
								</span>
							  </button>
											<button type="button" class="btn btn-danger fa fa-search-plus" data-method="zoom" data-option="0.1" title="放大图片">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, 0.1)">
								  <!--<span class="fa fa-search-plus"></span>-->
								</span>
							  </button>
											<button type="button" class="btn btn-danger fa fa-search-minus" data-method="zoom" data-option="-0.1" title="缩小图片">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, -0.1)">
								  <!--<span class="fa fa-search-minus"></span>-->
								</span>
							  </button>
											<button type="button" class="btn btn-danger fa fa-refresh" data-method="reset" title="重置图片">
									<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;reset&quot;)" aria-describedby="tooltip866214">
									</span>
							   </button>
										</div>
										<div class="col-md-3">
											<button class="btn btn-danger btn-block avatar-save fa fa-save" type="button" data-dismiss="modal"> 保存修改</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

			<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>

			<form id="form1" class="form-horizontal" action="insertNews" method="post">
				<input type="hidden" name="npic" id="npic" />
				<div class="form-group">
					<label for="" class="col-md-2">新闻时间</label>
					<div class="col-md-10">
						<input id="ntime" name="ntime" type="text" placeholder="输入新闻发生时间" class="form-control"  />
					</div>
				</div>
				<div class="form-group">
					<label for="" class="col-md-2">新闻标题</label>
					<div class="col-md-10">
						<input id="ntitle" name="ntitle" type="text" placeholder="新闻内容" class="form-control" onchange="checkInfo()"/>
					</div>
				</div>
				<div class="form-group">
					<label for="" class="col-md-2">新闻内容</label>
					<div class="col-md-10">
						<textarea id="ninfo" name="ninfo" style="height: 230px;"
							placeholder="输入新闻内容" class="form-control" onchange="checkInfo()">
						</textarea>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-md-10 col-md-offset-2">
						<input type="submit" value="发布" class="btn btn-success" id="addBtn" />
						<input type="button" value="取消" class="btn btn-danger" onclick="history.back();" />
					</div>
				</div>
			</form>
		</div>

		<!--引入jquery-->
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
			//做个下简易的验证  大小 格式 
			$('#avatarInput').on('change', function(e) {
				var filemaxsize = 1024 * 5; //5M
				var target = $(e.target);
				var Size = target[0].files[0].size / 1024;
				if (Size > filemaxsize) {
					alert('图片过大，请重新选择!');
					$(".avatar-wrapper").childre().remove;
					return false;
				}
				if (!this.files[0].type.match(/image.*/)) {
					alert('请选择正确的图片!')
				} else {
					var filename = document.querySelector("#avatar-name");
					var texts = document.querySelector("#avatarInput").value;
					var teststr = texts; //你这里的路径写错了
					testend = teststr.match(/[^\\]+\.[^\(]+/i); //直接完整文件名的
					filename.innerHTML = testend;
				}

			});

			$(".avatar-save").on("click", function() {
				var img_lg = document.getElementById('imageHead');
				// 截图小的显示框内的内容
				html2canvas(img_lg, {
					allowTaint: true,
					taintTest: false,
					onrendered: function(canvas) {
						canvas.id = "mycanvas";
						//生成base64图片数据
						var dataUrl = canvas.toDataURL("image/jpeg");
						var newImg = document.createElement("img");
						newImg.src = dataUrl;
						imagesAjax(dataUrl);
						//创建一个图片标签
						var html = '<img src="' + dataUrl + '" class="header-img" />';
						//添加到header 的div中
						$("#header").html(html);
						//赋值到表单数据中
						$("#npic").val(dataUrl);

					}
				});
			})

			function imagesAjax(src) {
				var data = {};
				data.img = src;
				data.jid = $('#jid').val();
				$.ajax({
					url: "upload-logo.php",
					data: data,
					type: "POST",
					dataType: 'json',
					success: function(re) {
						if (re.status == '1') {
							$('.user_pic img').attr('src', src);
						}
					}
				});
			}
		</script>
		<script type="text/javascript">
			function checkInfo() {
				var uName = $("#ninfo").val();
				if (uName.length == 0) {
					alert("新闻为空");
					$("#ninfo").focus();
				}
			}
		</script>

		<script type="text/javascript" src="js/datetimepicker/jquery.datetimepicker.js"></script>
		<script type="text/javascript">
			$(function() {
				// 给文本框绑定日历控件
				$('#ntime').datetimepicker({
					lang: 'ch',
					format: 'Y-m-d',
					formatDate: 'Y-m-d',
					timepicker: false
				});

			});
		</script>
	</body>

</html>