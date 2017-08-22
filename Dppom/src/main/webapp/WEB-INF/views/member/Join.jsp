<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>특가대표! 위메프</title>
<link rel="shortcut icon" href="http://img.wemep.co.kr/favicon_v01.ico" />

<link href="./resources/bootstrap3.3.7/css/join1.css" type="text/css" rel="stylesheet">
<link href="./resources/bootstrap3.3.7/css/join2.css" type="text/css" rel="stylesheet">
<link href="./resources/bootstrap3.3.7/css/join3.css" type="text/css" rel="stylesheet">
<link href="./resources/bootstrap3.3.7/css/join4.css" type="text/css" rel="stylesheet">
<link href="./resources/bootstrap3.3.7/css/join5.css" type="text/css" rel="stylesheet">

<!-- common -->
<script src="/js/ZeroClipboard.js?20170810_1" type="text/javascript" ></script>
<script src="/js/_jquery/jquery-1.4.2.min.js?20170810_1" type="text/javascript"></script>
<script src="/js/_jquery/jquery-ui.min.js?20170810_1" type="text/javascript"></script>
<script src="/js/_jquery/plugin/jquery.numberformatter-1.2.js?20170810_1" type="text/javascript"></script>
<script src="/js/_jquery/plugin/jquery.sha1.js?20170810_1" type="text/javascript"></script>
<script src="/js/_jquery/plugin/jquery.i18n.properties.js?20170810_1" type="text/javascript"></script>
<script src="/js/_jquery/plugin/jquery.caret.js?20170810_1" type="text/javascript"></script>
<script src="/js/_lib/base64.js?20170810_1" type="text/javascript"></script>

<!-- account join -->
<script src="/js/default.js?20170810_1" type="text/javascript"></script>
<script src="/js/account/account_v3.js?20170810_1" type="text/javascript"></script>
<script src="/js/account/account_auth.js?20170810_1" type="text/javascript"></script>
<script src="/js/account/join_v3.js?20170810_1" type="text/javascript"></script>
<script src="/js/c/wmp_countdown.js?20170810_1" type="text/javascript"></script>
<script src="/js/c/wmp_util.js?20170810_1" type="text/javascript"></script>

<script type="text/javascript">
var isBusinessUser = 0;

function updateNumberOfDays(){
	$('#select_day').html('<a href="javascript:void(0);" class="selected" data-id="selected" dg-data="일">일</a>');
	var month = $('#selected_month').attr('dg-data');
	var year = $('#selected_year').attr('dg-data');
	$('#selected_day').attr('dg-data', '일');
	$('#selected_day').text('일');
	var days = daysInMonth(month, year);
	for(var i=1; i < days+1 ; i++){
		$('#select_day').append('<a href="javascript:void(0);" dg-data="'+i+'">'+i+'</a>');
	}

	$('#select_day a').bind('click', function() {
		$this = $(this);
		search_name = $(this).attr('dg-data');

		$this.parent().find('[data-id="selected"]').removeClass('selected').removeAttr('data-id');
		$this.addClass('selected').attr('data-id','selected');
		$this.parents('[data-id="select_area"]').children('a').attr('dg-data',search_name).text(search_name);
		$this.parents('[data-id="select_area"]').removeClass('unfold');

		var day = $('#selected_day').attr('dg-data');
		var month = $('#selected_month').attr('dg-data');
		var year = $('#selected_year').attr('dg-data');
		if(isNaN(day) || isNaN(month) || isNaN(year)) {
			$('#agree_birth').attr('checked', false);
			$('#birth_error').show();
		} else {
			$('#birth_error').hide();
		}
	});
}

function daysInMonth(month, year) {
	return new Date(year, month, 0).getDate();
}

$(document).ready(function() {
	memberServer = 'https://member.wemakeprice.com';
	webServer = 'http://member.wemakeprice.com';
});

