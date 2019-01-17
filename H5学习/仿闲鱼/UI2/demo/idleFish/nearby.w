<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:414px;left:75px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="fishpondData" queryAction="queryIdlefish_fishpond" saveAction="saveIdlefish_fishpond" url="/justep/idleFishPond" tableName="idlefish_fishpond" idColumn="id"><column label="id" name="id" type="String" xid="default1"></column>
  <column label="name" name="name" type="String" xid="default2"></column>
  <column label="type" name="type" type="String" xid="default3"></column>
  <column label="popularity" name="popularity" type="Integer" xid="default4"></column>
  <column label="publishCount" name="publishCount" type="Integer" xid="default5"></column>
  <column label="curLng" name="curLng" type="String" xid="default6"></column>
  <column label="curLat" name="curLat" type="String" xid="default7"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="associationData" queryAction="queryIdlefish_association" saveAction="saveIdlefish_association" url="/justep/idleFishAssociation" tableName="idlefish_association" idColumn="id"><column label="id" name="id" type="String" xid="default8"></column>
  <column label="userId" name="userId" type="String" xid="default9"></column>
  <column label="fishpondId" name="fishpondId" type="String" xid="default10"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="附近的鱼塘"
          class="x-titlebar" style="color:#000000;background-color:#E8E8E8;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">附近的鱼塘</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7159B10E3B0000174E021333A301961" style="bottom: 0px;" supportpulldown="true">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2">
   <div class="x-content-center x-pull-down container" xid="div4">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span11">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div5"><div xid="div1" align="center" style="padding:10px 0;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="创建新的鱼塘" xid="createBtn" style="color:#000000;" icon="icon-android-add" onClick="createBtnClick">
   <i xid="i1" class="icon-android-add"></i>
   <span xid="span1">创建新的鱼塘</span></a></div><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1"  data="fishpondData" filter=" $model.filter($row)">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="fishpondDetail" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1" bind-click="fishpondDetailClick">
  <div class="media" xid="media2">
   <div class="media-left" xid="mediaLeft2">
    <img src="" alt="" xid="image2" class="img-rounded media-object" height="40px" style="width:40px;"></img></div> 
   <div class="media-body" xid="mediaBody2">
    
  
  <h5 xid="h51" bind-text='ref("name")' style="margin-top:0"><![CDATA[]]></h5>
  <span xid="span14" bind-text='"发布数"+val("publishCount")'></span><span xid="span15" bind-text='"人气"+val("popularity")'></span></div> </div>
  </li></ul> </div>
  </div>
   <div class="x-content-center x-pull-up" xid="div6">
    <span class="x-pull-up-label" xid="span12">加载更多...</span></div> </div></div>
  </div> 
</div>