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
		<!-- page wrapper -->
		<div id="page-wrapper">
			<div class="hidden-print row">
                <div class="col-lg-12">
                    <h1 class="page-header"><button class='hidden-print btn btn-info' id='print'>인쇄</button><span class='col-lg-11'>수강료 납부현황</span></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
							<div class="row">
								<div class="col-md-4 my-panel"">미납 현황<span></span></div>
							</div>
                        </div>                      
                        <!-- /.panel-heading -->
                        <div class="panel-body" id="printSelector">
                            <div class="table-responsive">
                                <table class="table board_list table-condensed table-striped table-bordered table-hover text-center" id="dataTables-member" width="100%">
                                    <thead>
                                        <tr>
                                            <th class="text-center"><i class="glyphicon glyphicon-user"></i> 이름</th>
											<th class="text-center"><i class="glyphicon glyphicon-leaf"></i> 수업명</th>
											<th class="text-center"><i class="glyphicon glyphicon-list"></i> 수업요일</th>
                                            <th class="text-center"><i class="glyphicon glyphicon-earphone"></i> 전화번호</th>
											<th class="text-center"><i class="glyphicon glyphicon-user"></i> 부모님 전화번호</th>
											<th class="text-center"><i class="glyphicon glyphicon-usd"></i> 수납</th>
                                        </tr>
                                    </thead>
									<tbody>
										<c:choose>
											<c:when test="${fn:length(list) > 0}">
							                    <c:forEach var="row" items="${list}" varStatus="status">
							                        <tr>
							                        	<input type="hidden" id="${row.S_ID }" name="SID" value="${row.S_ID }">
							                            <td>${row.S_NAME }</td>
							                            <td>${row.SL_NAME }</td>
							                            <td>${row.SL_DAY }</td>
							                            <td>${row.S_PHONE }</td>
							                            <td>${row.S_PPHONE }</td>
							                            <td><a href="#this" class="btn" id="${row.S_ID }check">${row.S_CHECK }</a></td>							                            
							                            <script>
							                            $('#${row.S_ID }check').on("click", function(e){
							                    			e.preventDefault();
							                    			fn_${row.S_ID }che();
							                    		});
							                            function fn_${row.S_ID }che(){
							                        		var comSubmit = new ComSubmit();
							                        		comSubmit.setUrl("<c:url value='/dblab/updateCheckReturn.do' />");
							                        		comSubmit.addParam("SID", $("#${row.S_ID }").val());
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
		</div><!-- /page wrapper -->
    </div><!-- /#wrapper -->
    
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script>
		$(document).ready( function() {
		  $("#load_writing").on("click", function() {
		  $("#content").load("#");
			});
		  $('#print').click(function(){
				$('#printSelector').printThis();
			});
		});
	</script>
	
</body>
</html>