var ver_src = $.browser.version, version_data = ver_src.split(".");
$(function() {
	// 브라우저 종류, 버전 체크
	if($.browser.msie) {
		$('body').attr("id", "ie").attr("class", "ie"+version_data[0]);
	} else if($.browser.webkit) {
		$('body').attr("id", "cr").attr("class", "cr"+version_data[0]);
	} else if($.browser.mozilla) {
		$('body').attr("id", "ff").attr("class", "ff"+version_data[0]);
	} else {
		$('body').attr("id", "other").attr("class", "other"+version_data[0]);
	}

	// IE8일 경우 INPUT FOCUS BUG 해결
	if(($.browser.msie == true) && (version_data[0] <= 8)) {
		$('input').focus().blur();
	}

	for (var i = new Date().getFullYear() - 14; i > 1909; i--) {
		$('#select_year').append('<a href="javascript:void(0);" dg-data="'+i+'">'+i+'</a>');
	}
	for (i = 1; i < 13; i++) {
		$('#select_month').append('<a href="javascript:void(0);" dg-data="'+i+'">'+i+'</a>');
	}
	updateNumberOfDays();

	// SELECT BOX
	var search_name = 0;
	var $selectArea = $('[data-id="select_area"]');

	$('[data-id="select_active"]').bind('click', function(e) {
		$this = $(this);
		$this.parent().toggleClass('unfold');
		$selectArea.not($this.parent()).removeClass('unfold');
		e.stopPropagation();
	});

	$(document).bind('click', function(e){
		if ($(e.target).parents('[data-id="select_area"]').length == 0) {
			$selectArea.removeClass('unfold');
		}
	});

	$('[data-id="select_list"] a').bind('click', function() {
		$this = $(this);
		search_name = $(this).attr('dg-data');

		$this.parent().find('[data-id="selected"]').removeClass('selected').removeAttr('data-id');
		$this.addClass('selected').attr('data-id','selected');
		$this.parents('[data-id="select_area"]').children('a').attr('dg-data',search_name).text(search_name);
		$this.parents('[data-id="select_area"]').removeClass('unfold');

		if ($this.parents('[data-id="select_area"]').children('a').attr('id') == 'selected_year' || $this.parents('[data-id="select_area"]').children('a').attr('id') == 'selected_month'){
			updateNumberOfDays();
		}

		if ($this.parents('[data-id="select_area"]').children('a').attr('id') == 'uemail2') {
			var uemail2 = $('#uemail2').attr('dg-data');
			if($this.index() == 0) {
				$('#uemail_direct').val('').attr('disabled', false).focus();
			} else {
				$('#uemail_direct').val(uemail2).attr('disabled', true);
			}
			displayHide("uemail_error");
			email_dup_check();
		}
	});

	$(':radio[name="select_sex"]').click(function() {
		var sex = $(':radio[name="select_sex"]:checked').val();
		if(sex != undefined) {
			$('#sex_error').hide();
		}
	});

	// 160405 #MOBILE-997
	// app푸시동의 여부를 약관에 녹이기, 해당 영역 제거
	/*$('[data-id="agree_event_select_all"]').click(function() {
		setTimeout(function() {
			if ($('[data-id="agree_event_select_all"]').attr('checked') == true) {
				$('[data-id="check_agree_event"]').attr('checked', true);
			} else {
				$('[data-id="check_agree_event"]').attr('checked', false);
			}
		}, 50);
	});

	$('[data-id="check_agree_event"]').each(function() {
		$(this).change(function() {
			if ($('[data-id="check_agree_event"]').length == $('[data-id="check_agree_event"]:checked').length) {
				$('[data-id="agree_event_select_all"]').attr('checked', true);
			} else {
				$('[data-id="agree_event_select_all"]').attr('checked', false);
			}
		});
	});*/

	// 선택항목 전체동의
	$('[data-id="agree_optional_info_select_all"]').click(function() {
		$('#sex_error').hide();
		$('#birth_error').hide();

		setTimeout(function() {
			if ($('[data-id="agree_optional_info_select_all"]').attr('checked') == true) {
				var day = $('#selected_day').attr('dg-data');
				var month = $('#selected_month').attr('dg-data');
				var year = $('#selected_year').attr('dg-data');
				if(isNaN(day) || isNaN(month) || isNaN(year)) {
					$('#birth_error').show();
				}

				var sex = $(':radio[name="select_sex"]:checked').val();
				if(sex == undefined) {
					$('#sex_error').show();
				}

				$('[data-id="check_agree_optional_info"]').attr('checked', true);
			} else {
				$('[data-id="check_agree_optional_info"]').attr('checked', false);
			}
		}, 50);
	});

	$('[data-id="check_agree_optional_info"]').each(function() {
		$(this).change(function() {
			if ($('[data-id="check_agree_optional_info"]').length == $('[data-id="check_agree_optional_info"]:checked').length) {
				$('[data-id="agree_optional_info_select_all"]').attr('checked', true);
			} else {
				$('[data-id="agree_optional_info_select_all"]').attr('checked', false);
			}

			if($('#agree_sex')[0].checked) {
				var sex = $(':radio[name="select_sex"]:checked').val();
				if(sex == undefined) {
					$('#sex_error').show();
				}
			} else {
				$('#sex_error').hide();
			}

			if (!isBusinessUser) {
				if($('#agree_birth')[0].checked) {
					var day = $('#selected_day').attr('dg-data');
					var month = $('#selected_month').attr('dg-data');
					var year = $('#selected_year').attr('dg-data');
					if(isNaN(day) || isNaN(month) || isNaN(year)) {
						$('#birth_error').show();
					}
				} else {
					$('#birth_error').hide();
				}
			}
		});
	});

	// INPUT
	var sel_text = '';
	$('input').bind('focus blur', function(event) {
		sel_text = $(this).attr('dg-data');

		if((event.type == 'focus') && ($(this).val() == '이메일') || ($(this).val() == '이름 ') || ($(this).val() == '담당자 이름') || ($(this).val() == '휴대폰번호') || ($(this).val() == '인증번호') || ($(this).val() == '아이디')) {
			$(this).removeClass('off').val('');
		} else if((event.type == 'blur') && ($(this).val() == '')) {
			$(this).addClass('off').val(sel_text);
		}
	});

	// 이메일 대문자 입력시 소문자 변경
	$('#uemail1, #uemail_direct').bind('keyup', function() {
		if(navigator.userAgent.match(/Trident\/7\./)) {
			$(this).val(function (_, v) {
				return v.replace(/\s+/g, '').toLowerCase();
			});
		} else {
			var val = $(this).val();
			var pattern = /\s+/g;
			if (val.match(pattern)) {
				var pos = $(this).caret();
				pos = (pos > 0) ? pos - 1 : 0;
				$(this).val(function (_, v) {
					return v.replace(pattern, '');
				});
				$(this).caret(pos);
			}

			if (val != val.toLowerCase()) {
				var pos = $(this).caret();
				pos = (pos > 0) ? pos : 0;
				$(this).val(function (_, v) {
					return v.toLowerCase();
				});
				$(this).caret(pos);
			}
		}
	});
});
</script>
</head>

