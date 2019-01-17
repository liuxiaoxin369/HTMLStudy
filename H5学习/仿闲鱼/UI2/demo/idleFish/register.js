define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.registerClick = function(event){
		var password = this.comp('password').val();
		var passwordAgn = this.comp('passwordAgn').val();
		var username = this.comp('username').val();
		var nickname = this.comp('nickname').val();
		var userData = this.comp('userData');
		
		if(username == "" || password == "" || passwordAgn == ""){
			justep.Util.hint("用户名密码不能为空！");
			return;
		}
		if(password != passwordAgn){
			justep.Util.hint("密码不一致！");
			return;
		}
		
		
		var status = true;
		userData.each(function(param){

			if(username ==  param.row.val('username')){
				justep.Util.hint("用户名已被占用！");
				status = false;
				return;
			}
			
		})
		if(status == true){
			userData.newData({
			defaultValues:[{
				username:username,
				password:password,
				nickname:nickname || null
				}]
			});
			userData.saveData();
			justep.Shell.userName.set(nickname);
			justep.Shell.userType.set("x5app");
			justep.Shell.userId.set(username);
			
			
			var user = {};
			user.userid = username;
			user.accountType = "x5app";
			user.name = userData.val('nickname') || "NONAME";
			localStorage.setItem("userUUID", JSON.stringify(user));
			justep.Shell.showPage("main");
		}

		
	};

	Model.prototype.backBtnClick = function(event){
		this.close();
	};


	return Model;
});