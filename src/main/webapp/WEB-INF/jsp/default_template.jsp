<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/bootstrap.min.css" rel="stylesheet">
   	<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
   	<link href="css/sb-admin.css" rel="stylesheet">
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
                <li class="dropdown">
                    <a href="#">
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
					<a href="#"><i class="fa fa-dashboard fa-fw"></i> ��ú���</a>
				</li>
				<li class="active1">
					<a href="#"><i class="fa fa-user fa-fw"></i> �п��� ����	<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="#">�п��� ����</a>
						</li>
						<li>
							<a href="#">���� ��ȸ</a>
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
					<a href="#"><i class="glyphicon glyphicon-folder-open"></i> �ڷ��</a>
				</li>
				<li>
					<a href="#"><i class="glyphicon glyphicon-tags"></i> ������ ������</a>
				</li>
			</ul>
			<!-- /#side-menu -->
			</div>
		</nav>
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