<body onLoad="return false;">
<div id="wmpSkip">
	<a href="#header" onclick="skipNavigation('#header');return false;"><span>메뉴 바로가기</span></a>
	<a href="#container" onclick="skipNavigation('#container');return false;"><span>본문 바로가기</span></a>
</div>
<div id="wrap">
	<div id="header">
		<div class="header_inner">
			<h1 class="logo_wmp_v3"><a href="http://wemakeprice.com/">특가대표! 위메프</a></h1>
			<ul class="header_link">
				<li class="link_main"><a href="http://www.wemakeprice.com/">위메프 메인</a></li>
				<li class="link_cc"><a href="http://www.wemakeprice.com/customer_center/">고객센터</a></li>
				<li class="link_notice"><a href="http://www.wemakeprice.com/board_notice/notice_list/">공지사항</a></li>
			</ul>
		</div>
	</div>

	<div id="container">
		<h2 id="skip_cont" class="hide">컨텐츠영역</h2>
		<!-- 회원가입 -->
		<div class="wmp_join">
			<div class="join_banner">
								<map name="unitopbn8">
			    				</map>
			</div>
			<form id="frm" onSubmit="return false;" method="post" autocomplete="off">
				<fieldset>
					<legend>회원가입</legend>
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
							<h3 class="tit_wmp_join tit_join_member">회원가입</h3>

							
							<h4 class="tit_wmp_join tit_join_necessary mg-section-sm">필수 정보</h4>
							<div class="necessary_input">
																<!-- 이메일 -->
								<div class="wrap_text_field">
									<input type="text" id="uemail1" class="text_field" value="이메일" dg-data="이메일" style="width:128px;">
									<span class="txt_mail">@</span>
									<input type="text" id="uemail_direct" class="text_field" value="" style="width:128px;">
									<div class="select_area email" data-id="select_area">
										<a href="javascript:void(0);" class="optbox_sel" dg-data="직접입력" id="uemail2" data-id="select_active">직접입력</a>
										<div class="optbox_list" data-id="select_list">
											<a href="javascript:void(0);" class="selected" data-id="selected" dg-data="직접입력">직접입력</a>
											<a href="javascript:void(0);" dg-data="naver.com">naver.com</a>
											<a href="javascript:void(0);" dg-data="hanmail.net">hanmail.net</a>
											<a href="javascript:void(0);" dg-data="nate.com">nate.com</a>
											<a href="javascript:void(0);" dg-data="gmail.com">gmail.com</a>
											<a href="javascript:void(0);" dg-data="lycos.co.kr">lycos.co.kr</a>
											<a href="javascript:void(0);" dg-data="yahoo.co.kr">yahoo.co.kr</a>
											<a href="javascript:void(0);" dg-data="yahoo.com">yahoo.com</a>
											<a href="javascript:void(0);" dg-data="empal.com">empal.com</a>
											<a href="javascript:void(0);" dg-data="dreamwiz.com">dreamwiz.com</a>
											<a href="javascript:void(0);" dg-data="paran.com">paran.com</a>
											<a href="javascript:void(0);" dg-data="korea.com">korea.com</a>
											<a href="javascript:void(0);" dg-data="chol.com">chol.com</a>
											<a href="javascript:void(0);" dg-data="hanmir.com">hanmir.com</a>
											<a href="javascript:void(0);" dg-data="hanafos.com">hanafos.com</a>
											<a href="javascript:void(0);" dg-data="freechal.com">freechal.com</a>
											<a href="javascript:void(0);" dg-data="hotmail.com">hotmail.com</a>
											<a href="javascript:void(0);" dg-data="netian.com">netian.com</a>
										</div>
									</div>
								</div>
								<p id="uemail_error" class="help_block">
									아이디로 사용할 이메일을 입력해 주시기 바랍니다.
								</p>
								<p id="uemail_dup_error" class="help_block">
									이미 사용중인 이메일 입니다. 다른 이메일을 입력해 주세요.
									<span id="email_dup_login" class="email_login">
										<a href="javascript:void(0);" onclick="location.href=memberServer+'/member/login/'+location.search">로그인</a>
										<span class="txt_bar">|</span>
										<a href="javascript:void(0);" onclick="window.open('/member/lost/pw/popup/','WeMakePrice','width=425,height=470,status=0,menu=0');">비밀번호 찾기</a>
									</span>
								</p>
								<p id="uemail_illegal_error" class="help_block">
									도용 신고 접수된 이메일입니다. 다른 이메일을 입력해 주세요.
									<span class="email_login">
										<a href="javascript:void(0);" onclick="location.href=memberServer+'/member/login/'+location.search">로그인</a>
										<span class="txt_bar">|</span>
										<a href="javascript:void(0);" onclick="window.open('/member/lost/pw/popup/','WeMakePrice','width=425,height=470,status=0,menu=0');">비밀번호 찾기</a>
									</span>
								</p>
								<p id="uemail_withdraw_div" class="help_block">
									탈퇴 신청 중인 이메일 입니다. 탈퇴신청을 철회하시려면 ->
									<a href="javascript:void(0);" onclick="location.href=memberServer+'/member/login/'+location.search">로그인</a>
								</p>
								<!-- //이메일 -->
																								<!-- 비밀번호 -->
								<div class="wrap_text_field">
									<div class="wrap_pass_field">
										<div class="clear_fix">
											<!-- <label for="upw" id="label_upw">비밀번호</label> -->
											<input type="password" id="upw" class="text_field" name="upw" maxlength="15" style="width:213px;">
										</div>
										<p id="upw_error" class="help_block">비밀번호를 입력해주세요.</p>
									</div>
									<div class="wrap_pass_field">
										<div class="clear_fix">
											<label for="urepw" id="label_urepw">비밀번호 재확인</label>
											<input type="password" id="urepw" class="text_field" name="urepw" maxlength="15" style="width:213px;" disabled>
										</div>
										<p id="urepw_error" class="help_block">입력하신 비밀번호가 일치하지 않습니다.</p>
									</div>
								</div>
								<!-- //비밀번호 -->
								<!-- 이름, 휴대폰번호/기본 -->
								<div class="wrap_text_field">
									<div class="wrap_name_field">
										<div class="clear_fix">
																							<input type="text" id="uname" name="uname" class="text_field" style="width:213px;" value="이름 " dg-data="이름 " />
																																</div>
										<p id="uname_error" class="help_block">이름을 입력해주세요.</p>
									</div>
									<div class="wrap_name_field">
										<input type="text" id="umobile" class="text_field" style="width:213px;" maxlength="13" value="휴대폰번호" dg-data="휴대폰번호" />
									</div>
								</div>
								<p class="help_block help_block_notice ico_dot" id="mobile_notice">휴대폰번호는 아이디 또는 비밀번호를 찾기 위한 정보이므로 정확하게 입력해 주세요.</p>
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
								<!-- 생년월일 -->
								<div class="wrap_text_field">
									<div class="select_area year" data-id="select_area" data-select-value="year">
										<a href="javascript:void(0);" class="optbox_sel" dg-data="생년" data-id="select_active" id="selected_year">생년</a>
										<div class="optbox_list" data-id="select_list" id="select_year">
											<a href="javascript:void(0);" class="selected" data-id="selected" dg-data="생년">생년</a>
										</div>
									</div>
									<div class="select_area month" data-id="select_area" data-select-value="month">
										<a href="javascript:void(0);" class="optbox_sel" dg-data="월" data-id="select_active" id="selected_month">월</a>
										<div class="optbox_list" data-id="select_list" id="select_month">
											<a href="javascript:void(0);" class="selected" data-id="selected" dg-data="월">월</a>
										</div>
									</div>
									<div class="select_area day" data-id="select_area" data-select-value="day">
										<a href="javascript:void(0);" class="optbox_sel" dg-data="일" data-id="select_active" id="selected_day">일</a>
										<div class="optbox_list" data-id="select_list" id="select_day">
											<a href="javascript:void(0);" class="selected" data-id="selected" dg-data="일">일</a>
										</div>
									</div>
								</div>
								<p id="birth_error" class="help_block">생년월일을 입력해 주세요.</p>
								<!-- //생년월일 -->
																<!-- 이용약관동의 -->
								<div class="wrap_text_field wrap_agree_area">
									<div class="wrap_check_agree">
										<strong>이용약관 동의</strong>
										<a href="/customer_center/agreement" class="btn_wmp_join btn_wmp_white btn_small" target="_blank">
											<span class="inner">내용보기</span>
										</a>
									</div>
								</div>
								<p class="help_block help_block_notice ico_dot">본 약관에는 마케팅 정보 수신에 대한 동의에 관한 내용이 포함되어 있으며, 회원은 언제든지 정보 메시지 수신 설정 메뉴에서 수신 거부로 변경할 수 있습니다.</p>
								<p class="help_block">이용약관동의 여부를 체크해주세요.</p>
								<!-- //이용약관동의 -->
								<!-- 개인정보 수집 및 이용안내 -->
								<p class="tit_wmp_join tit_agree_collecting">개인정보 수집 및 이용안내</p>
								<table summary="개인정보 수집 및 이용안내 목적, 항목, 보유 및 이용기간에 대한 정보 제공">
									<caption>개인정보 수집 및 이용안내</caption>
									<colgruop>
										<col width="34%" />
										<col width="33%" />
										<col width="33%" />
									</colgruop>
									<thead>
										<tr>
											<th>
												목적
											</th>
											<th>
												항목
											</th>
											<th>
												보유 및 이용 기간
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
																						<td>
												이용자 식별,<br/> 서비스 이용 및 상담, <br/>연령확인
											</td>
											<td>
												이름, 이메일,<br/>비밀번호, 휴대전화번호,<br/>생년월일(입력)
											</td>
																																	<td>
												회원탈퇴 후 5일 까지
											</td>
										</tr>
									</tbody>
								</table>
								<!-- //개인정보 수집 및 이용안내 -->
							</div>
						</div>
						<!-- //필수 정보 -->
						<!-- 부가 정보 -->
						<div class="wrap_cont_select">
							<h4 class="tit_wmp_join tit_join_select">부가 정보</h4>
														<!-- 성별, 전체동의 -->
							<div class="wrap_text_field wrap_agree_area">
								<div class="select_sex">
									<span class="txt_sex">성별</span>
									<div class="wrap_check_agree">
										<label>
											<input type="radio" class="check" name="select_sex" value="1" />
											남자
										</label>
									</div>
									<div class="wrap_check_agree">
										<label>
											<input type="radio" class="check" name="select_sex" value="2" />
											여자
										</label>
									</div>
									<p id="sex_error" class="help_block">성별 정보를 입력해주세요.</p>
								</div>
							</div>
							<!-- //성별, 전체동의 -->
							<!-- 선택항목 전체동의 동의 -->
							<div class="wrap_text_field wrap_agree_area">
								<div class="wrap_check_agree">
									<label>
										<input type="checkbox" class="check" data-id="agree_optional_info_select_all" />
										<strong>전체동의</strong>
									</label>
																		<span>
										(
										<label>
											<input type="checkbox" id="agree_sex" data-id="check_agree_optional_info" class="check" name="agree_sex">
											성별 수집동의
										</label>
									</span>
									<span>
										<label>
											<input type="checkbox" id="agree_birth" data-id="check_agree_optional_info" class="check" name="agree_birth">
											생년월일 수집동의 )
										</label>
									</span>
																										</div>
							</div>
							<!-- //선택항목 전체동의 동의 -->
							<p class="help_block_notice_red"> 선택항목은 동의하지 않아도 회원가입이 가능하며, 원하는 항목만 동의할 수 있습니다.</p>
							<!-- 개인정보 수집 및 이용안내 -->
							<p class="tit_wmp_join tit_agree_collecting">개인정보 수집 및 이용안내</p>
							<table summary="개인정보 수집 및 이용안내 목적, 항목, 보유 및 이용기간에 대한 정보 제공">
								<caption>개인정보 수집 및 이용안내</caption>
								<colgruop>
									<col width="34%" />
									<col width="33%" />
									<col width="33%" />
								</colgruop>
								<thead>
									<tr>
										<th>
											목적
										</th>
										<th>
											항목
										</th>
										<th>
											보유 및 이용 기간
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											맞춤형 상품 추천 등<br/>마케팅 활용
										</td>
										<td>
											성별, 생년월일 																					</td>
										<td>
											회원탈퇴 후 5일 까지
										</td>
									</tr>
								</tbody>
							</table>
							<!-- //개인정보 수집 및 이용안내 -->
							<div class="wrap_center_btn">
								<button type="submit" id="joinConfirmBtn" class="btn_wmp_join btn_wmp_red btn_large">
									<span class="inner">동의하고 회원가입</span>
								</button>
							</div>
						</div>
						<!-- //선택 항목 -->
					</div>
				</fieldset>
			</form>
		</div>
		<!-- //회원가입 -->
	</div>
	<!-- // container -->

	<!-- Footer -->
	<input type="hidden" id="utmcmd" value="organic" />
	<input type="hidden" id="utmcsr" value="naver" />

	<!-- Footer -->
