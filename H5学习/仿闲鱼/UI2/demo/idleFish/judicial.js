define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.dataChangeNum = function(){
		this.comp("cssChangeData").setValue("css",1);
	};
	
	Model.prototype.image9Click = function(event){
		justep.Shell.showPage("auction_detail");
	};

	return Model;
});