<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<%@ include file="/WEB-INF/include/include-header.jspf" %>
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
                    <a type="button" class="btn btn-success" id="accAdmin" style="font-size: 25px">Administrator</a>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="AdminModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form class="form-horizontal" action="loginProcess.do" method="post">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                                    </button>
                                    <h4 class="modal-title" id="modalTitle"></h4>
                                </div>
                                <div class="modal-body">
                                    <fieldset>
                                        <div class="form-group">
                                        	<label class="control-label" for="id">ID</label>
                                        	<input class="form-control" type="text" placeholder="아이디 입력..." id="id" name="id"></input>                                            
                                        </div>
                                        <div class="form-group">
                                        	<label class="control-label" for="password">PASSWORD</label>
                                        	<input class="form-control" placeholder="비밀번호 입력..." id="password" name="password" type="password"></input>
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

<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script>
    $(document).ready(function () {
        var $modalTitle = $('#modalTitle');
        
        $('#accAdmin').click(function () {
            $modalTitle.text('관리자 로그인');
   
            $('#AdminModal').modal();
        });        
    });
</script>
</body>
</html>