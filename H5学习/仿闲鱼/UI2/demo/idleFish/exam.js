define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.params;
	};

	Model.prototype.submitBtnClick = function(event){
		var params = this.params; 
		justep.Shell.showPage("applyFishpond",params);
	};

	Model.prototype.modelParamsReceive = function(event){
		this.params = event.params;
	};

	return Model;
});