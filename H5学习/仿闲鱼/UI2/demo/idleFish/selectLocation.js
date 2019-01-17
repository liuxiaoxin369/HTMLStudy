define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!cordova-plugin-geolocation");
	require("cordova!com.justep.cordova.plugin.baidulocation");

	var Model = function() {
		this.callParent();
		this.arr = [];
	};

	// 百度地图
	Model.prototype.modelLoad = function(event) {
		// 调用百度地图
		require([ 'http://api.map.baidu.com/api?v=2.0&ak=o9pzum8sF8s3wqodZnt9S5OsKlLdjOil&callback=_baiduInit' ], function() {
			if (window.BMap && window.BMap.Map) {
				window._baiduInit();
			}
		});
		var self = this;
		var id = this.getIDByXID("mapDiv");// mapDiv中添加地图
		window._baiduInit = function() {
			// 百度API功能
			var map = new BMap.Map(id);
			var geol = new BMap.Geolocation();// 创建定位对象
			var geoc = new BMap.Geocoder();// 创建定位对象

			// 定位成功开始画地图
			var success = function(data) {
				var lng = data.coords.longitude;
				var lat = data.coords.latitude;
				var coorType = data.coorType || "gps";

				// 添加判断,使地图可以同时支持Android和ios
				// 判断是否为百度经纬度坐标
				if (coorType == "bd09ll") {

					// 百度
					map.centerAndZoom(new BMap.Point(lng, lat), 17);// 设置中心点和地图比例
					map.setCurrentCity("北京");// 以城市名称为参数设置地图
					var marker = new BMap.Marker(new BMap.Point(lng, lat));// 标注对象
					map.addOverlay(marker);// 在地图上标注

					var mOption = {
						poiRadius : 500, // 半径为500米内的POI,默认100米
						numPois : 50
					// 列举出50个POI,默认10个
					};
					var pointArr = [];
					geoc.getLocation(new BMap.Point(lng, lat), function(rs) {
						var arr = rs.surroundingPois;
						for (var i = 0; i < arr.length; i++) {
							var options = {
								defaultValues : [ {
									curLng : arr[i].point.lng,
									curLat : arr[i].point.lat,
									title : arr[i].title,
									type : arr[i].Ui
								} ]
							};
							self.comp("MapData").newData(options);
							// 为获取到的地点信息添加定点
							var point = new BMap.Marker(new BMap.Point(arr[i].point.lng, arr[i].point.lat));// 标注对象
							map.addOverlay(point);// 在地图上标注

							// 更换定点图标
							var myIcon = new BMap.Icon("./images/map01.png", new BMap.Size(120, 112));// 图片路径和大小(width,height)
							var marker = new BMap.Marker(new BMap.Point(arr[i].point.lng, arr[i].point.lat), {
								icon : myIcon
							}); // 创建标注
							map.addOverlay(marker); // 将标注添加到地图中
							// 添加文本标注
							var label = new BMap.Label("位置" + (i + 1), {
								offset : new BMap.Size(40, 30)
							// 设置文本偏移量
							});
							// 设置字体样式
							label.setStyle({
								color : "white",
								fontSize : "18px",
								height : "20px",
								lineHeight : "20px",
								fontFamily : "微软雅黑"
							});
							marker.setLabel(label);
						}
					}, mOption);
					// 添加带有定位的导航控件
					var navigationControl = new BMap.NavigationControl({
						// 靠左上角位置
						anchor : BMAP_ANCHOR_TOP_LEFT,
						// LARGE类型
						type : BMAP_NAVIGATION_CONTROL_LARGE,
						// 启用显示定位
						enableGeolocation : true
					});
					map.addControl(navigationControl);

					// 若不是,则使用GPS坐标定位
				} else if (coorType == "gps") {
					$.ajax({
						method : "GET",
						url : "/baas/bmap/api/convertLocation",
						cache : false,
						data : {
							longitude : lng,
							latitude : lat
						}
					}).done(function(result) {

						// GPS
						var bmapResult = JSON.parse(result);
						var lng = bmapResult.result[0].x;
						var lat = bmapResult.result[0].y;
						map.centerAndZoom(new BMap.Point(lng, lat), 17);// 设置中心点和地图比例
						map.setCurrentCity("北京");// 以城市名称为参数设置地图
						var marker = new BMap.Marker(new BMap.Point(lng, lat));// 标注对象
						map.addOverlay(marker);// 在地图上标注

						var mOption = {
							poiRadius : 500, // 半径为500米内的POI,默认100米
							numPois : 50
						// 列举出50个POI,默认10个
						};
						var pointArr = [];
						geoc.getLocation(new BMap.Point(lng, lat), function(rs) {
							var arr = rs.surroundingPois;
							for (var i = 0; i < arr.length; i++) {
								var options = {
									defaultValues : [ {
										curLng : arr[i].point.lng,
										curLat : arr[i].point.lat,
										title : arr[i].title,
										type : arr[i].Ui
									} ]
								};
								self.comp("MapData").newData(options);
								// 为获取到的地点信息添加定点
								var point = new BMap.Marker(new BMap.Point(arr[i].point.lng, arr[i].point.lat));// 标注对象
								map.addOverlay(point);// 在地图上标注

								// 更换定点图标
								var myIcon = new BMap.Icon("./images/map01.png", new BMap.Size(120, 112));// 图片路径和大小(width,height)
								var marker = new BMap.Marker(new BMap.Point(arr[i].point.lng, arr[i].point.lat), {
									icon : myIcon
								}); // 创建标注
								map.addOverlay(marker); // 将标注添加到地图中
								// 添加文本标注
								var label = new BMap.Label("位置" + (i + 1), {
									offset : new BMap.Size(40, 30)
								// 设置文本偏移量
								});
								// 设置字体样式
								label.setStyle({
									color : "white",
									fontSize : "18px",
									height : "20px",
									lineHeight : "20px",
									fontFamily : "微软雅黑"
								});
								marker.setLabel(label);
							}
						}, mOption);
					});
				}
			};
			// 若定位失败返回
			var error = function() {
				alert("定位失败");
			};
			// 若定位成功运行success,否则运行error
			navigator.geolocation.getCurrentPosition(success, error);
		};
	};

	Model.prototype.nextBtnClick = function(event) {
		var row = this.comp('MapData').getCurrentRow();
		var params = {
			data : row
		};
		var self = this;
		justep.Shell.showPage("exam", params).done(function() {
			self.close();
		});
		
	};

	Model.prototype.titleClick = function(event){
		$(event.target).css({
			"color" : "red"
		}).siblings().css({
			"color" : ""
		});
	};

	return Model;
});