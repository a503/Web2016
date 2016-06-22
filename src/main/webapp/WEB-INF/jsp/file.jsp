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
		<div id="page-wrapper"><!-- /#page-wrapper -->
			<h2>자료실</h2>
		    <table class="table table-condensed table-striped table-bordered table-hover text-center" width="100%">
		        <colgroup>
		            <col width="10%"/>
		            <col width="*"/>
		            <col width="15%"/>
		            <col width="20%"/>
		        </colgroup>
		        <thead>
		            <tr>
		                <th class="text-center" scope="col">글번호</th>
		                <th class="text-center" scope="col">제목</th>
		                <th class="text-center" scope="col">조회수</th>
		                <th class="text-center" scope="col">작성일</th>
		            </tr>
		        </thead>
		        <tbody>
		            <c:choose>
		                <c:when test="${fn:length(list) > 0}">
		                    <c:forEach var="row" items="${list}" varStatus="status">
		                        <tr>
		                            <td>${row.IDX }</td>
		                            <td class="title">
		                                <a href="#this" name="title">${row.TITLE }</a>
		                                <input type="hidden" id="IDX" value="${row.IDX }">
		                            </td>
		                            <td>${row.HIT_CNT }</td>
		                            <td>${row.CREA_DTM }</td>
		                        </tr>
		                    </c:forEach>  
		                </c:when>
		                <c:otherwise>
		                    <tr>
		                        <td colspan="4">조회된 결과가 없습니다.</td>
		                    </tr>
		                </c:otherwise>
		            </c:choose>   
		        </tbody>
		    </table>
		     
		    <c:if test="${not empty paginationInfo}">
		        <ui:pagination paginationInfo = "${paginationInfo}" type="text" jsFunction="fn_search"/>
		    </c:if>
		    <input type="hidden" id="currentPageNo" name="currentPageNo"/>
		     
		    <br/>
		    <a href="#this" class="btn" id="write">글쓰기</a>
		</div><!-- page-wrapper-end -->
    </div><!-- /#wrapper -->

    <%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#load_writing").on("click", function(e) {
			$("#content").load("#");
		});
		
		$("#write").on("click", function(e){ //글쓰기 버튼
            e.preventDefault();
            fn_openBoardWrite();
        }); 
         
        $("a[name='title']").on("click", function(e){ //제목 
            e.preventDefault();
            fn_openBoardDetail($(this));
        });
	});
	
	function fn_openBoardWrite(){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/dblab/fileWrite.do' />");
        comSubmit.submit();
    }
     
    function fn_openBoardDetail(obj){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/dblab/fileDetail.do' />");
        comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
        comSubmit.submit();
    }
     
    function fn_search(pageNo){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/dblab/file.do' />");
        comSubmit.addParam("currentPageNo", pageNo);
        comSubmit.submit();
    }
	</script>
	
</body>
</html>