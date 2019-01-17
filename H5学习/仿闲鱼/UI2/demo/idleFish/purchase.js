define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.actionUrl = "/baas/justep/attachment/simpleFileStore";
	};

	Model.prototype.modelParamsReceive = function(event){
		var name = event.params.name;
		var price = event.params.price;
		var id = event.params.id;
		var image = event.params.image;
		
		var data= this.comp('data');
		data.newData({
			defaultValues:[{
				id:id,
				name:name,
				price:price,
				image:image
			}]
		})

	};
	
	
	Model.prototype.transUrl = function() {
		var image=this.comp('data').val("image");
		var id=this.comp('data').val("id");
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

	Model.prototype.okBtnClick = function(event){
		var data = this.comp('data');

		var name = data.val('name');
		var price = data.val('price');
		var image = data.val('image');
		var userName = justep.Shell.userName.get();
		var publishId = data.val('id');
		
		this.comp('buyData').newData({
			defaultValues:[{
				id:justep.UUID.createUUID(),
				publishId:publishId,
				goodsName:name,
				userName:userName,
				price:price,
				image:image
			
			}]
		})
		this.comp('buyData').saveData();
		
		
		var publishData = this.comp('publishData');
		var row = publishData.getRowByID(publishId);
		publishData.setValue("reverse", "selled", row);
		publishData.saveData();
		
		
		justep.Util.hint("购买成功！！");
		var params = {
				data:"buy"
		}
		justep.Shell.showPage("main",params);
	};

	return Model;
});