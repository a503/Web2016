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
		
		<!-- page wrapper -->
		<div id="page-wrapper">
			<div class="hidden-print row">
                <div class="col-lg-12">
                    <h1 class="page-header"><button class='hidden-print btn btn-info' id='print'>인쇄</button><span class='col-lg-11'>학생별업무일지</span></h1>
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
								<div class="col-md-4 my-panel"">학생별 일지 <span id="selector"></span></div>
								<div class="col-md-1 col-md-offset-7">
									<a type="button" class="btn btn-info btn-xs hidden-print"  id="btnNewStudentLog">
										<i class="glyphicon glyphicon-plus"></i> 일지 등록
									</a>
								</div>								
							</div>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="studentLogModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        	<div class="modal-dialog">
                        		<div class="modal-content">
                        			<form action="studentLogEnroll.do" method="post">
                        				<div class="modal-header">
                        					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        					<h5 class="modal-title" id="modalTitle"></h5>
                        				</div>
                        				<div class="modal-body">
                        					<fieldset>      
		                                        <div class="form-group">
											        <label class="col-md-3 control-label">작성자</label>
											        <input type="text" class="form-control" name="slwriter" id="slwriter" />
											    </div>
											    <div class="form-group">
											        <label class="col-md-3 control-label">학생</label>
											        <input type="text" class="form-control" name="slsname" id="slsname" />
											    </div>
											    <div class="form-group">
											        <label class="col-md-3 control-label">수업명</label>
											        <input type="text" class="form-control" name="sllname" id="sllname"/>
											    </div>
											    <div class="form-group">
											        <label class="col-md-3 control-label">수업일</label>
											        <input type="text" class="form-control" name="sllday" id="sllday"/>
											    </div>
											    <div class="form-group">
											        <label class="col-md-3 control-label">수업시간</label>
											        <input type="text" class="form-control" name="slltime" id="slltime"/>
											    </div>
											    <div class="form-group">
											        <label class="col-md-3 control-label">출석</label>
											        <input type="text" class="form-control" name="slattendence" id="slattendence"/>
											    </div>
											    <div class="form-group">
											        <label class="col-md-3 control-label">수업내용</label>
											        <textarea class="form-control" name="slcomment" id="slcomment" rows="10"></textarea>
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
                                            <th class="text-center"><i class="glyphicon glyphicon-user"></i> 작성자</th>
                                            <th class="text-center"><i class="glyphicon glyphicon-home"></i> 학생</th>
											<th class="text-center"><i class="glyphicon glyphicon-leaf"></i> 수업명</th>
											<th class="text-center"><i class="glyphicon glyphicon-align-center"></i> 수업일</th>
											<th class="text-center"><i class="glyphicon glyphicon-list"></i> 수업시간</th>
                                            <th class="text-center"><i class="glyphicon glyphicon-earphone"></i> 결석</th>
                                            <th class="text-center"><i class="glyphicon glyphicon-earphone"></i> 수업내용</th>									
                                        </tr>
                                    </thead>
									<tbody>
										<c:choose>
											<c:when test="${fn:length(list) > 0}">
							                    <c:forEach var="row" items="${list}" varStatus="status">
							                        <tr>
							                        	<input type="hidden" id="${row.SL_IDX }" name="SID" value="${row.SL_IDX }">							                            
							                            <td>${row.SL_WRITER }</td>
							                            <td>${row.SL_S_NAME }</td>
							                            <td>${row.SL_L_NAME }</td>
							                            <td>${row.SL_L_DAY }</td>
							                            <td>${row.SL_L_TIME }</td>
							                            <td>${row.SL_ATTENDENCE }</td>
							                            <td>${row.SL_COMMENT }</td>							                            
							                            <script>							                           
							                            </script>							                            							                          
							                        </tr>
							                    </c:forEach>
							                </c:when>
							                <c:otherwise>
								                    <tr>
								                        <td colspan="7">조회된 결과가 없습니다.</td>
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
		</div><!-- page-wrapper-end -->
    </div><!-- /#wrapper -->
    
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script>
		var $modalTitle=$('#modalTitle');
		$(document).ready( function() {
		  $("#load_writing").on("click", function() {
		  $("#content").load("#");
			});
		  $('#btnNewStudentLog').click(function(){
				$modalTitle.text('일지 작성');
				$('#studentLogModal').modal();
			});
		  $('#print').click(function(){
				$('#printSelector').printThis();
			});
		});
	</script>
	
</body>
</html>