<div id="footerSsl">
	<!--141105 푸터변경-->
	<div class="policy">
		<h2 class="hide">관련사이트</h2>
		<ul class="site_menu">
			<li class="blog"><a href="http://company.wemakeprice.com/wmp/" target="_blank">기업소개</a></li>
			<li class="employ"><a href="https://recruit.wemakeprice.com/notice/list" target="_blank">인재채용</a></li>
			<li class="stipulation"><a href="http://www.wemakeprice.com/customer_center/agreement/">이용약관</a></li>
			<li class="private"><a href="http://www.wemakeprice.com/customer_center/private_policy/">개인정보처리방침</a></li>
			<li class="private_youth"><a href="http://www.wemakeprice.com/customer_center/youth_policy/">청소년보호정책</a></li>
			<li class="coalition"><a href="http://www.wemakeprice.com/guide_book/contact_info">제휴문의</a></li>
			<li class="sevice"><a href="http://www.wemakeprice.com/promotion/wonder_0/preview">고객서비스</a></li>
		</ul>
	</div>
	<div class="footer_company">
		<h2 class="hide">회사정보</h2>
		<a class="company_logo" href="http://wemakeprice.com/main">특가대표! 위메프</a>
		<div class="company_info">
			<dl>
				<dt class="hide">회사명 :</dt>
				<dd>(주)위메프 (대표이사 : 박은상)</dd>
				<dt>주소 :</dt>
				<dd><address>서울특별시 강남구 영동대로 502 위메프빌딩</address></dd>
			</dl>
			<dl>
				<dt class="fst">사업자등록번호 :</dt>
				<dd>120-87-55227</dd>
				<dt>통신판매업신고번호 :</dt>
				<dd>제 2010 서울 강남 02066호</dd>
				<dd><a class="operator" href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1208755227" target="_blank">사업자정보 확인</a></dd>
			</dl>
			<dl>
				<dt class="fst">관광사업등록번호 :</dt>
				<dd>제2010-000024호</dd>
				<dt>개인정보보호책임자 :</dt>
				<dd>신명주 (<a href="mailto:tec@wemakeprice.com">tec@wemakeprice.com</a>)</dd>
			</dl>
			<p class="phone_number">
				<span class="num_client">
					고객센터 1588-4763, 평일 9:00~18:00, 주말/공휴일 10:00~17:00
					<a class="link_faq" href="http://www.wemakeprice.com/customer_center/faq">전화문의 전 클릭</a>
				</span>
				<span class="num_coalition">
					파트너센터 1644-4796, 평일 9:00 ~ 18:00, 토요일 10:00 ~ 17:00, 점심시간 12:00~13:00, 일요일/공휴일 휴무
				</span>
			</p>
			<p class="copyright">COPYRIGHT © WEMAKEPRICE INC.&nbsp; ALL RIGHTS RESERVED.</p>
		</div>
		<div class="info">
			<a class="link_notice" href="http://wemakeprice.com/board_notice/notice_view/302" target="_blank">위메프는 주민번호를 수집하지 않습니다.</a>
			<dl class="bank_notice">
				<dt>우리은행 채무지급보증 안내</dt>
				<dd>
					당사는 고객님이 현금 결제한 금액에 대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.
					<a class="link_security" href="javascript:void(0);" title="새창팝업 서비스 가입사실확인 " onclick="window.open('http://image.wemakeprice.com/images/resources/wmp/common/footer-security-2017.jpg','mark','scrollbars=no,resizable=no,width=580,height=820');">
						서비스 가입사실 확인
					</a>
				</dd>
			</dl>
		</div>
		<div class="footer_brand">
			<ul>
				<li class="brand1"><a href="http://www.wemakeprice.com/promotion/brandaward" target="_blank">2014 대한민국 명풍브랜드 대상</a></li>
				<li class="brand2"><a href="http://www.wemakeprice.com/promotion/brandaward" target="_blank">2014 한국의 가장 사랑받는 브랜드대상</a></li>
				<li class="brand3"><a href="http://www.wemakeprice.com/promotion/brandaward" target="_blank">모바일 브랜드 대상</a></li>
				<li class="brand4"><a href="http://www.wemakeprice.com/promotion/brandaward" target="_blank">2014 Korea Top Brand 대상</a></li>
				<li class="brand5"><a href="http://www.wemakeprice.com/promotion/brandaward" target="_blank">2014 고객감동 브랜드 지수 1위</a></li>
				<li class="brand6"><a href="http://www.wemakeprice.com/promotion/brandaward" target="_blank">2014 앱 어워드 베스트앱</a></li>
				<li class="brand7"><a href="http://www.wemakeprice.com/promotion/brandaward" target="_blank">2014 HTHI 2년연속수상</a></li>
			</ul>
		</div>
		<div class="association">
				<a class="link1" href="http://www.koipa.re.kr" target="_blank">한국지식재산보호원</a>
				<a class="link2" href="http://www.kolsa.or.kr" target="_blank">한국온라인쇼핑협회 정회원사</a>
				<span class="link3">위해상품차단시스템 운영매장</span>
		</div>
	</div>
	<!--141105 푸터변경-->
	</div>
