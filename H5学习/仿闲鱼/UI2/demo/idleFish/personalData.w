<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:170px;left:795px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryIdlefish_user2" saveAction="saveIdlefish_user" url="/justep/idleFishUser" tableName="idlefish_user" idColumn="username">
   <column label="username" name="username" type="String" xid="default16"></column>
   <column label="password" name="password" type="String" xid="default17"></column>
   <column label="nickname" name="nickname" type="String" xid="default18"></column>
   <column label="photo" name="photo" type="String" xid="default19"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" title="我的资料" class="x-titlebar" style="color:#000000;background-color:#E8E8E8;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="backBtnClick" xid="backBtn">
     <i class="icon-chevron-left" xid="i1"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">我的资料</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div xid="div1" style="height:50px;background-color:#E8E8E8;padding:25px 0px 0px 15px;"><span xid="span2"><![CDATA[基本信息]]></span></div>
  <ul xid="ul1" class="list-group">
  	<li xid="uploadHeadIcon" class="list-group-item" bind-click="uploadHeadIconClick"><div component="$UI/system/components/justep/row/row" class="x-row">
   <div class="x-col x-col-25" xid="col1"><span xid="span3" style="margin-top:25px;display:block;"><![CDATA[头像]]></span></div>
   <div class="x-col" xid="col2"><img src="" alt="" xid="image1" style="width:81px;height:72px;" bind-attr-src=" $model.transUrl()" class="img-circle"></img></div>
   <div class="x-col x-col-10" xid="col3"><i class="icon-chevron-right" xid="i3" style="margin-top:25px;"></i></div></div></li>
  	<li xid="li2" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-25" xid="col6"><span xid="span4"><![CDATA[性别]]></span></div>
   <div class="x-col" xid="col4"><span xid="span9"></span></div>
   <div class="x-col x-col-10" xid="col5"><i class="icon-chevron-right" xid="i2"></i></div></div></li>
  	<li xid="li3" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-25" xid="col9"><span xid="span5"><![CDATA[生日]]></span></div>
   <div class="x-col" xid="col7"><span xid="span10"></span></div>
   <div class="x-col x-col-10" xid="col8"><i class="icon-chevron-right" xid="i4"></i></div></div></li>
  	<li xid="li4" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col x-col-25" xid="col12"><span xid="span6"><![CDATA[常住]]></span></div>
   <div class="x-col" xid="col10"><span xid="span11"></span></div>
   <div class="x-col x-col-10" xid="col11"><i class="icon-chevron-right" xid="i5"></i></div></div></li>
  	<li xid="li5" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col x-col-25" xid="col15"><span xid="span7"><![CDATA[收货地址]]></span></div>
   <div class="x-col" xid="col13"><span xid="span12"></span></div>
   <div class="x-col x-col-10" xid="col14"><i class="icon-chevron-right" xid="i6"></i></div></div></li>
  	<li xid="li6" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col x-col-25" xid="col18"><span xid="span8"><![CDATA[个人简介]]></span></div>
   <div class="x-col" xid="col16"><span xid="span13"></span></div>
   <div class="x-col x-col-10" xid="col17"><i class="icon-chevron-right" xid="i7"></i></div></div></li>
  </ul></div>
   </div></div>