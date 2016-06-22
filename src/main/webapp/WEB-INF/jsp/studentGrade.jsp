<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<%@ include file="/WEB-INF/include/include-header.jspf" %>
<title>�п� �����ý���</title>
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
                <a class="navbar-brand" href="#" style="color: white">�п� �����ý���</a>
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
                        <span class="badge"><i class="glyphicon glyphicon-off"></i> �α׾ƿ�</span>
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
					<a href="/first/dblab/dash.do"><i class="fa fa-dashboard fa-fw"></i> ��ú���</a>
				</li>
				<li class="active1">
					<a href="#"><i class="fa fa-user fa-fw"></i> �п��� ����	<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="/first/dblab/studentList.do">�п��� ����</a>
						</li>
						<li>
							<a href="/first/dblab/studentGrade.do">���� ��ȸ</a>
						</li>
						<li>
							<a href="#">������ ������Ȳ</a>
						</li>
					</ul>
					<!-- /.nav-second-level -->
				</li>
				<li class="active2">
					<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> �⼮�� ����<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="#">���Ͼ�������</a>
						</li>
						<li>
							<a href="#">�л�����������</a>
						</li>
					</ul>
					<!-- /.nav-second-level -->
				</li>
				<li>
					<a href="#"><i class="glyphicon glyphicon-usd"></i> ���� �ⳳ��</a>
				</li>
				<li>
					<a href="/first/dblab/file.do"><i class="glyphicon glyphicon-folder-open"></i> �ڷ��</a>
				</li>
				<li>
					<a href="/first/dblab/admin.do"><i class="glyphicon glyphicon-tags"></i> ������ ������</a>
				</li>
			</ul>
			<!-- /#side-menu -->
			</div>
		</nav>
    </div><!-- /#wrapper -->

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