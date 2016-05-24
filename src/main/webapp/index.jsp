<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Core CSS - Include with every page -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<!-- SB Admin CSS - Include with every page -->
<link href="css/sb-admin.css" rel="stylesheet">
<title>학원 관리시스템</title>
</head>
<body style="background-color: #fff;">
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="login-panel panel panel-default"
                 style="background-color: transparent; border-color: #fff; box-shadow: 0px 0px 0px">
                <div class="panel-heading" style="background-color:#fff; border-color: #fff">
                <div class="row" style="margin-bottom: 100px">
                    <div class="col-md-12 text-center"><img src="images/logo.jpg" width="100%" height="100%"></img></div>
                </div>
            </div>
            <div class="panel-body" style="background-color: transparent; border-color: #fff">
                <div class="btn-group  btn-group-lg btn-group-justified">
                    <a type="button" class="btn btn-primary" id="accUser" style="font-size: 25px">Teacher</a>
                    <a type="button" class="btn btn-success" id="accAdmin" style="font-size: 25px">Administrator</a>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="AdminModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="loginProcess.go" method="post">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                                    </button>
                                    <h4 class="modal-title" id="modalTitle"></h4>
                                </div>
                                <div class="modal-body">
                                    <fieldset>
                                        <div class="form-group">
                                        	<input class="form-control" type="text" placeholder="아이디 입력..." name="id"></input>
                                            <input class="form-control" placeholder="비밀번호 입력..." name="password" type="password"></input>
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="modal-footer">
                                    <fieldset>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                                        <button type="submit" class="btn btn-primary">로그인</button>
                                    </fieldset>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</div>

<!-- Core Scripts - Include with every page -->
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<!-- SB Admin Scripts - Include with every page -->
<script>
    $(document).ready(function () {
        

        var $inputPassword = $('#inputPassword');
        var $inputType = $('#inputType');
        var $inputLocation = $('#inputLocation');
        var $modalTitle = $('#modalTitle');

        $('#accUser').click(function () {
            $modalTitle.text('선생님 로그인');
            $inputPassword.val('');
            $inputType.val('user');
            $inputLocation.val($("#selectLocation > option:selected").val());
            $('#AdminModal').modal();
        });
        $('#accAdmin').click(function () {
            $modalTitle.text('관리자 로그인');
            $inputPassword.val('');
            $inputType.val('admin');
            $inputLocation.val($("#selectLocation > option:selected").val());
            $('#AdminModal').modal();
        });

        
    });
</script>
<script src="js/sb-admin.js"></script>
</body>
</html>