define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.chooseFishpondClick = function(event){
		var fishpondData = this.comp('fishpondData');
		var rowId = fishpondData.getCurrentRowID();
		var row = fishpondData.getRowByID(rowId);
		var publishCount = row.val('publishCount');
		
		fishpondData.setValue('publishCount', publishCount+1, row);
		fishpondData.saveData();
		var row = event.bindingContext.$object;
		var flag = this.isOrNotJoin(row);
		if(flag == true){
			this.comp('windowReceiver').windowEnsure({name:row.val('name'),id:row.val('id')});
		}else{
			this.comp('messageDialog').show();
		}
	};
	
	Model.prototype.isOrNotJoin = function(row){
		var data = this.comp('associationData');
		var arr = [];
		data.each(function(option){
			if(option.row.val('userId') ==  justep.Shell.userName.get()){
				arr.push(option.row.val('fishpondId'));
			}
		})
		if(arr.indexOf(row.val('id')) >= 0){
			return true;
		}else{
			return false;
		}
	};
	
	Model.prototype.changeText = function(row){
		var flag = this.isOrNotJoin(row);
		if(flag == true){
			return "已加入";
		}else{
			return "距您1000米";
		}
	}


	Model.prototype.messageDialogYes = function(event){
		var fishpondData = this.comp('fishpondData');
		var rowId = fishpondData.getCurrentRowID();
		var row = fishpondData.getRowByID(rowId);
		var popularity = row.val('popularity');
		var publishCount = row.val('publishCount');
		
		fishpondData.setValue('popularity', popularity+1, row);
		fishpondData.setValue('publishCount', publishCount+1, row);
		fishpondData.saveData();
		

		var a = justep.Shell.userName.get();
		this.comp('associationData').newData({
			defaultValues:[{
				id:justep.UUID.createUUID(),
				userId:a,
				fishpondId:rowId
			}]
		})
		
		this.comp('associationData').saveData();
		this.comp('windowReceiver').windowEnsure({name:row.val('name'),id:row.val('id')});
		
	};


	


	Model.prototype.messageDialogCancel = function(event){
		
	};


	


	return Model;
});