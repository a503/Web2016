<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%@ include file="/WEB-INF/include/include-header.jspf" %>

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
                    <a href="/first/dblab/logout.do">
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
							<a href="/first/dblab/studentList.do"><i class="glyphicon glyphicon-cog"></i>학원생 관리</a>
						</li>
						<li>
							<a href="/first/dblab/cashCheck.do"><i class="glyphicon glyphicon-usd"></i>수강료 납부현황</a>
						</li>
					</ul>
					<!-- /.nav-second-level -->
				</li>
				<li class="active2">
					<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 출석부 관리<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="/first/dblab/dayLog.do"><i class="glyphicon glyphicon-list"></i>일일업무일지</a>
						</li>
						<li>
							<a href="/first/dblab/studentLog.do"><i class="glyphicon glyphicon-book"></i>학생별업무일지</a>
						</li>
					</ul>
					<!-- /.nav-second-level -->
				</li>
				<li>
					<a href="/first/dblab/cashbook.do"><i class="glyphicon glyphicon-usd"></i> 현금 출납부</a>
				</li>
				<li>
					<a href="/first/dblab/file.do"><i class="glyphicon glyphicon-folder-open"></i> 자료실</a>
				</li>
				<li>
					<a href="/first/dblab/admin.do"><i class="glyphicon glyphicon-tags"></i> 관리자 페이지</a>
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
					<span class="col-lg-6">
						<div class="panel panel-default">
	                        <div class="panel-heading my-panel">
								자산
							</div>
							<div class="panel-body">
								<div id="moneyChart">
								</div>
							</div>
						</div>
					</span>
					<span class="col-lg-6">
						<div class="panel panel-default">
	                        <div class="panel-heading my-panel">
								수강료 납부현황
							</div>
							<div class="panel-body">
								<div id="cashCheck">
								</div>
							</div>
						</div>
					</span>
			</div>
				
			
		
		</div><!-- /#page-wrapper -->
        
    
    </div><!-- /#wrapper -->
	<script>
		new Morris.Line({
			
		element: 'moneyChart',
		data:[
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach var="row" items="${list}" varStatus="status">
							{ year: '${row.C_DATE}', value : ${row.C_TOTAL}},
					</c:forEach>
				</c:when>
			</c:choose>
		],
		xkey: 'year',
		ykeys: ['value'],
		labels: ['Value']
		});
	</script>
	<script>
		new Morris.Bar({
			element: 'cashCheck',
			data:[
				<c:choose>
					<c:when test="${fn:length(list1) > 0}">
						<c:forEach var="row1" items="${list1}" varStatus="status">
								{ x: '수납자 & 미납자', a: ${row1.S_CHECK_Y} , b: ${row1.S_CHECK_N}},
						</c:forEach>
					</c:when>
				</c:choose>    
			],
			xkey: 'x',
			ykeys: ['a', 'b'],
			labels: ['수납자', '미납자']
		})
	</script>
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script>
		$(document).ready( function() {
		  $("#load_writing").on("click", function() {
		  $("#content").load("#");
			});
		});
	</script>
</body>
</html>