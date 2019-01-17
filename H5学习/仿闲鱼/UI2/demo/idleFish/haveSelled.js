define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.actionUrl = "/baas/justep/attachment/simpleFileStore";
	};

	Model.prototype.closeBtnClick = function(event) {
		this.close();
	};

	Model.prototype.filter = function(row) {
		var username = justep.Shell.userName.get();
		if (row.val('userId') == username && row.val('reverse') == "selled") {
			return true;
		} else {
			return false;
		}
	};

	Model.prototype.transUrl = function(image, id) {
		var src = null;
		if (image != null && image != "" && image != "[]") {
			var imageJson = eval("(" + image + ")");
			var realFileName = imageJson["realFileName"];
			var storeFileName = imageJson["storeFileName"];

			var operateType = "browse";
			var url = this.actionUrl + '?realFileName=' + realFileName + '&storeFileName=' + storeFileName + '&ownerID=' + id + '&operateType=' + operateType;
			src = require.toUrl(url);
		}

		return src;
	}

	return Model;
});