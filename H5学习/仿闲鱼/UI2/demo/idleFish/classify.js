define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.classifyClick = function(event){
		var classify = event.target.innerText;
		this.comp('windowReceiver').windowEnsure({data:classify});
	};

	return Model;
});