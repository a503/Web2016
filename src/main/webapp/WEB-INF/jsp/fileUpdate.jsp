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
			 <form id="frm" name="frm" enctype="multipart/form-data">
		        <table class="board_view">
		            <colgroup>
		                <col width="15%"/>
		                <col width="35%"/>
		                <col width="15%"/>
		                <col width="35%"/>
		            </colgroup>
		            <caption>게시글 상세</caption>
		            <tbody>
		                <tr>
		                    <th scope="row">글 번호</th>
		                    <td>
		                        ${map.IDX }
		                        <input type="hidden" id="IDX" name="IDX" value="${map.IDX }">
		                    </td>
		                    <th scope="row">조회수</th>
		                    <td>${map.HIT_CNT }</td>
		                </tr>
		                <tr>
		                    <th scope="row">작성자</th>
		                    <td>${map.CREA_ID }</td>
		                    <th scope="row">작성시간</th>
		                    <td>${map.CREA_DTM }</td>
		                </tr>
		                <tr>
		                    <th scope="row">제목</th>
		                    <td colspan="3">
		                        <input type="text" id="TITLE" name="TITLE" class="wdp_90" value="${map.TITLE }"/>
		                    </td>
		                </tr>
		                <tr>
		                    <td colspan="4" class="view_text">
		                        <textarea rows="20" cols="100" title="내용" id="CONTENTS" name="CONTENTS">${map.CONTENTS }</textarea>
		                    </td>
		                </tr>
		                <tr>
		                    <th scope="row">첨부파일</th>
		                    <td colspan="3">
		                        <div id="fileDiv">                
		                            <c:forEach var="row" items="${list }" varStatus="var">
		                                <p>
		                                    <input type="hidden" id="IDX" name="IDX_${var.index }" value="${row.IDX }">
		                                    <a href="#this" id="name_${var.index }" name="name_${var.index }">${row.ORIGINAL_FILE_NAME }</a>
		                                    <input type="file" id="file_${var.index }" name="file_${var.index }"> 
		                                    (${row.FILE_SIZE }kb)
		                                    <a href="#this" class="btn" id="delete_${var.index }" name="delete_${var.index }">삭제</a>
		                                </p>
		                            </c:forEach>
		                        </div>
		                    </td>
		                </tr>
		            </tbody>
		        </table>
		    </form>
		     
		    <a href="#this" class="btn" id="addFile">파일 추가</a>
		    <a href="#this" class="btn" id="list">목록으로</a>
		    <a href="#this" class="btn" id="update">저장하기</a>
		    <a href="#this" class="btn" id="delete">삭제하기</a>
		</div><!-- page-wrapper-end -->
    </div><!-- /#wrapper -->

    <%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
	var gfv_count = '${fn:length(list)+1}';
	$(document).ready(function(){
		$("#load_writing").on("click", function(e) {
			$("#content").load("#");
		});
		$("#list").on("click", function(e){ //목록으로 버튼
            e.preventDefault();
            fn_openBoardList();
        });
         
        $("#update").on("click", function(e){ //저장하기 버튼
            e.preventDefault();
            fn_updateBoard();
        });
         
        $("#delete").on("click", function(e){ //삭제하기 버튼
            e.preventDefault();
            fn_deleteBoard();
        });
         
        $("#addFile").on("click", function(e){ //파일 추가 버튼
            e.preventDefault();
            fn_addFile();
        });
         
        $("a[name^='delete']").on("click", function(e){ //삭제 버튼
            e.preventDefault();
            fn_deleteFile($(this));
        });
	});
	
	function fn_openBoardList(){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/dblab/file.do' />");
        comSubmit.submit();
    }
     
    function fn_updateBoard(){
        var comSubmit = new ComSubmit("frm");
        comSubmit.setUrl("<c:url value='/dblab/updateBoard.do' />");
        comSubmit.submit();
    }
     
    function fn_deleteBoard(){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/dblab/deleteBoard.do' />");
        comSubmit.addParam("IDX", $("#IDX").val());
        comSubmit.submit();
         
    }
     
    function fn_addFile(){
        var str = "<p>" +
                "<input type='file' id='file_"+(gfv_count)+"' name='file_"+(gfv_count)+"'>"+
                "<a href='#this' class='btn' id='delete_"+(gfv_count)+"' name='delete_"+(gfv_count)+"'>삭제</a>" +
            "</p>";
        $("#fileDiv").append(str);
        $("#delete_"+(gfv_count++)).on("click", function(e){ //삭제 버튼
            e.preventDefault();
            fn_deleteFile($(this));
        });
    }
     
    function fn_deleteFile(obj){
        obj.parent().remove();
    }
	</script>
	
</body>
</html>