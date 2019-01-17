define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.createBtnClick = function(event){
		var userLocal = (localStorage.getItem("userUUID") && JSON.parse(localStorage.getItem("userUUID"))) || null;
		if (userLocal) {
			justep.Shell.showPage("fishpond-apply");
		} else {
			justep.Util.hint("请先进行登陆");
		}
		
	};
	
	Model.prototype.fishpondDetailClick = function(event){
		var params = {
				data:event.bindingContext.$object.toJson(),
				flag:"join"
		}
		justep.Shell.showPage("fishpondDetail", params);
	};
	
	Model.prototype.backBtnClick = function(event){
		justep.Shell.showPage("main");
	};
	
	Model.prototype.filter = function(row){
		var associationData = this.comp('associationData');
		var arr = [];
		associationData.each(function(option){
			if(option.row.val('userId') ==  justep.Shell.userName.get()){
				arr.push(option.row.val('fishpondId'));
			}
		})
		if(arr.indexOf(row.val('id')) >= 0){
			return false
		}else{
			return true;
		}
	};
	
	return Model;
});