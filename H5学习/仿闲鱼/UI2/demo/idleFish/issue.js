define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();

	};

	Model.prototype.scanBtnClick = function(event) {

		// cordova.plugins.barcodeScanner.encode(
		// "TEXT_TYPE",
		// "http://www.baidu.com",
		// function(success) {
		// alert("encode success: " + success);
		// }, function(fail) {
		// alert("encoding failed: " + fail);
		// }
		// );
	};
	Model.prototype.startBtnClick = function(event) {
		this.comp("data1").setValue("start", 1);
		this.comp("data1").setValue("auction", 0);
		this.comp("data1").setValue("end", 0);

		// this.comp("auctionDiv").show();
	};

	Model.prototype.auctionBtnClick = function(event) {
		this.comp("data1").setValue("start", 0);
		this.comp("data1").setValue("auction", 1);
		this.comp("data1").setValue("end", 0);

		$("[xid=publishBtn]").css("background", "#aaa");
	};
	Model.prototype.endBtnClick = function(event) {
		this.comp("data1").setValue("start", 0);
		this.comp("data1").setValue("auction", 0);
		this.comp("data1").setValue("end", 1);

		$("[xid=publishBtn]").css("background", "#e4393c");
	};
	// 当不开价中的内容被点击的时候背景颜色改变
	Model.prototype.BgColor = function(self) {

		$(self).css({
			"backgroundColor" : "#FFDA44",
			"borderColor" : "transparent"
		}).siblings().css({
			"backgroundColor" : "#fff",
			"borderColor" : "#AAA"
		});
	}
	Model.prototype.span8Click = function(event) {
		var self = event.currentTarget;
		this.BgColor(self);
	};

	Model.prototype.span15Click = function(event) {
		var self = event.currentTarget;
		this.BgColor(self);
	};

	Model.prototype.span16Click = function(event) {
		var self = event.currentTarget;
		this.BgColor(self);
	};

	Model.prototype.publishBtnClick = function(event) {

		var data = this.comp('pageData');
		var id = data.val('id');
		var title = data.val('title');
		var description = data.val('description');
		var time = justep.Date.toString(new Date(), 'yyyy-MM-dd hh:mm:ss')
		var fishpondId = data.val('fishpondId');

		var image = [];

		if (data.val('image') != null && data.val('image') != "" && data.val('image') != "[]") {
			image = eval("(" + data.val('image') + ")");
		}

		var price = data.val('price');
		var kind = data.val('kind');
		var userId = justep.Shell.userName.get();

		this.comp('publishData').newData({
			defaultValues : [ {
				id : id,
				title : title,
				description : description,
				image1 : image[0] == undefined ? null : (JSON.stringify(image[0]) || null),
				image2 : image[1] == undefined ? null : (JSON.stringify(image[1]) || null),
				image3 : image[2] == undefined ? null : (JSON.stringify(image[2]) || null),
				price : price,
				kind : kind,
				userId : userId,
				createTime : time,
				fishpondId : fishpondId
			} ]
		})
		this.comp('publishData').saveData();
		justep.Util.hint("发布成功");
		var params = {
			data : "publish"
		}
		var self = this;
		justep.Shell.showPage("main", params).done(function() {
			self.close();
		});
		

	};

	Model.prototype.classifyBtnClick = function(event) {
		this.comp('classifyDialog').open();
	};

	Model.prototype.classifyDialogReceive = function(event) {
		var classify = event.data.data;
		this.comp('classify').val(classify);
	};

	Model.prototype.moreFishpondClick = function(event) {
		this.comp('fishpondDialog').open();
	};

	Model.prototype.fishpondDialogReceive = function(event) {
		var fishpondName = event.data.name;
		var fishpondId = event.data.id;
		this.comp('pageData').setValue("fishpondName", fishpondName);
		this.comp('pageData').setValue("fishpondId", fishpondId);
	};

	return Model;
});