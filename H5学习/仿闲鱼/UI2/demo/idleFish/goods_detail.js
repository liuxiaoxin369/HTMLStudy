define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.actionUrl = "/baas/justep/attachment/simpleFileStore";
	};


	Model.prototype.wantBtnClick = function(event){
		if(!justep.Shell.userName.get()){
			justep.Util.hint("请先登录！！");
			return;
		}
		var data = this.comp('detailData');
		var params = {
				name:data.val('title'),
				price:data.val('price'),
				image:data.val('image1'),
				id:data.val('id')
		}
		justep.Shell.showPage("purchase",params);
	};

	Model.prototype.backBtnClick = function(event){
		this.close();
	};

	Model.prototype.modelParamsReceive = function(event){
		var data = this.comp('detailData');
		data.loadData([ event.params.data ]);
		data.first();

	};
	
	Model.prototype.transUrl = function(image,id) {
	
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
	
	
	Model.prototype.timeTrans = function() {
		var createTime = this.comp('detailData').val('createTime');
		var time = justep.Date.fromString(createTime,'yyyy-MM-dd hh:mm:ss');
		var currentTime = new Date();
		var between = justep.Date.diff(time,currentTime,'h');
		if(between == 0){
			return "刚刚不久";
		}else if(between < 24){
			return between+"小时前";
		}else{
			var betweenDay = justep.Date.diff(time,currentTime,'d');
				return betweenDay+"天前";
			
		}
	}
	Model.prototype.isOrNotVisible = function() {
		var name = justep.Shell.userName.get();
		var data = this.comp('detailData');
		if(name == data.val('userId')){
			return false;
		}else{
			return true;
		}
	}
	

	return Model;
});