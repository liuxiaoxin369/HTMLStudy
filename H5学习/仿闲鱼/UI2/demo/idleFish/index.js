define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');

	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('./main.w')
				},
				"login" : {
					url : require.toUrl('./login.w')
				},
				"mine" : {
					url : require.toUrl('./mine.w')
				},
				"register" : {
					url : require.toUrl('./register.w')
				},
				"issue" : {
					url : require.toUrl('./issue.w')
				},
				"resell" : {
					url : require.toUrl('./resell.w')
				},
				"goods_detail" : {
					url : require.toUrl('./goods_detail.w')
				},
				"purchase" : {
					url : require.toUrl('./purchase.w')
				},
				"nearby" : {
					url : require.toUrl('./nearby.w')
				},
				"fishpond-apply" : {
					url : require.toUrl('./fishpond-apply.w')
				},
				"exam" : {
					url : require.toUrl('./exam.w')
				},
				"applyFishpond" : {
					url : require.toUrl('./applyFishpond.w')
				},
				"fishpondDetail" : {
					url : require.toUrl('./fishpondDetail.w')
				},
				"minePublish" : {
					url : require.toUrl('./minePublish.w')
				},
				"selectLocation" : {
					url : require.toUrl('./selectLocation.w')
				},
				"detail" : {
					url : require.toUrl('./detail.w')
				},
				"haveBought" : {
					url : require.toUrl('./haveBought.w')
				},
				"haveSelled" : {
					url : require.toUrl('./haveSelled.w')
				},
				"judicial" : {
					url : require.toUrl('./judicial.w')
				},
				"auction_detail" : {
					url : require.toUrl('./auction_detail.w')
				},
				"personalData" : {
					url : require.toUrl('./personalData.w')
				},
				"uploadHeadIcon" : {
					url : require.toUrl('./uploadHeadIcon.w')
				}
			}
		})

	};

	Model.prototype.modelLoad = function(event){
		justep.Shell.userType = justep.Bind.observable();
		justep.Shell.userName = justep.Bind.observable();
		justep.Shell.userId = justep.Bind.observable();
		
		var userLocal = (localStorage.getItem("userUUID") && JSON.parse(localStorage.getItem("userUUID"))) || null;
		if (userLocal) {
			justep.Shell.userName.set(userLocal.name || "UNKNOWN");
			justep.Shell.userType.set(userLocal.accountType || "UNKNOWN");
			justep.Shell.userId.set(userLocal.userid || "UNKNOWN")
		} else {
			justep.Shell.showPage("main");
		}
		
	};

	return Model;
});