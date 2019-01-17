define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.actionUrl = "/baas/justep/attachment/simpleFileStore";
	};

	Model.prototype.modelParamsReceive = function(event){
	
		var flag = event.params.flag;
		this.comp('data1').setValue("flag",flag);
		this.comp('data').loadData([ event.params.data ]);
		this.comp('data').first();
	};

	Model.prototype.joinBtnClick = function(event){
	
		if(!justep.Shell.userName.get()){
			justep.Util.hint("请先登录！！");
			return;
		}
		var fishpondData = this.comp('fishpondData');
		var rowId = this.comp('data').val('id');
		var row = fishpondData.getRowByID(rowId);
		var popularity = row.val('popularity');
		
		fishpondData.setValue('popularity', popularity+1, row);
		fishpondData.saveData();
		
		var userId = justep.Shell.userName.get();
		var a = justep.Shell.userName.get();
		this.comp('associationData').newData({
			defaultValues:[{
				id:justep.UUID.createUUID(),
				userId:userId,
				fishpondId:rowId
			}]
		})
		
		this.comp('associationData').saveData();
		this.comp('associationData').refreshData();
		
		justep.Util.hint("加入鱼塘成功！！");
		var params = {
				data:"join-fishpond"
		}
		justep.Shell.showPage("main",params);
		
	};
	

	Model.prototype.backBtnClick = function(event){
		this.close();
	};

	Model.prototype.neighborBtnClick = function(event){
		this.comp('data1').setValue("hodgepodge", 0);
		this.comp('data1').setValue("neighbor", 1);
	};

	Model.prototype.hodgepodgeBtnClick = function(event){
		this.comp('data1').setValue("hodgepodge", 1);
		this.comp('data1').setValue("neighbor", 0);
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
	
	Model.prototype.isOrNotHaveImage = function(image) {
		if(image == null || image == undefined || image == ""){
			return false;
		}else{
			return true;
		}
	}
	
	Model.prototype.filter = function(row) {
		var fishpondId = this.comp('data').val('id');
		if(row.val('fishpondId') == fishpondId){
			return true;
		}else{
			return false;
		}
		
	}
	Model.prototype.isOrNotShow = function() {
		var flag = this.comp('data1').val('flag');
		if(flag == "join"){
			return true;
		}else{
			return false;
		}
	}
	
	Model.prototype.isOrNotShow2 = function() {
		var flag = this.comp('data1').val('flag');
		if(flag == "publish"){
			return true;
		}else{
			return false;
		}
	}
	
	
	return Model;
});