define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.actionUrl = "/baas/justep/attachment/simpleFileStore";
	};

	Model.prototype.changeUsername = function() {
		if (justep.Shell.userName.get()) {
			return justep.Shell.userName.get();
		} else {
			return "你还没有登录哦！";
		}
	};

	Model.prototype.changeDescription = function() {
		if (justep.Shell.userName.get()) {
			return "虽然还没挣到钱，但是开心就好！"
		} else {
			return "";
		}
	};

	Model.prototype.changePhoto = function() {
		var userData = this.comp('userData');
		var row= "";
		var id = "";
		var photo = "";
		var userId = justep.Shell.userName.get();
		userData.each(function(option) {
			if (option.row.val('nickname') == userId) {
				row = option.row;
			}
		})
		if(row != ""){
			id = row.val('username');
			photo = row.val('photo');
		}
		if (photo != "undefined" && photo != "" && photo != null) {
			var src = "";
			if (photo != null && photo != "" && photo != "[]" && photo != "undefined") {
				var imageJson = eval("(" + photo + ")");
				var realFileName = imageJson[0]["realFileName"];
				var storeFileName = imageJson[0]["storeFileName"];
				var ownerID = id;
				var operateType = "browse";
				var url = this.actionUrl + '?realFileName=' + realFileName + '&storeFileName=' + storeFileName + '&ownerID=' + ownerID + '&operateType=' + operateType;
				src = require.toUrl(url);
			}

			return src;
		} else {
			return require.toUrl('./images/audio2.png');
		}

	}

	Model.prototype.changeButtonMore = function() {
		if (!justep.Shell.userName.get()) {
			return false;
		} else {
			return true;
		}
	}
	Model.prototype.changeButtonLogin = function() {
		if (justep.Shell.userName.get()) {
			return false;
		} else {
			return true;
		}
	}

	Model.prototype.loginBtnClick = function() {
		justep.Shell.showPage("login");
	}

	Model.prototype.col19Click = function(event) {
		var type = justep.Shell.userType.get();
		var name = justep.Shell.userName.get();
		if (!confirm("确定要注销" + type + "用户：" + name + "吗？")) {
			return;
		}
		justep.Shell.userType.set("");
		justep.Shell.userName.set("");
		justep.Shell.userId.set("");
		justep.Shell.photo.set("");
		localStorage.removeItem("userUUID");
		justep.Util.hint("注销成功");
		setTimeout(function() {
			var params = {
				data : "cancel"
			}
			justep.Shell.showPage("main", params);
		}, 5000);
	};

	Model.prototype.publishCount = function() {
		var userName = justep.Shell.userName.get();
		var publishData = this.comp('publishData');
		var count = 0;
		publishData.each(function(option) {
			if (option.row.val('userId') == userName) {
				count++;
			}
		})
		return count;

	}

	Model.prototype.buyCount = function() {
		var userName = justep.Shell.userName.get();
		var buyData = this.comp('buyData');
		var count = 0;
		buyData.each(function(option) {
			if (option.row.val('userName') == userName) {
				count++;
			}
		})
		return count;

	}
	Model.prototype.selledCount = function() {
		var userName = justep.Shell.userName.get();
		var publishData = this.comp('publishData');
		var count = 0;
		publishData.each(function(option) {
			if (option.row.val('userId') == userName && option.row.val('reverse') == "selled") {
				count++;
			}
		})
		return count;

	}

	Model.prototype.minePublishClick = function(event) {
		justep.Shell.showPage("minePublish");
	};

	Model.prototype.haveBoughtClick = function(event) {
		justep.Shell.showPage("haveBought");
	};

	Model.prototype.haveSelledClick = function(event) {
		justep.Shell.showPage("haveSelled");
	};

	Model.prototype.mineMessageClick = function(event) {
		justep.Shell.showPage("personalData");
	};

	Model.prototype.transUrl = function() {
		var id = justep.Shell.userId.get();
		var photo = justep.Shell.photo.get();
		var src = "";
		if (photo != null && photo != "" && photo != "[]" && photo != "undefined") {
			var imageJson = eval("(" + photo + ")");
			var realFileName = imageJson[0]["realFileName"];
			var storeFileName = imageJson[0]["storeFileName"];
			var ownerID = id;
			var operateType = "browse";
			var url = this.actionUrl + '?realFileName=' + realFileName + '&storeFileName=' + storeFileName + '&ownerID=' + ownerID + '&operateType=' + operateType;
			src = require.toUrl(url);
		}

		return src;
	}

	return Model;
});