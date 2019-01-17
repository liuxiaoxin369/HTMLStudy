<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:385px;left:610px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classifyData" idColumn="classify"><column name="classify" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;classify&quot;:&quot;手机&quot;},{&quot;classify&quot;:&quot;相机/摄像机&quot;},{&quot;classify&quot;:&quot;电脑及配件&quot;},{&quot;classify&quot;:&quot;3C数码&quot;},{&quot;classify&quot;:&quot;女装&quot;},{&quot;classify&quot;:&quot;男装&quot;},{&quot;classify&quot;:&quot;鞋包配饰&quot;},{&quot;classify&quot;:&quot;化妆品&quot;},{&quot;classify&quot;:&quot;奢侈名品&quot;},{&quot;classify&quot;:&quot;家居用品&quot;},{&quot;classify&quot;:&quot;家用电器&quot;},{&quot;classify&quot;:&quot;母婴用品&quot;},{&quot;classify&quot;:&quot;宠物&quot;},{&quot;classify&quot;:&quot;门票及服务&quot;},{&quot;classify&quot;:&quot;书刊音像&quot;},{&quot;classify&quot;:&quot;交通工具&quot;},{&quot;classify&quot;:&quot;珠宝首饰&quot;},{&quot;classify&quot;:&quot;艺术品&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" title="类目" class="x-titlebar" style="color:#333;background-color:#F7F7F7;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-default btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="closeBtn" style="background-color:#F7F7F7;color:#333;border:none;">
     <i class="icon-chevron-left" xid="i2"></i>
     <span xid="span2"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">类目</div>
   <div class="x-titlebar-right reverse" xid="right1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg" xid="button1" icon="icon-ios7-information-outline" style="background-color:#F7F7F7;color:black;border:none;">
     <i xid="i1" class="icon-ios7-information-outline"></i>
     <span xid="span1"></span></a> </div> </div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="classifyData">
   <ul class="x-list-template list-group" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item"><div component="$UI/system/components/justep/output/output" class="x-output" xid="classify" bind-ref='ref("classify")' bind-click="classifyClick"></div></li></ul> </div></div>
   </div>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver"></span></div>