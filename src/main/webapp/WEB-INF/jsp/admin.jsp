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
        <!-- /.navbar-static-top -->
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
					<a href="#" class="list-group-item active"><i class="glyphicon glyphicon-tags"></i> ������ ������</a>
				</li>
			</ul>
			<!-- /#side-menu -->
			</div>
		</nav>
        <!-- /.navbar-static-side -->
        
        <div id="page-wrapper"><!-- page wrapper -->
        	<div class="row">
	            <div class="col-lg-12">
	                <h1 class="page-header">������ ������</h1>
	            </div>
	            <!-- /.col-lg-12 -->
       		</div>
       		
	        <div class="row"><!-- divPassword -->
	        	<span class="col-lg-6">
					<div class="panel panel-default">
		                <div class="panel-heading my-panel"> ������ ��й�ȣ ����</div>
		                <div class="panel-body" id="panel-member">
		                    <form class="form-horizontal" role="form">
		                        <div class="form-group">
		                            <label for="inputAdminCurPw" class="col-lg-3 control-label">���� ��й�ȣ</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control admin" name="inputAdminCurPw"
		                                       id="inputAdminCurPw" placeholder="���� ��й�ȣ">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="inputAdminNewPw" class="col-lg-3 control-label">�� ��й�ȣ</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control admin" name="inputAdminNewPw"
		                                       id="inputAdminNewPw" placeholder="�� ��й�ȣ">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="inputAdminNewPwR" class="col-lg-3 control-label">�� ��й�ȣ(�ݺ�)</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control admin" name="inputAdminNewPwR"
		                                       id="inputAdminNewPwR" placeholder="�� ��й�ȣ(�ݺ�)">
		                            </div>
		                            <div class="col-lg-2">
		                                <button type="button" class="btn btn-primary" id="btnAdminSave">����</button>
		                            </div>
		                        </div>
		                    </form>
		                </div>
		            </div>
				</span>
				
				<span class="col-lg-6">
					<div class="panel panel-default">
		                <div class="panel-heading my-panel"> ������ ��й�ȣ ����</div>
		                <div class="panel-body" id="panel-member">
		                    <form class="form-horizontal" role="form">
		                        <div class="form-group">
		                            <label for="inputCurPw" class="col-lg-3 control-label">���� ��й�ȣ</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control user" name="inputCurPw" id="inputCurPw"
		                                       placeholder="���� ��й�ȣ">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="inputNewPw" class="col-lg-3 control-label">�� ��й�ȣ</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control user" name="inputNewPw" id="inputNewPw"
		                                       placeholder="�� ��й�ȣ">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="inputNewPwR" class="col-lg-3 control-label">�� ��й�ȣ(�ݺ�)</label>
		
		                            <div class="col-lg-7">
		                                <input type="password" class="form-control user" name="inputNewPwR" id="inputNewPwR"
		                                       placeholder="�� ��й�ȣ(�ݺ�)">
		                            </div>
		                            <div class="col-lg-2">
		                                <button type="button" class="btn btn-primary" id="btnSave">����</button>
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
	                    <div class="panel-heading  my-panel">���� ��� ����</div>
	                    <div class="panel-body" id="panel-class">
	                        <table class="table table-condensed text-center table-hover" id="table-class">
	                            <thead>
	                            <tr>
	                                <th class='text-center'>������</th>
	                                <th class='text-center'>�̸�����</th>
	                                <th class='text-center'>��������</th>
	                                <th class='text-center'>����</th>
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
	                        <div class="panel-heading my-panel"> ������ ���� ����</div>
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
	                                            <li><input type="checkbox" name="member" value="member" class="input-page"></input> �п�������</li>
	                                            <li><input type="checkbox" name="score" value="score" class="input-page"></input>������ȸ</li>
	                                            <li><input type="checkbox" name="tuition" value="tuition" class="input-page"></input> �����ᳳ��</li>
	                                        </ol>
	                                    </li>
	                                    <li>
	                                        <ol class="breadcrumb">
	                                            <li><input type="checkbox" name="attend" value="attend" class="input-page"></input> �⼮�ΰ���</li>
	                                            <li><input type="checkbox" name="attend" value="attend" class="input-page"></input> ���Ͼ�������</li>
	                                            <li><input type="checkbox" name="attend" value="attend" class="input-page"></input> �л�����������</li>
	                                        </ol>
	                                    </li>
	                                    <li>
	                                        <ol class="breadcrumb">
	                                            <li><input type="checkbox" name="cash" value="cash" class="input-page"></input> �����ⳳ��</li>
	                                        </ol>
	                                    </li>
	                                    <li>
	                                        <ol class="breadcrumb">
	                                            <li><input type="checkbox" name="bbs" value="bbs" class="input-page"></input> �ڷ��</li>
	                                        </ol>
	                                    </li>
	                                </form>
	                            </ul>
	                            <button type="button" class="btn btn-primary" id="btnAuthSave">����</button>
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