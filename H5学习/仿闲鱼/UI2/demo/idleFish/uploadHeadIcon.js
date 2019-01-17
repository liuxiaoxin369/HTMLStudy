define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		var id = justep.Shell.userId.get();
		this.comp('data').setValue("id",id);
	};

	Model.prototype.okBtnClick = function(event){
		var id = this.comp('data').val('id');
		var image = this.comp('data').val('image');
		var row = this.comp('baasData2').getRowByID(id);
		this.comp('baasData2').setValue("photo", image, row);
		this.comp('baasData2').saveData();
		var params = {
				data:"uploadHeadIcon"
		}
		justep.Shell.showPage("main",params);
	};

	Model.prototype.backBtnClick = function(event){
		this.close();
	};

	return Model;
});