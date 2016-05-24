<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/first/css/bootstrap.min.css" rel="stylesheet">
	<link href="/first/font-awesome/css/font-awesome.css" rel="stylesheet">
   	<link href="/first/css/sb-admin.css" rel="stylesheet">
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
                <li class="dropdown">
                    <a href="#">
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
					<a href="#"><i class="fa fa-dashboard fa-fw"></i> 대시보드</a>
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
					<a href="#" class="list-group-item active"><i class="glyphicon glyphicon-tags"></i> 관리자 페이지</a>
				</li>
			</ul>
			<!-- /#side-menu -->
			</div>
		</nav>
        <!-- /.navbar-static-side -->
        
        <div id="page-wrapper"><!-- page wrapper -->
        	<div class="row">
	            <div class="col-lg-12">
	                <h1 class="page-header">관리자 페이지</h1>
	            </div>
	            <!-- /.col-lg-12 -->
       		</div>
       		
	        <div class="row"><!-- divPassword -->
	        	<span class="col-lg-6">
					<div class="panel panel-default">
		                <div class="panel-heading my-panel"> 관리자 비밀번호 설정</div>
		                <div class="panel-body" id="panel-member">
		                    <form class="form-horizontal" role="form">
		                        <div class="form-group">
		                            <label for="inputAdminCurPw" class="col-lg-3 control-label">현재 비밀번호</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control admin" name="inputAdminCurPw"
		                                       id="inputAdminCurPw" placeholder="현재 비밀번호">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="inputAdminNewPw" class="col-lg-3 control-label">새 비밀번호</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control admin" name="inputAdminNewPw"
		                                       id="inputAdminNewPw" placeholder="새 비밀번호">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="inputAdminNewPwR" class="col-lg-3 control-label">새 비밀번호(반복)</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control admin" name="inputAdminNewPwR"
		                                       id="inputAdminNewPwR" placeholder="새 비밀번호(반복)">
		                            </div>
		                            <div class="col-lg-2">
		                                <button type="button" class="btn btn-primary" id="btnAdminSave">저장</button>
		                            </div>
		                        </div>
		                    </form>
		                </div>
		            </div>
				</span>
				
				<span class="col-lg-6">
					<div class="panel panel-default">
		                <div class="panel-heading my-panel"> 선생님 비밀번호 설정</div>
		                <div class="panel-body" id="panel-member">
		                    <form class="form-horizontal" role="form">
		                        <div class="form-group">
		                            <label for="inputCurPw" class="col-lg-3 control-label">현재 비밀번호</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control user" name="inputCurPw" id="inputCurPw"
		                                       placeholder="현재 비밀번호">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="inputNewPw" class="col-lg-3 control-label">새 비밀번호</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control user" name="inputNewPw" id="inputNewPw"
		                                       placeholder="새 비밀번호">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="inputNewPwR" class="col-lg-3 control-label">새 비밀번호(반복)</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control user" name="inputNewPwR" id="inputNewPwR"
		                                       placeholder="새 비밀번호(반복)">
		                            </div>
		                            <div class="col-lg-2">
		                                <button type="button" class="btn btn-primary" id="btnSave">저장</button>
		                            </div>
		                        </div>
		                    </form>
		                </div>
		            </div>
				</span>
	        </div><!-- divPassword -->
	        
        	<div class="row"><!-- class list, teacher -->
	            <span class="col-lg-6">
	                <div class="panel panel-default">
	                    <div class="panel-heading  my-panel">수업 목록 관리</div>
	                    <div class="panel-body" id="panel-class">
	                        <table class="table table-condensed text-center table-hover" id="table-class">
	                            <thead>
	                            <tr>
	                                <th class='text-center'>수업명</th>
	                                <th class='text-center'>이름수정</th>
	                                <th class='text-center'>순서변경</th>
	                                <th class='text-center'>삭제</th>
	                            </tr>
	                            </thead>
	
	                            <tbody id="tbody-class">
	
	                            </tbody>
	
	                        </table>
	                    </div>
	                    <div class="panel-footer">
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                        <br>
	                        ***************************************************************************************************
	                    </div>
	                </div>
	            </span>
	            
	            <span class="col-lg-6">
	                    <div class="panel panel-default">
	                        <div class="panel-heading my-panel"> 선생님 권한 설정</div>
	                        <div class="panel-body" id="panel-member">
	                            <ul>
	                                <form id="authorForm">
	                                    <input type="hidden" name="TYPE" value="AUTH"></input>
	                                    <li>
	                                        <ol class="breadcrumb">
	                                            <li><input type="checkbox" name="dashboard2" value="dashboard2" class="input-page"></input> Dashboard</li>
	                                        </ol>
	                                    </li>
	                                    <li>
	                                        <ol class="breadcrumb">
	                                            <li><input type="checkbox" name="member" value="member" class="input-page"></input> 학원생관리</li>
	                                            <li><input type="checkbox" name="score" value="score" class="input-page"></input>성적조회</li>
	                                            <li><input type="checkbox" name="tuition" value="tuition" class="input-page"></input> 수강료납부</li>
	                                        </ol>
	                                    </li>
	                                    <li>
	                                        <ol class="breadcrumb">
	                                            <li><input type="checkbox" name="attend" value="attend" class="input-page"></input> 출석부관리</li>
	                                            <li><input type="checkbox" name="attend" value="attend" class="input-page"></input> 일일업무일지</li>
	                                            <li><input type="checkbox" name="attend" value="attend" class="input-page"></input> 학생별업무일지</li>
	                                        </ol>
	                                    </li>
	                                    <li>
	                                        <ol class="breadcrumb">
	                                            <li><input type="checkbox" name="cash" value="cash" class="input-page"></input> 현금출납부</li>
	                                        </ol>
	                                    </li>
	                                    <li>
	                                        <ol class="breadcrumb">
	                                            <li><input type="checkbox" name="bbs" value="bbs" class="input-page"></input> 자료실</li>
	                                        </ol>
	                                    </li>
	                                </form>
	                            </ul>
	                            <button type="button" class="btn btn-primary" id="btnAuthSave">저장</button>
	                        </div>
	                    </div>
	              </span>
              </div><!-- class list, teacher -->
              
        </div><!-- page wrapper -->
    </div><!-- /#wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="js/sb-admin.js"></script>
	<script>
		$(document).ready( function() {
		  $("#load_writing").on("click", function() {
		  $("#content").load("#");
			});
		});
	</script>

</body>
</html>