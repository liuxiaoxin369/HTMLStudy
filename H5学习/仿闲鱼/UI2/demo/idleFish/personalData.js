define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.actionUrl = "/baas/justep/attachment/simpleFileStore";
	};

	Model.prototype.backBtnClick = function(event) {
		this.close();
	};

	Model.prototype.uploadHeadIconClick = function(event) {
	var self = this;
		justep.Shell.showPage("uploadHeadIcon").done(function() {
			self.close();
		});
	};

	Model.prototype.transUrl = function() {
		var userId = justep.Shell.userName.get();
		var userData = this.comp('userData');
		var row = "";
		var photo = "";
		userData.each(function(option) {
			if (option.row.val('nickname') == userId) {
				row = option.row;
			}
		})
		if (row != "") {
			photo = row.val('photo');
		}
		var id = justep.Shell.userId.get();
		var src = "";
		if (photo != "" && photo != "undefined" && photo != null) {
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