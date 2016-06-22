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
					<a href="/first/dblab/dash.do"><i class="fa fa-dashboard fa-fw"></i> 대시보드</a>
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
		                    <form class="form-horizontal" action="passChange.do" role="form">
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
		                                <button type="submit" class="btn btn-primary" id="btnAdminSave">저장</button>
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
		                    <form class="form-horizontal" action="passChangeT.do" role="form">
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
		                                <button type="submit" class="btn btn-primary" id="btnSave">저장</button>
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
	                    <div class="panel-heading">
							<div class="row">
								<div class="col-md-4 my-panel"">수업 목록 관리 <span id="selector"></span></div>
								<div class="col-md-1 col-md-offset-6">
									<a type="button" class="btn btn-info btn-xs hidden-print"  id="btnNewLecture">
										<i class="glyphicon glyphicon-plus"></i> 수업 등록
									</a>
								</div>
							</div>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="lectureModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        	<div class="modal-dialog">
                        		<div class="modal-content">
                        			<form action="lectureEnroll.do" method="post">
                        				<div class="modal-header">
                        					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        					<h5 class="modal-title" id="modalTitle"></h5>
                        				</div>
                        				<div class="modal-body">
                        					<fieldset>      
		                                        <div class="form-group">
		                                        	<label class="control-label" for="slname">수업명(*)</label>
		                                        	<input class="form-control" type="text" name="lname" id="lname">
		                                        </div>
		                                        <div class="form-group">
		                                        	<fieldset>
		                                        		<legend style="font-size:14px; font-weight:bold" align="top">수업요일(*)</legend>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="ld" id="ld" value="화">화
		                                        		</label>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="ld" id="ld" value="수">수
		                                        		</label>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="ld" id="ld" value="목">목
		                                        		</label>
		                                        	</fieldset>
		                                        </div>
		                                        <div class="form-group">
		                                        	<fieldset>
		                                        		<legend style="font-size:14px; font-weight:bold" align="top">수업시간(*)</legend>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="lt" id="lt" value="16:00~17:50">16:00~17:50
		                                        		</label>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="lt" id="lt" value="18:00~19:50">18:00~19:50
		                                        		</label>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="lt" id="lt" value="20:00~21:50">20:00~21:50
		                                        		</label>
		                                        	</fieldset>
		                                        </div>
		                                        <div class="form-group">
		                                        	<label class="control-label" for="slname">수업료(*)</label>
		                                        	<input class="form-control" type="text" name="lmoney" id="lmoney">
		                                        </div>
		                                    </fieldset>
                        				</div>
                        				<div class="modal-footer">
		                                    <fieldset>
		                                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		                                        <button type="submit" class="btn btn-primary">등록</button>
		                                    </fieldset>
		                                </div>	
                        			</form>
                        		</div>
                        	</div>
                        </div><!-- /Modal -->
	                    <div class="panel-body" id="panel-class">
	                        <table class="table table-condensed text-center table-hover" id="table-class">
	                            <thead>
	                            <tr>
	                                <th class='text-center'>수업명</th>
	                                <th class='text-center'>수업시간</th>
	                                <th class='text-center'>수업요일</th>
	                                <th class='text-center'>삭제</th>
	                            </tr>
	                            </thead>
								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) > 0}">
						                    <c:forEach var="row" items="${list}" varStatus="status">
						                        <tr>
						                        	<input type="hidden" id="${row.L_IDX }" name="LIDX" value="${row.L_IDX }">
						                            <td>${row.L_NAME }</td>
						                            <td>${row.L_TIME }</td>
						                            <td>${row.L_DAY }</td>					                           
						                            <td><a href="#this" class="btn" id="${row.L_IDX }td"><i style="color:red" class="glyphicon glyphicon-exclamation-sign"></i></a></td>
						                            <script>
							                            $('#${row.L_IDX }td').on("click", function(e){
							                    			e.preventDefault();
							                    			fn_${row.L_IDX }();
							                    		});
							                            function fn_${row.L_IDX }(){
							                    			var comSubmit = new ComSubmit();
							                    			comSubmit.setUrl("<c:url value='/dblab/deleteLecture.do' />");
							                    			comSubmit.addParam("LIDX", $("#${row.L_IDX }").val());
							                    			comSubmit.submit();
							                    		}
							                        </script>							                            							                          
						                        </tr>
						                    </c:forEach>
						                </c:when>
						                <c:otherwise>
							                    <tr>
							                        <td colspan="10">조회된 결과가 없습니다.</td>
							                    </tr>
							                </c:otherwise> 
									</c:choose>
								</tbody>
	                        </table>
	                    </div>
	                    <div class="panel-footer">
	                        ***************************************************************************************************
	                    </div>
	                </div>
	            </span>
	            
              </div><!-- class list, teacher -->
              
        </div><!-- page wrapper -->
    </div><!-- /#wrapper -->

    <%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script>
		var $modalTitle=$('#modalTitle');
		
		$(document).ready( function() {
			$("#load_writing").on("click", function() {
				$("#content").load("#");
			});
			$('#btnNewLecture').click(function(){
				$modalTitle.text('학원생 등록');
				$('#lectureModal').modal();
			});
		});
	</script>
</body>
</html>