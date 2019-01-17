$(function() {
	$("#mobile").focus(function() {
		$(this).css("color", "#000");
	});
	$("#passCode").focus(function() {
		$(this).css("color", "#000");
	});
	$("#password").focus(function() {
		$(this).css("color", "#000");
	});
	$("#re_password").focus(function() {
		$(this).css("color", "#000");
	});
	var reg = /^1[3|4|5|6|7|8|9][0-9]{9}$/;
	var mobile = $("#mobile").val();
	console.log('mobile:', mobile);

	var output = $('.output');
	$('#mobile').bind('keyup',function(e){
		var value = this.value.replace(/[^\d\s]/g, ''); //匹配数字 
		this.value = value.replace(/(^\s*)(\s*$)/g, ''); //去除前后空格 
		var parent = /^1[3|4|5|6|7|8|9][0-9]{9}$/.test(this.value);
		if(this.value.length == 3 && e.keyCode!= 8) {
			// 8 退格键键码 如果不监控退格键键码，用户输入错误时，按退格键退到第8位时会自动添加空格，会导致不能退格 
			this.value = this.value + ' ';
		} else if(this.value.length == 8 && e.keyCode!= 8) {
			this.value = this.value + ' ';
		} else {
			output.innerHTML = '';
		}
	})

	$("#password").bind("blur", function() {
		if(($("#password").val().length < 6) || ($("#password").val().length > 20)) {
			$("#password").css({
				"color": "red",
				"border": "1px red solid"
			});
			$(".tip_3").html("密码长度6-20位");
			return false;
		} else {
			$(".tip_3").html("");
		}
	}); //密码验证

	$("#re_password").bind("blur", function() {
		if($("#re_password").val() != $("#password").val()) {
			$("#re_password").css({
				"color": "red",
				"border": "1px red solid"
			});
			$(".tip_4").html("两次密码不一致");
			return false;
		} else {
			$(".tip_4").html("");
		}
	}); //确认密码验证

	/**
	 * 手机验证码
	 */	
	var mobileLen = $('#mobile').value;
	var mbCodeLen = $('#passCode').val();
	$('#mobile').on('blur', function() {
		$('#passCode').on('blur', function() {
			$('#check_btn').addClass('activeBtn');
		})
	});
	//获取验证码
	$('#btnSendCode').click(function() {
		var mobile = $('#mobile').val();
		console.log('mobile:', mobile);
		var reg = /^1[3|4|5|6|7|8|9][0-9|\s ]{11}$/;
		if(mobile.trim().length == 0) {
			$('.popup1').animate({
				opacity: "show"
			}, "slow");
			setTimeout(function() {
				$('.popup1').animate({
					opacity: "hide"
				}, "slow");
			}, 2000);
		}
		if(!reg.test(mobile)) {
			//      alert('手机号输入有误！');
			$('.popup2').animate({
				opacity: "show"
			}, "slow");
			setTimeout(function() {
				$('.popup2').animate({
					opacity: "hide"
				}, "slow");
			}, 2000);
		} else {
			sendMessage();
		}
	});

	//重新获取验证码
	$('.reBtnSendCode').click(function() {
		sendMessage();
	});

	var obj = GetRequest();
	var	invite_code = obj.invite_code;
	
	$("#signup-submit").click(function() {
		$(".tip_1").html("");
		$(".tip_2").html("");
		$(".tip_3").html("");
		$(".tip_4").html("");
		var mobile = $('#mobile').val();
		var mobile = Trim(mobile,'g');
		var passCode = $("#passCode").val();
		var data = {};
		data.mobile = parseInt(mobile);
		data.mobile_code = parseInt(passCode);
		data.password = $.trim($("#password").val());
		data.rpassword = $.trim($("#re_password").val());
		data.invite_code = invite_code;

		$.ajax({
			url: "http://192.168.1.163:81/wabao20-invite_register",
			data: data,
			type: "POST",
			dataType: "json",
			success: function (data)
	        {
	            if("200"==data.code){
	                console.log(data.code);
	               	window.location.href = "./loading.html";                   
	            } else if (data.message == "该手机号重复注册"){
	            	$('.popup4').animate({
						opacity: "show"
					}, "slow");
					setTimeout(function() {
						$('.popup4').animate({
							opacity: "hide"
						}, "slow");
					}, 2000);
				} else if (data.message == "验证码不对"){
	        		$('.popup5').animate({
						opacity: "show"
					}, "slow");
					setTimeout(function() {
						$('.popup5').animate({
							opacity: "hide"
						}, "slow");
					}, 2000);
            	} else if (data.message == "验证码已过期"){
            		$('.popup6').animate({
						opacity: "show"
					}, "slow");
					setTimeout(function() {
						$('.popup6').animate({
							opacity: "hide"
						}, "slow");
					}, 2000);
				} else if (data.message == "两次密码不一致"){
	            	$('.popup7').animate({
						opacity: "show"
					}, "slow");
					setTimeout(function() {
						$('.popup7').animate({
							opacity: "hide"
						}, "slow");
					}, 2000);
	            }else{
	                console.log(data.message);
	                return false;
	            }
	        }
		});
	});

	//点击下载APP
	$(".loadAPP").on('touchstart',function(){
		var u = navigator.userAgent, 
		isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1,
		isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/),
		urls = {
			'android':'http://sj.qq.com/myapp/detail.htm?apkName=com.qianjinjia.zhishan',
			'ios':'https://itunes.apple.com/cn/app/id1035560712?mt=8',
			'other':'http://search.chongbuluo.com/'
		};
		window.location.href = isAndroid? urls.android : isiOS? urls.ios : urls.other;
	});	
}); //document