<!-- // Footer -->



<div id="fb-root"></div>

<script>
(function(d){
	var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
	if (d.getElementById(id)) {return;}
	js = d.createElement('script'); js.id = id; js.async = true;
	js.src = document.location.protocol+"//connect.facebook.net/ko_KR/all.js";
	ref.parentNode.insertBefore(js, ref);
}(document));

window.fbAsyncInit = function() {
	FB.init({
		appId		: '122691617829067', // App ID
		channelUrl	: '//member.wemakeprice.com/social/channel', // Channel File
		status		: true, // check login status
		cookie		: true, // enable cookies to allow the server to access the session
		xfbml		: true,	// parse XFBML
		oauth		: true
	});
	//_ga.trackFacebook();

		
	
	if ( typeof(fb_modify_func) == 'function' )
	{
		fb_modify_func();
	}
};

</script>


<script type="text/javascript">
var _gaq = _gaq || [];

_gaq.push(['_setAccount', 'UA-18774526-1']);
_gaq.push(['_setDomainName', 'wemakeprice.com']);
_gaq.push(['_addIgnoredRef', 'wemakeprice.com']);
_gaq.push(['_addIgnoredRef', 'wemakeprice.co.kr']);
_gaq.push(['_setCampaignCookieTimeout', 0]);



