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
        
        <!-- navbar-static-side -->
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
					<a href="#"><i class="glyphicon glyphicon-usd"></i> 현금 출납부</a>
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
		<div id="page-wrapper"><!-- /#page-wrapper -->
			<div class="hidden-print row">
                <div class="col-lg-12">
                    <h1 class="page-header"><button class='hidden-print btn btn-info' id='print'>인쇄</button><span class='col-lg-11'>학원생 관리</span></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /#테이블 테스트 시작 -->
			<!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
							<div class="row">
								<div class="col-md-4 my-panel"">학원생 목록 <span id="selector"></span></div>
								<div class="col-md-1 col-md-offset-7">
									<a type="button" class="btn btn-info btn-xs hidden-print"  id="btnNewStudent">
										<i class="glyphicon glyphicon-plus"></i> 학원생등록
									</a>
								</div>
							</div>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="studentModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        	<div class="modal-dialog">
                        		<div class="modal-content">
                        			<form action="studentEnroll.do" method="post">
                        				<div class="modal-header">
                        					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        					<h5 class="modal-title" id="modalTitle"></h5>
                        				</div>
                        				<div class="modal-body">
                        					<fieldset>
		                                        <div class="form-group">
		                                        	<label class="control-label" for="sname">이름(*)</label>
		                                        	<input class="form-control" type="text" name="sname" id="sname">
		                                        </div>
		                                        <div class="form-group">
		                                        	<label class="control-label" for="sphone">전화번호(*)</label>
		                                        	<input class="form-control" type="text" name="sphone" id="sphone">
		                                        </div>
		                                        <div class="form-group">
		                                        	<label class="control-label" for="saddr">주소(*)</label>
		                                        	<input class="form-control" type="text" name="saddr" id="saddr">
		                                        </div>
		                                        <div class="form-group">
		                                        	<label class="control-label" for="spphone">부모님 전화번호(*)</label>
		                                        	<input class="form-control" type="text" name="spphone" id="spphone">
		                                        </div>
		                                        <div class="form-group">
		                                        	<label class="control-label" for="slname">수업명(*)</label>
		                                        	<input class="form-control" type="text" name="slname" id="slname">
		                                        </div>
		                                        <div class="form-group">
		                                        	<fieldset>
		                                        		<legend style="font-size:14px; font-weight:bold" align="top">수업요일(*)</legend>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="l0" id="l0" value="화">화
		                                        		</label>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="l0" id="l0" value="수">수
		                                        		</label>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="l0" id="l0" value="목">목
		                                        		</label>
		                                        	</fieldset>
		                                        </div>
		                                        <div class="form-group">
		                                        	<fieldset>
		                                        		<legend align="top">수업시간(*)</legend>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="l1" id="l1" value="16:00~17:50">16:00~17:50
		                                        		</label>
		                                        		<label class="radio-inline">
		                                        			<input class="fomr-control" type="radio" name="l1" id="l1" value="18:00~19:50">18:00~19:50
		                                        		</label>
		                                        		<label class="radio-inline" for="l3">
		                                        			<input class="fomr-control" type="radio" name="l1" id="l1" value="20:00~21:50">20:00~21:50
		                                        		</label>
		                                        	</fieldset>
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
                        <!-- /.panel-heading -->
                        <div class="panel-body" id="printSelector">
                            <div class="table-responsive">
                                <table class="table board_list table-condensed table-striped table-bordered table-hover text-center" id="dataTables-member" width="100%">
                                    <thead>
                                        <tr>
                                            <th class="text-center"><i class="glyphicon glyphicon-user"></i> 이름</th>
                                            <th class="text-center"><i class="glyphicon glyphicon-tags"></i> ID</th>
                                            <th class="text-center"><i class="glyphicon glyphicon-home"></i> 주소</th>
											<th class="text-center"><i class="glyphicon glyphicon-leaf"></i> 수업명</th>
											<th class="text-center"><i class="glyphicon glyphicon-align-center"></i> 수업시간</th>
											<th class="text-center"><i class="glyphicon glyphicon-list"></i> 수업요일</th>
                                            <th class="text-center"><i class="glyphicon glyphicon-earphone"></i> 전화번호</th>
											<th class="text-center"><i class="glyphicon glyphicon-user"></i> 부모님 전화번호</th>
											<th class="text-center"><i class="glyphicon glyphicon-step-forward"></i> 등록일</th>
											<th class="text-center"><i class="glyphicon glyphicon-usd"></i> 수납</th>
											<th class="text-center"><i class="glyphicon glyphicon-exclamation-sign"></i> 삭제</th>
                                        </tr>
                                    </thead>
									<tbody>
										<c:choose>
											<c:when test="${fn:length(list) > 0}">
							                    <c:forEach var="row" items="${list}" varStatus="status">
							                        <tr>
							                        	<input type="hidden" id="${row.S_ID }" name="SID" value="${row.S_ID }">
							                            <td>${row.S_NAME }</td>
							                            <td>${row.S_ID }</td>
							                            <td>${row.S_ADDR }</td>
							                            <td>${row.SL_NAME }</td>
							                            <td>${row.SL_TIME }</td>
							                            <td>${row.SL_DAY }</td>
							                            <td>${row.S_PHONE }</td>
							                            <td>${row.S_PPHONE }</td>
							                            <td>${row.S_DATE }</td>
							                            <td><a href="#this" class="btn" id="${row.S_ID }check">${row.S_CHECK }</a></td>
							                            <td><a href="#this" class="btn" id="${row.S_ID }delete"><i style="color:red" class="glyphicon glyphicon-exclamation-sign"></i></a></td>
							                            <script>
							                            $('#${row.S_ID }delete').on("click", function(e){
							                    			e.preventDefault();
							                    			fn_${row.S_ID }del();
							                    		});
							                            $('#${row.S_ID }check').on("click", function(e){
							                    			e.preventDefault();
							                    			fn_${row.S_ID }che();
							                    		});
							                            function fn_${row.S_ID }del(){
							                        		var comSubmit = new ComSubmit();
							                        		comSubmit.setUrl("<c:url value='/dblab/deleteStudent.do' />");
							                        		comSubmit.addParam("SID", $("#${row.S_ID }").val());
							                        		comSubmit.submit();
							                        	}
							                            function fn_${row.S_ID }che(){
							                        		var comSubmit = new ComSubmit();
							                        		comSubmit.addParam("SID", $("#${row.S_ID }").val());
							                        		comSubmit.setUrl("<c:url value='/dblab/updateCheck.do' />");
							                        		//comSubmit.addParam("SID", $("#${row.S_ID }").val());
							                        		comSubmit.submit();
							                        	}
							                            </script>							                            							                          
							                        </tr>
							                    </c:forEach>
							                </c:when>
							                <c:otherwise>
								                    <tr>
								                        <td colspan="11">조회된 결과가 없습니다.</td>
								                    </tr>
								                </c:otherwise> 
										</c:choose>
									</tbody>
									<tfoot>
									</tfoot>
                                </table>                                
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
			<!-- /#테이블 테스트 끝 -->
		</div><!-- page-wrapper-end -->
    </div><!-- /#wrapper -->

    <%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script>
	$(document).ready( function() {
			  
		var $modalTitle=$('#modalTitle');
		
		$("#load_writing").on("click", function() {
			$("#content").load("#");
		}); 
		$('#btnNewStudent').click(function(){
			$modalTitle.text('학원생 등록');
			$('#studentModal').modal();
		});
		$('#print').click(function(){
			$('#printSelector').printThis();
		});
	});
	</script>
	
</body>
</html>