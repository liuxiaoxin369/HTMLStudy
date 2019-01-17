define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.loginWeixinClicked = function(event) {
		
	};

	Model.prototype.loginQQClick = function(event) {
	

	};

	Model.prototype.loginWeiboClick = function(event) {
		
	};


	Model.prototype.registerBtnClick = function(event){
		justep.Shell.showPage("register");
	};

	Model.prototype.loginBtnClick = function(event){
		var username = this.comp('username').val();
		var password = this.comp('password').val();
		
		var userData = this.comp('userData');
		userData.clear();
		userData.filters.setVar("username", username);
		userData.filters.setVar("password", password);

		userData.refreshData();
		
		if(userData.count()>0){
			justep.Util.hint("登录成功");
			justep.Shell.userName.set(userData.val('nickname'));
			justep.Shell.userId.set(userData.val('username'));
			
			var params ={
					data:"login"
			}
			justep.Shell.showPage("main",params);
			
			var user = {};
			user.userid = userData.val('username');
			user.accountType = "x5app";
			user.name = userData.val('nickname') || "NONAME";
			localStorage.setItem("userUUID", JSON.stringify(user));
			
		}else{
			justep.Util.hint("账号密码错误");
		}
		
		
		
	};

	Model.prototype.backBtnClick = function(event){
		this.close();
	};

	return Model;
});