define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.curLng;
		this.curLat
	};

	Model.prototype.createBtnClick = function(event) {
		var name = this.comp('nameInput').val();
		var type = this.comp('typeInput').val();
		var self = this;
		this.comp('fishpondData').newData({
			defaultValues : [ {
				id : justep.UUID.createUUID(),
				name : name,
				type : type,
				popularity : 1,
				publishCount : 0,
				curLng : self.curLng,
				curLat : self.curLat
			} ]
		})

		this.comp('fishpondData').saveData();
		var associationData = this.comp('associationData');
		var userId = justep.Shell.userName.get();
		var fishpondId = this.comp('fishpondData').getCurrentRowID();
		;
		associationData.newData({
			defaultValues : [ {
				id : justep.UUID.createUUID(),
				userId : userId,
				fishpondId : fishpondId
			} ]
		})
		associationData.saveData();

		justep.Util.hint("鱼塘创建成功！！！");
		var params = {
			data : "create-fishpond"
		}
		var self = this;
		justep.Shell.showPage("main", params).done(function() {
			self.close();
		});
		
	};

	Model.prototype.backBtnClick = function(event) {
		this.close();
	};

	Model.prototype.modelParamsReceive = function(event) {
		var row = event.params.data;

		this.curLng = row.val('curLng');
		this.curLat = row.val('curLat');
		this.comp('nameInput').val(row.val('title'));
		this.comp('typeInput').val(row.val('type'));
	};

	return Model;
});