define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var utils = require("$UI/demo/plugin/utils");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.publishBtnClick = function(event) {
		$("[xid=opendiv]").toggleClass("hideopendiv")
	};

	Model.prototype.issueClick = function(event) {
		var userLocal = (localStorage.getItem("userUUID") && JSON.parse(localStorage.getItem("userUUID"))) || null;
		if (userLocal) {
			justep.Shell.showPage("resell");
		} else {
			justep.Util.hint("请先进行登陆");
		}
	};

	Model.prototype.modelParamsReceive = function(event) {
		var data = event.params.data;
		if (data == "create-fishpond" || data == "join-fishpond") {
			this.comp('fishpondContainer').refresh();
		} else if (data == "publish") {
			this.comp('homeContainer').refresh();
			this.comp('mineContainer').refresh();

		} else if (data == "buy") {
			this.comp('homeContainer').refresh();
			this.comp('mineContainer').refresh();
			this.comp('fishpondContainer').refresh();
		} else if (data == "login" || data == "cancel") {
			this.comp('mineContainer').refresh();
		} else if (data == "uploadHeadIcon") {
			this.comp('mineContainer').refresh();
		}
	};

	Model.prototype.cameraClick = function(event) {
		justep.Shell.showPage("issue");
	};

	return Model;
});