<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:332px;left:478px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="publishData" queryAction="queryIdlefish_publish" saveAction="saveIdlefish_publish" url="/justep/idleFishPublish" tableName="idlefish_publish" idColumn="id"><column label="id" name="id" type="String" xid="default1"></column>
  <column label="userId" name="userId" type="String" xid="default2"></column>
  <column label="title" name="title" type="String" xid="default3"></column>
  <column label="description" name="description" type="String" xid="default4"></column>
  <column label="image1" name="image1" type="String" xid="default5"></column>
  <column label="image2" name="image2" type="String" xid="default6"></column>
  <column label="image3" name="image3" type="String" xid="default7"></column>
  <column label="price" name="price" type="String" xid="default8"></column>
  <column label="kind" name="kind" type="String" xid="default9"></column>
  <column label="reverse" name="reverse" type="String" xid="default10"></column>
  <column label="createTime" name="createTime" type="String" xid="default11"></column>
  <column label="fishpondId" name="fishpondId" type="String" xid="default12"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" title="我发布的" class="x-titlebar" style="color:#333;background-color:#F7F7F7;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-default btn-only-icon" icon="icon-chevron-left" onClick="closeBtnClick" xid="closeBtn" style="background-color:#F7F7F7;color:#333;border:none;">
     <i class="icon-chevron-left" xid="i2"></i>
     <span xid="span2"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">我发布的</div>
   <div class="x-titlebar-right reverse" xid="right1">
    </div> </div></div>
   <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C717D982D7C000017A1F11E311B51389" style="background-color:#EBEBEB;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span3">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list " xid="list1" filter="$model.filter($row)" data="publishData">
   <ul class="x-list-template list-group" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item" style="margin:8px;">
  
  
  
  <div xid="div5" style="background-color:white;"><h5 xid="h51" bind-text='ref("title")' style="margin-top:0px;"><![CDATA[]]></h5><h5 xid="h52" bind-text='"￥"+val("price")' style="color:#FF0000;"><![CDATA[]]></h5><img src="" alt="" xid="image1" style="width:157px;height:120px;" bind-attr-src='$model.transUrl( val("image1"), val("id"))'></img><div xid="div4" style="margin-top:10px;"><span xid="span5"><![CDATA[0赞]]></span>
  <span xid="span6"><![CDATA[0留言]]></span>
  <span xid="span7" class="pull-right"><![CDATA[90天展示时间]]></span></div></div>
  </li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span4">加载更多...</span></div> </div></div>
   </div></div>