<#include "/common/commoncss.ftl">
 <script type="text/javascript" src="js/task/taskmanage.js"></script>
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}

.block {
	display: inline-block;
	width: 20px;
}

.co {
	color: blue;
}

.bl {
	color: black;
}

.commen {
	cursor: pointer;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">我的任务</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="javascript:window.top.changepath('test2');"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">我的任务</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12 thistable">
		<!--id="container"-->
		<#include "/task/mytasklist.ftl">
	</div>
</div>
