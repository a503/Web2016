<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Core CSS - Include with every page -->
<link href="/first/css/bootstrap.min.css" rel="stylesheet">
<link href="/first/font-awesome/css/font-awesome.css" rel="stylesheet">

<!-- Page-Level Plugin CSS - Blank -->
<link rel="stylesheet" href="/first/css/plugins/dataTables/dataTables.bootstrap.css">
<link href="/first/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">

<!-- SB Admin CSS - Include with every page -->
<link href="/first/css/sb-admin.css" rel="stylesheet">
<!-- Core Scripts - Include with every page -->
<link href="/fisrt/js/jquery-1.10.2.js">
<link href="/fisrt/js/bootstrap.min.js">
<link href="/fisrt/js/plugins/metisMenu/jquery.metisMenu.js">

<!-- SB Admin Scripts - Include with every page -->
<link href="/fisrt/js/sb-admin.js">

<title>학원 관리시스템</title>
</head>
<body>
	<div id="wrapper"><!-- /#wrapper -->
        <nav class="hidden-print navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0; background-color:#428bca;">
            <div class="hidden-print navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" style="color: white">학원 관리시스템</a>
            </div>
            <!-- /.navbar-header -->
			
			<ul class="nav navbar-top-links navbar-right">
				<li>
					<span class="badge">
						${sessionScope.admin}
					</span>
				</li>
                <li class="dropdown">
                    <a href="logout.do">
                        <span class="badge"><i class="glyphicon glyphicon-off"></i> 로그아웃</span>
                    </a>
                </li>
            </ul>

        </nav>
        <!-- /.navbar-static-top -->
		<nav class="hidden-print navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search"></li>
				<li>
					<a href="#" class="hidden-print list-group-item active"><i class="fa fa-dashboard fa-fw"></i> 대시보드</a>
				</li>
				<li class="active1">
					<a href="#"><i class="fa fa-user fa-fw"></i> 학원생 정보	<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="#">학원생 관리</a>
						</li>
						<li>
							<a href="#">성적 조회</a>
						</li>
						<li>
							<a href="#">수강료 납부현황</a>
						</li>
					</ul>
					<!-- /.nav-second-level -->
				</li>
				<li class="active2">
					<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 출석부 관리<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="#">일일업무일지</a>
						</li>
						<li>
							<a href="#">학생별업무일지</a>
						</li>
					</ul>
					<!-- /.nav-second-level -->
				</li>
				<li>
					<a href="#"><i class="glyphicon glyphicon-usd"></i> 현금 출납부</a>
				</li>
				<li>
					<a href="#"><i class="glyphicon glyphicon-folder-open"></i> 자료실</a>
				</li>
				<li>
					<a href="#"><i class="glyphicon glyphicon-tags"></i> 관리자 페이지</a>
				</li>
			</ul>
			<!-- /#side-menu -->
			</div>
		</nav><!-- /.navbar-static-side -->
		
         <div id="page-wrapper"><!-- /#page-wrapper -->
         
            <div class="row">
                <div class="col-lg-11">
                    <h1 class="page-header">Dashboard<a href="#" id="linkStats"><span class="badge hidden-print">Dashboard</span></a></h1>
                </div>
			</div>
			
			<div class="row">
				<span class="col-lg-12">
					<div class="panel panel-default">
                        <div class="panel-heading my-panel">
							Dashboard
						</div>
						<div class="panel-body">
							<ul class="nav nav-tabs">
								<li class="active"><a onclick="javascript:RefreshPointTable(100)" data-toggle="tab">a1</a></li>
								<li><a onclick="javascript:RefreshPointTable(130)" data-toggle="tab">a2</a></li>
								<li><a onclick="javascript:RefreshPointTable(150)" data-toggle="tab">a3</a></li>
							</ul>
							<table class="table table-condensed table-striped table-bordered table-hover text-center" id = 'datatables-point'>
								<thead>
									<tr>
										<th class='text-center'>b1</th>
										<th class='text-center'>b2</th>
										<th class='text-center'>b3</th>
										<th class='text-center'>b4</th>
										<th class='text-center hidden-print'><i class="glyphicon glyphicon-remove"></i></th>
									</tr>
								</thead>
									
								<tbody id = "point-body"></tbody>
							</table>
						</div>
					</div>
				</span>
			</div>
				
			<div class="row">
				<span class="col-lg-6">
					<div class="panel panel-default">
                        <div class="panel-heading my-panel"><input type="month" class="input-sm input-month" id="inputBookMonth">c1</div>
						<div class="panel-body">
							<table class="table table-condensed table-striped table-bordered table-hover text-center">
								<thead>
									<tr>
										<th class='text-center'>c2</th>
										<th class='text-center'>c3</th>
										<th class='text-center'>c4</th>
									</tr>
								</thead>
								<tbody id="bookking"></tbody>
							</table>
						</div>
					</div>
				</span>
				<span class="col-lg-6">
					<div class="panel panel-default">
                        <div class="panel-heading my-panel"><input type="month" class="input-sm input-month" id="inputShadowMonth">d1</div>
						<div class="panel-body">
							<table class="table table-condensed table-striped table-bordered table-hover text-center">
								<thead>
									<tr>
										<th class='text-center'>d2</th>
										<th class='text-center'>d3</th>
										<th class='text-center'>d4</th>
									</tr>
								</thead>
									
								<tbody id="shadowking"></tbody>
							</table>
						</div>
					</div>
				</span>
            </div><!-- /.row -->
		
		</div><!-- /#page-wrapper -->
        
    
    </div><!-- /#wrapper -->

    
	<script>
		$(document).ready( function() {
		  $("#load_writing").on("click", function() {
		  $("#content").load("#");
			});
		});
	</script>
</body>
</html>