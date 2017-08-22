<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>정보수정 페이지</title>
<link rel="shortcut icon" href="./resources/bootstrap3.3.7/images/D.ico" />

<link href="./resources/bootstrap3.3.7/css/join1.css" type="text/css" rel="stylesheet">
<link href="./resources/bootstrap3.3.7/css/join2.css" type="text/css" rel="stylesheet">
<link href="./resources/bootstrap3.3.7/css/join3.css" type="text/css" rel="stylesheet">
<link href="./resources/bootstrap3.3.7/css/join4.css" type="text/css" rel="stylesheet">
<link href="./resources/bootstrap3.3.7/css/join5.css" type="text/css" rel="stylesheet">
<%@ include file="/WEB-INF/layout/head.jsp" %>
<style>
.navbar-brand{
 color:#6173f4;
}
</style>
</head>
<body>
<header role="banner" id="fh5co-header">
	
	<!--  TOP ( 메뉴 )  -->
		<%@ include file="/WEB-INF/layout/LayoutTop2.jsp" %>
		 
	<!-- TOP (E) -->
</header>


<div id="fh5co-about-us" data-section="about">
<div class="container">
		
	<!-- My Page(메뉴) -->
	
	<%@ include file="/WEB-INF/layout/LayoutMyPage.jsp" %>
	
	<!-- My Page(메뉴) E  -->
		

	<div class="row row-bottom-padded-lg" id="about-us" >
				
	<div class="col-md-12 to-animate"  >
		<div class="text-center">
	<!-- 회원정보 폼 S -->
	<div id="wrap">		
	<h2 id="skip_cont" class="hide">컨텐츠영역</h2>
		<!-- 회원가입 -->
		<div class="wmp_join">
			<div class="join_banner">
								<map name="unitopbn8">
			    				</map>
			</div>
			<form id="frm" onSubmit="return false;" method="post" autocomplete="off">
				<fieldset>
					<input type="hidden" name="authType" id="authType" value=""/>
					<input type="hidden" name="u_name" id="u_name" value=""/>
					<input type="hidden" name="u_sex" id="u_sex" value=""/>
					<input type="hidden" name="u_birth" id="u_birth" value=""/>
					<input type="hidden" name="u_mobile" id="u_mobile" value=""/>
					<input type="hidden" name="u_ciscr_hash" id="u_ciscr_hash" value=""/>
					<input type="hidden" name="u_discr_hash" id="u_discr_hash" value=""/>
					<input type="hidden" name="u_discr_no" id="u_discr_no" value=""/>
					<input type="hidden" name="u_certificate_type" id="u_certificate_type" value=""/>
					<div class="join_content">
						<!-- 필수 정보 -->
						<div class="wrap_cont_necessary">
							<h1 class="text-center" style="font-size:50px; color:green;">정보수정</h1>
							<div class="necessary_input">
																								<!-- 비밀번호 -->
								<div class="wrap_text_field">
									<div class="wrap_pass_field">
										<div class="clear_fix">
											<input type="password" placeholder="비밀번호" id="upw" class="text_field" name="upw" maxlength="15" style="width:213px; height:40px;">
										</div>
									</div>
									<div class="wrap_pass_field">
										<div class="clear_fix">											
											<input type="password" id="urepw" class="text_field" name="urepw" maxlength="15" style="width:213px; height:40px;" placeholder="비밀번호 재확인">
										</div>
									</div>
								</div>
								<!-- //비밀번호 -->
								<!-- 이메일 --> 
								<div class="wrap_text_field">
									<input type="text" id="uemail1" class="text_field" value="이메일" dg-data="이메일" style="width:128px; height:40px; margin-top:12px;">
									<span class="txt_mail">@</span>
									<input type="text" id="uemail_direct" class="text_field" value="" style="width:128px; height:40px; margin-top:12px;">
									&nbsp;&nbsp;&nbsp;
									<button type="button" id="joinConfirmBtn" class="btn_wmp_join btn_wmp_red" style="margin-top:12px;">
										<span class="inner">인증하기</span>
									</button>
								</div>
								<!-- //이메일 -->
								<!-- 이름, 휴대폰번호/기본 -->
								<div class="wrap_text_field">
									<div class="wrap_name_field">
										<div class="clear_fix">
										<input type="text" id="uname" name="uname" class="text_field" style="width:213px; height:40px;" value="이름 " dg-data="이름 " />
																																</div>
										<p id="uname_error" class="help_block">이름을 입력해주세요.</p>
									</div>
									<div class="wrap_name_field">
										<input type="text" id="umobile" class="text_field" style="width:213px; height:40px;" maxlength="13" value="휴대폰번호" dg-data="휴대폰번호" />
									</div>
								</div>
								<div class="help_box" id="div_sms_auth_overlap" style="display:none;">
									<p class="help_txt_red"><span id="sms_overlap_id"></span> 아이디로 가입된 휴대폰번호입니다.</p>
									<ul class="login_area">
										<li><a href="javascript:void(0);" id="btn_login">로그인</a></li>
										<li><a href="javascript:void(0);" id="btn_search_pw">비밀번호 찾기</a></li>
									</ul>
									<span class="help_txt_black">새로 가입하시려면, 휴대폰 점유인증을 해주세요.</span>
									<button type="button" class="btn_wmp_join btn_wmp_white btn_small" id="btn_sms_send">
										<span class="inner">인증번호 받기</span>
									</button>
								</div>
								<div class="help_box" id="div_sms_auth" style='display:none;'>
									<div class="wrap_text_field">
										<input type="text" id="txt_sms_auth" class="text_field" style="width:200px;" value="인증번호" dg-data="인증번호">
										<button type="button" class="btn_wmp_join btn_certification btn_wmp_red" id="btn_sms_auth">
											<span class="inner_small">인증하기</span>
										</button>
										<button type="button" class="btn_wmp_join btn_certification btn_wmp_gray" id="btn_sms_reAuth">
											<span class="inner_small">재발송</span>
										</button>
										<input type="hidden" id='join_sms_hidden' />
									</div>
									<div class="time_area" id="umobile_error">
										<span class="help_txt_black">인증번호가 전송되었습니다.</span>
										<span class="help_txt_red">남은 시간 04:59</span>
									</div>
								</div>
								<div class="help_box" id="div_sms_auth_complete" style='display:none;'>
									<span class="help_txt_black">휴대폰 점유인증이 완료되었습니다. 가입을 진행해 주세요.</span>
									<button type="button" class="btn_wmp_join btn_wmp_white btn_small" id="btn_sms_auth_cancel">
										<span class="inner">인증 취소</span>
									</button>
								</div>

								
																<!-- //이름, 휴대폰번호/기본 -->
								<!-- 학과 -->
								<div class="wrap_text_field">
									<div class="wrap_pass_field">
										<div class="clear_fix">
											<input type="text" placeholder="학교" id="" class="text_field" name="" maxlength="15" style="width:213px; height:40px;">
										</div>
									</div>
									<div class="wrap_pass_field">
										<div class="clear_fix">
											<input type="text" placeholder="학과" id="" class="text_field" name="" maxlength="15" style="width:213px; height:40px;">
										</div>
									</div>
								</div>
								<br />
								
								
								<!-- //학과 -->
							<div class="wrap_center_btn">
								<button type="submit" id="joinConfirmBtn" class="btn_wmp_join btn_wmp_red btn_large">
									<span class="inner">수정하기</span>
								</button>
							</div>
							<br /><br /><br />
						</div>
						<!-- //선택 항목 -->
					</div>
					</div>
				</fieldset>
			</form>
			</div>
<!-- 회원정보 E  -->	
			</div>
			</div>
		</div>
	</div>
</div>
</div>
	<!-- Botton (S) -->
	<%@ include file="/WEB-INF/layout/LayoutBottom.jsp" %>
	<!--  Bottom(E) -->
</body>
</html>