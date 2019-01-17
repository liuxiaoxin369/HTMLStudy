define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.actionUrl = "/baas/justep/attachment/simpleFileStore";
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
	
	Model.prototype.timeTrans = function(row) {
		var createTime = row.val('createTime');
		
		var time = justep.Date.fromString(createTime,'yyyy-MM-dd hh:mm:ss');
		var currentTime = new Date();
		var between = justep.Date.diff(time,currentTime,'h');
		if(between == 0){
			return "刚刚不久";
		}else if(between < 24){
			return between+"小时前";
		}else{
			var betweenDay = justep.Date.diff(time,currentTime,'d');
			if(betweenDay < 31){
				return betweenDay+"天前";
			}else{
				var betweenMonth = justep.Date.diff(time,currentTime,'m');
				if(betweenMonth<12){
					return betweenMonth+"月前";
				}else{
					var betweenYear = justep.Date.diff(time,currentTime,'y');
					return betweenYear+"年前";
				}
			}
		}
	}
	
	
	Model.prototype.changePhoto = function(userId){
			var userData = this.comp('userData');
			var row="";
			userData.each(function(option){
				if(option.row.val('nickname') == userId){
					row = option.row;
				}
			})
			var id = row.val('username');
			var photo = row.val('photo');
			var src = "";
			if (photo != null && photo != "" && photo != "[]" && photo != "undefined") {
				var imageJson = eval("(" + photo + ")");
				var realFileName = imageJson[0]["realFileName"];
				var storeFileName = imageJson[0]["storeFileName"];
				var ownerID = id;
				var operateType = "browse";
				var url = this.actionUrl + '?realFileName=' + realFileName + '&storeFileName=' + storeFileName + '&ownerID=' + ownerID + '&operateType=' + operateType;
				src = require.toUrl(url);
				return src;
			}else{
				return require.toUrl('./images/audio2.png');
			}

	}
	
	
	Model.prototype.isOrNotHaveImage = function(image) {
		if(image == null || image == undefined || image == ""){
			return false;
		}else{
			return true;
		}
	}



	Model.prototype.goodDetailClick = function(event){
		var row = event.bindingContext.$object;
		var params = {
				data:row.toJson()
		}
		justep.Shell.showPage("goods_detail",params);
	};



	Model.prototype.judicialClick = function(event){
		justep.Shell.showPage("judicial.w");
	};



	return Model;
});