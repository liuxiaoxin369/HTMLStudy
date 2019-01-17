<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:187px;left:287px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="MapData" idColumn="id" limit="-1"><column label="ID" name="id" type="String" xid="xid1"></column>
  <column label="经度" name="curLng" type="String" xid="xid2"></column>
  <column label="纬度" name="curLat" type="String" xid="xid3"></column>
  <column label="地址" name="title" type="String" xid="xid4"></column>
  <column label="类型" name="type" type="String" xid="xid5"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" title="申请鱼塘" class="x-titlebar" style="color:#333;background-color:#F9F9F9;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn" style="color:#333;">
     <i class="icon-chevron-left" xid="i2"></i>
     <span xid="span2"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">申请鱼塘</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div><div class="x-panel-content" xid="content1" _xid="C7174165797000016D55180012665B50">
      
    
  <img src="./images/choosePosition.png" alt="" xid="image1" class="img-responsive"></img><div xid="mapDiv" style="height:45%;"></div><div xid="div2" style="padding:8px;"><h4 xid="h42" style="color:#000000;"><![CDATA[以下位置可创建鱼塘]]></h4>
  </div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="MapData">
   <ul class="x-list-template list-group" xid="listTemplateUl1">
    <li xid="title" class="list-group-item" bind-click="titleClick"><span xid="span3" bind-text='ref("title")'></span></li></ul> </div></div> 
  <div class="x-panel-bottom" xid="bottom1" style="border-top:1px solid #EBEBEB;" height="54">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
    <div class="x-col x-col-10" xid="col1"></div>
    <div class="x-col" xid="col2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="下一步" xid="nextBtn" style="border:0;background-color:#e4393c;" onClick="nextBtnClick">
      <i xid="i3"></i>
      <span xid="span4">下一步</span></a> </div> 
    <div class="x-col x-col-10" xid="col3"></div></div> </div></div> 
</div>