var InterValObj; //timer变量，控制时间
var count = 60; //间隔函数，1秒执行
var curCount; //当前剩余秒数
function sendMessage() {
	curCount = count;
	//设置button效果，开始计时
	$("#btnSendCode").attr("disabled", "true");
	InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次

	var mobile = $('#mobile').val();
	var mobile = Trim(mobile, 'g');
	var messageURL = "http://192.168.1.163:81/business-sendMobileCode";	
	
	$.ajax({
		type: "POST", //用POST方式传输
		datatype: "json",
		url: messageURL, //目标地址
		data: {
			"mobile": mobile
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			console.info("error.");
		},
		success: function(msg) {
			var arr = jQuery.parseJSON(msg);
			if(arr.code == 200) {
				//alert("发送成功");
			} else {
				alert(arr.message);
			}
		}
	});
}

//timer处理函数
function SetRemainTime() {
	if(curCount == 0) {
		window.clearInterval(InterValObj); //停止计时器
		$("#btnSendCode").removeAttr("disabled"); //启用按钮
		$("#btnSendCode").val("重新发送验证码");
		$("#btnSendCode").css('font-size', '14px');
		code = ""; //清除验证码。如果不清除，过时间后，输入收到的验证码依然有效
		$("#btnSendCode").addClass('reBtnSendCode');
	} else {
		curCount--;
		$("#btnSendCode").val(+curCount + "秒后重发");
		$("#btnSendCode").css('background-color', '#DCDFE6');
	}
}

function Trim(str, is_global) {
	var result;
	result = str.replace(/(^\s+)|(\s+$)/g, "");
	if(is_global.toLowerCase() == "g") {
		result = result.replace(/\s/g, "");
	}
	return result;
}
//获取url？号后面的参数
function GetRequest() {
	var url = location.search; //获取url中"?"符后的字串 
	var theRequest = new Object();
	if(url.indexOf("?") != -1) {
		var str = url.substr(1);
		strs = str.split("&");
		for(var i = 0; i < strs.length; i++) {
			theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
		};
	};
	return theRequest;
};