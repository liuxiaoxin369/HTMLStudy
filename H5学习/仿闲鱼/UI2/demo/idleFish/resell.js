define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.resellClick = function(event){
		justep.Shell.showPage("issue.w");
	};

	return Model;
});