_gaq.push(['_trackPageview']);
//_gaq.push(['_trackPageLoadTime']);


(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

$(document).ready(function() {
	ga_tracking('#login_banner li');	// 로그인배너
});

function ga_tracking(obj) {
	$(obj).each(function(){
		load_url = $(this).find("img").attr("load_url");
		load_position = $(this).find("img").attr("load_position");

		var rst0 = Math.floor(Math.random() * 100) + 1;		// 구글 트래킹 호출 관련 확률 적용
		if (rst0 == 1) {
			if($(this).css('display') != 'none') {
				_gaq.push(['_trackEvent', 'Banner Impr', load_position, load_url]);
			}
		}
	});
}

</script>



<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-5BBPNN"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5BBPNN');</script>
<!-- End Google Tag Manager -->	
				<!-- // Footer -->
</div>
<script type="text/javascript">
$(document).ready(function() {
	$('.wrap_check_agree button').live('click',function() {
		$("#xpopup2").html('');
		xpopup_close();

		$("#xpopup2").load('/customer_center/agreement_popup');
		$('#xpopup2').dialog({width: 510, minHeight: 252, autoOpen: false, modal: true, resizable: false});
		$('#xpopup2').dialog({
			close: function () {
				enable_scroll_y();
			}
		});
		$('#xpopup2').dialog('open');
		xpopup_open();
	});
});
</script>
</body>
</html>
