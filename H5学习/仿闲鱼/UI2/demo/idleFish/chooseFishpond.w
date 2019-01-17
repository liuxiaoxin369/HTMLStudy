<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:385px;left:655px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="fishpondData" queryAction="queryIdlefish_fishpond" saveAction="saveIdlefish_fishpond" url="/justep/idleFishPond" tableName="idlefish_fishpond" idColumn="id"><column label="id" name="id" type="String" xid="default1"></column>
  <column label="name" name="name" type="String" xid="default2"></column>
  <column label="type" name="type" type="String" xid="default3"></column>
  <column label="popularity" name="popularity" type="Integer" xid="default4"></column>
  <column label="publishCount" name="publishCount" type="Integer" xid="default5"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="associationData" queryAction="queryIdlefish_association" saveAction="saveIdlefish_association" url="/justep/idleFishAssociation" tableName="idlefish_association" idColumn="id"><column label="id" name="id" type="String" xid="default6"></column>
  <column label="userId" name="userId" type="String" xid="default7"></column>
  <column label="fishpondId" name="fishpondId" type="String" xid="default8"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" title="选择一个鱼塘" class="x-titlebar" style="background-color:#F5F5F5;color:#333;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn" style="color:#333;">
     <i class="icon-chevron-left" xid="i1"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">选择一个鱼塘</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content x-scroll-view" xid="content1" _xid="C717CACC098000014B9617D0D6D05600" style="bottom: 0px;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div2">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span3">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div3"><div xid="div1" align="center" style="padding:15px 0;">
  <span xid="span2"><![CDATA[闲置发布到鱼塘，就可获得更多曝光呢！]]></span></div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" limit="10" data="fishpondData">
   <ul class="x-list-template list-group" xid="listTemplateUl1">
    <li xid="chooseFishpond" class="list-group-item" bind-click="chooseFishpondClick"><div class="media" xid="media2">
   <div class="media-left" xid="mediaLeft2">
    <img src="" alt="" xid="image2" class="img-rounded media-object" height="40px" style="width:40px;"></img></div> 
   <div class="media-body" xid="mediaBody2">
    <h5 xid="h51" bind-text='ref("name")' style="margin-top:0"></h5>
    <span xid="span15" bind-text='$model.changeText($object)'></span></div> 
  </div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div4">
    <span class="x-pull-up-label" xid="span4">加载更多...</span></div> </div>
  </div>
   </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog" title="你还不是此鱼塘的成员" type="YesNo" message="加入鱼塘才能发布宝贝" onYes="messageDialogYes" onCancel="messageDialogCancel"></span><span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver"></span></div>