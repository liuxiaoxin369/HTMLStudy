define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!cordova-plugin-geolocation");
	require("cordova!com.justep.cordova.plugin.baidulocation");

	var Model = function() {
		this.callParent();
	};

	// 百度地图

	Model.prototype.modelLoad = function(event) {
		var data = this.comp('fishpondData');
		var data_info = [];

		data.each(function(option) {
			var arr = [];
			arr.push(option.row.val('curLng'));
			arr.push(option.row.val('curLat'));
			arr.push(option.row.val('name'));
			data_info.push(arr);
		});
		// 调用百度地图
		require([ 'http://api.map.baidu.com/api?v=2.0&ak=o9pzum8sF8s3wqodZnt9S5OsKlLdjOil&callback=_baiduInit' ], function() {
			if (window.BMap && window.BMap.Map) {
				window._baiduInit();
			}
		});
		var self = this;
		var id = this.getIDByXID("mapDiv");// mapDiv中添加地图

		window._baiduInit = function() {
			// 调用百度地图API功能
			var map = new BMap.Map(id);// 创建定位对象
			var geol = new BMap.Geolocation();// 创建定位对象
			var geoc = new BMap.Geocoder();

			// 定位成功开始画地图
			var success = function(data) {
				var lng = data.coords.longitude;
				var lat = data.coords.latitude;
				var coorType = data.coorType || "gps";

				// 添加判断,使地图可以同时支持Android和ios
				// 判断是否为百度经纬度坐标
				if (coorType == "bd09ll") {
					// 百度
					map.setCurrentCity("北京");// 以城市名称为参数设置地图
					map.centerAndZoom(new BMap.Point(lng, lat), 16);
					var marker = new BMap.Marker(new BMap.Point(lng, lat));// 标注对象
					marker.disableMassClear();// 禁止覆盖物在map.clearOverlays方法中被清除
					map.addOverlay(marker);// 在地图上标注

					// 添加圆形覆盖物
					var pt = new BMap.Point(lng, lat);
					var circle = new BMap.Circle(pt, 160, {
						strokeColor : "blue",
						strokeWeight : 2,
						strokeOpacity : 0.1
					});// 画圆 ,颜色,重量(类似堆叠效果),不透明度
					map.addOverlay(circle);// 在地图上标注

					// 添加多个点(固定的)
					geoc.getLocation(pt, function(rs) {
						console.log(rs.surroundingPois);
					});

					// 创建检索信息窗口对象
					var opts = {
						title : "鱼塘地址：", // 标题
						width : 40, // 信息窗口宽度
						height : 10, // 信息窗口高度
						enableMessage : true,// 设置允许信息窗发送短息
					};

					for (var i = 0; i < data_info.length; i++) {// 循环中更换图标
						var myIcon = new BMap.Icon("./images/clipboard.jpg", new BMap.Size(23, 22));// 图片路径和大小(width,height)
						var marker = new BMap.Marker(new BMap.Point(data_info[i][0], data_info[i][1]), {
							icon : myIcon
						}); // 创建标注
						var content = data_info[i][2];
						marker.disableMassClear();// 禁止覆盖物在map.clearOverlays方法中被清除

						map.addOverlay(marker); // 将标注添加到地图中
						marker.addEventListener("click", function(e) {

							var lng = this.point.lng;
							var lat = this.point.lat;
							var arr = map.getOverlays();

							// 点击时添加圆形覆盖物
							map.clearOverlays(); // 清除页面所有覆盖物
							var point1 = new BMap.Point(lng, lat);
							var circle1 = new BMap.Circle(point1, 160, {
								strokeColor : "blue",
								strokeWeight : 2,
								strokeOpacity : 0.1
							});// 画圆,添加圆形覆盖物,颜色,重量(类似堆叠效果),不透明度
							map.addOverlay(circle1);
						});
						addClickHandler(content, marker);
					}
					// 点击时添加信息窗口
					function addClickHandler(content, marker) {
						marker.addEventListener("click", function(e) {
							openInfo(content, e);
						
							var row;
							var data = self.comp('fishpondData');
							data.each(function(option) {
								if(option.row.val('name') == content){
									row = option.row;
								}
							});
							var params = {
									data:row.toJson()
							}
							// 地图页面跳转
							if(confirm("是否查看鱼塘信息？")){
								justep.Shell.showPage('fishpondDetail',params);
							}else{}
							
						});
					}
					function openInfo(content, e) {
						var p = e.target;
						var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
						var infoWindow = new BMap.InfoWindow(content, opts); // 创建信息窗口对象
						map.openInfoWindow(infoWindow, point); // 开启信息窗口
					}

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

						map.setCurrentCity("北京");// 以城市名称为参数设置地图
						map.centerAndZoom(new BMap.Point(lng, lat), 16);
						var marker = new BMap.Marker(new BMap.Point(lng, lat));// 标注对象
						marker.disableMassClear();// 禁止覆盖物在map.clearOverlays方法中被清除
						map.addOverlay(marker);// 在地图上标注

						// 添加圆形覆盖物
						var pt = new BMap.Point(lng, lat);
						var circle = new BMap.Circle(pt, 160, {
							strokeColor : "blue",
							strokeWeight : 2,
							strokeOpacity : 0.1
						});// 画圆 ,颜色,重量(类似堆叠效果),不透明度
						map.addOverlay(circle);// 在地图上标注

						// 添加多个点(固定的)
						geoc.getLocation(pt, function(rs) {
							console.log(rs.surroundingPois);
						});

						// 创建检索信息窗口对象
						var opts = {   
							title : "鱼塘地址：", // 标题   
							width : 220, // 信息窗口宽度
							height : 60, // 信息窗口高度
							enableMessage : true,// 设置允许信息窗发送短息
						};

						for (var i = 0; i < data_info.length; i++) {// 循环中更换图标
							var myIcon = new BMap.Icon("./images/clipboard.jpg", new BMap.Size(23, 22));// 图片路径和大小(width,height)
							var marker = new BMap.Marker(new BMap.Point(data_info[i][0], data_info[i][1]), {
								icon : myIcon
							}); // 创建标注
							var content = data_info[i][2];
							marker.disableMassClear();// 禁止覆盖物在map.clearOverlays方法中被清除

							map.addOverlay(marker); // 将标注添加到地图中
							marker.addEventListener("click", function(e) {

								var lng = this.point.lng;
								var lat = this.point.lat;
								var arr = map.getOverlays();

								// 点击时添加圆形覆盖物
								map.clearOverlays(); // 清除页面所有覆盖物
								var point1 = new BMap.Point(lng, lat);
								var circle1 = new BMap.Circle(point1, 160, {
									strokeColor : "blue",
									strokeWeight : 2,
									strokeOpacity : 0.1
								});// 画圆,添加圆形覆盖物,颜色,重量(类似堆叠效果),不透明度
								map.addOverlay(circle1);
							});
							addClickHandler(content, marker);
						}
						// 点击时添加信息窗口
						function addClickHandler(content, marker) {
							marker.addEventListener("click", function(e) {
								openInfo(content, e);
								justep.Shell.showPage('fishpondDetail');
							});

						}
						function openInfo(content, e) {
							var p = e.target;
							var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
							var infoWindow = new BMap.InfoWindow(content, opts); // 创建信息窗口对象
							map.openInfoWindow(infoWindow, point); // 开启信息窗口
						}
						var row;
							var data = self.comp('fishpondData');
							data.each(function(option) {
								if(option.row.val('name') == content){
									row = option.row;
								}
							});
							var params = {
									data:row.toJson()
							}
						// 地图页面跳转
							if(confirm("是否查看鱼塘信息？")){
								justep.Shell.showPage('fishpondDetail',params);
							}else{}
					});
				}

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

			};
			// 若定位失败返回
			var error = function() {
				alert("定位失败");
			};
			// 若定位成功运行success,否则运行error
			navigator.geolocation.getCurrentPosition(success, error);

		};
	};

	Model.prototype.filter = function(row) {
		var associationData = this.comp('associationData');
		var arr = [];
		associationData.each(function(option) {
			if (option.row.val('userId') == justep.Shell.userName.get()) {
				arr.push(option.row.val('fishpondId'));
			}
		});
		if (arr.indexOf(row.val('id')) >= 0) {
			return true;
		} else {
			return false;
		}
	};

	Model.prototype.moreBtnClick = function(event) {
		justep.Shell.showPage("nearby");
	};

	Model.prototype.detailClick = function(event) {
		var params = {
			data : event.bindingContext.$object.toJson(),
			flag : "publish"
		};
		justep.Shell.showPage("fishpondDetail", params);
	};

	return Model;
});