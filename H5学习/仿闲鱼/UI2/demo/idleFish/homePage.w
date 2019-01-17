<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="publishData" queryAction="queryIdlefish_publish" saveAction="saveIdlefish_publish" url="/justep/idleFishPublish" tableName="idlefish_publish" idColumn="id" orderBy="createTime:desc"><column label="id" name="id" type="String" xid="default1"></column>
  <column label="userId" name="userId" type="String" xid="default2"></column>
  <column label="title" name="title" type="String" xid="default3"></column>
  <column label="description" name="description" type="String" xid="default4"></column>
  <column label="image1" name="image1" type="String" xid="default5"></column>
  <column label="image2" name="image2" type="String" xid="default6"></column>
  <column label="image3" name="image3" type="String" xid="default7"></column>
  <column label="price" name="price" type="String" xid="default8"></column>
  <column label="kind" name="kind" type="String" xid="default9"></column>
  <column label="reverse" name="reverse" type="String" xid="default10"></column>
  <column label="createTime" name="createTime" type="String" xid="default11"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryIdlefish_user2" saveAction="saveIdlefish_user" url="/justep/idleFishUser" tableName="idlefish_user" idColumn="username"><column label="username" name="username" type="String" xid="default16"></column>
  <column label="password" name="password" type="String" xid="default17"></column>
  <column label="nickname" name="nickname" type="String" xid="default18"></column>
  <column label="photo" name="photo" type="String" xid="default19"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="52"><div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter" xid="toolBar1" style="background-color:#FFDA44;border:0;margin:0;">
   <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
    <div class="input-group-btn" xid="layoutWizard2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="linear linear-chevronupcircle">
      <i xid="i2" class="linear linear-chevronupcircle"></i>
      <span xid="span2"></span></a> </div> 
    <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input1" placeHolder="请输入宝贝关键字或@用户名"></input>
    <div class="input-group-btn" xid="layoutWizard1">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="linear linear-sad">
      <i xid="i1" class="linear linear-sad"></i>
      <span xid="span1"></span></a> </div> </div> </div></div>
   <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C7169B4D61B00001B87610402FB51C40" style="bottom: 0px;">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div9">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span4">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div10">
    <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel x-banner" xid="carousel1">
     <ol class="carousel-indicators" xid="ol1"></ol>
     <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents" active="0" slidable="true" wrap="true" swipe="true" xid="bannerContents">
      <div class="x-contents-content" xid="content3">
       <img alt="" xid="image8" id="image8" class="image-wall img1 img-responsive" src="./images/class01.png"></img></div> 
      <div class="x-contents-content" xid="content4">
       <img alt="" xid="image9" id="image9" class="image-wall img1 img-responsive" src="./images/class02.png"></img></div> </div> </div> 
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding:0">
   <div class="x-col" xid="col7"><img src="./images/aa1.png" alt="" xid="image5" class="img-responsive"></img></div>
   <div class="x-col" xid="col8"><img src="./images/aa2.png" alt="" xid="judicial" class="img-responsive" bind-click="judicialClick"></img></div>
   <div class="x-col" xid="col9"><img src="./images/aa3.png" alt="" xid="image7" class="img-responsive"></img></div>
  <div class="x-col" xid="col10"><img src="./images/aa4.png" alt="" xid="image10" class="img-responsive"></img></div></div><div xid="div1" style="height:10px;background-color:#E3E3E3;"></div><img src="./images/aa5.png" alt="" xid="image11" class="img-responsive"></img><img src="./images/aa6.png" alt="" xid="image12" class="img-responsive"></img><img src="./images/aa7.png" alt="" xid="image13" class="img-responsive"></img><div component="$UI/system/components/justep/list/list" class="x-list " xid="list1" limit="5" data="publishData" filter=' $row.val("reverse") !="selled"'>
   <ul class="x-list-template " xid="listTemplateUl1">
    <li style="border-bottom:8px solid #E3E3E3;" xid="goodDetail" bind-click="goodDetailClick"><div xid="div2" style="padding:0 8px;"><div class="media" xid="media2">
   <div class="media-left" xid="mediaLeft2">
    <img alt="" xid="image14" class="img-circle media-object " style="width:36px;margin-top:8px;" bind-attr-src='$model.changePhoto( val("userId"))' height="36px"></img></div> 
   <div class="media-body" xid="mediaBody2">
    <h5 xid="h53" bind-text='ref("userId")' style="margin-bottom:0;color:#000000;"></h5>
  <span xid="span8" style="font-size:x-small;" bind-text="$model.timeTrans($object)"></span>
  </div> 
  <div class="media-right" xid="mediaRight1">
   
  <h5 xid="h54" bind-text='"￥"+val("price")' style="color:#FF0000;"></h5></div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><img src="" alt="" xid="image2" bind-attr-src="$model.transUrl($object.val('image1'),$object.val('id'))" class="img-responsive"></img></div>
   <div class="x-col" xid="col5" bind-visible='$model.isOrNotHaveImage( val("image2"))'><img src="" alt="" xid="image3" bind-attr-src="$model.transUrl($object.val('image2'),$object.val('id'))" class="img-responsive"></img></div>
   <div class="x-col" xid="col6" bind-visible=' $model.isOrNotHaveImage( val("image3"))'><img src="" alt="" xid="image4" bind-attr-src="$model.transUrl($object.val('image3'),$object.val('id'))" class="img-responsive"></img></div></div><p xid="p1" bind-text='ref("description")' style="padding-left:8px;padding-right:8px;"></p><div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="border-top:1px solid #F8F8FF;">
   <div class="x-col x-col-67" xid="col31" style="color:#52C7E4;">
    <i class="icon-android-location" xid="i5"></i>
    <span xid="span20"><![CDATA[来自深圳]]></span></div> 
   <div class="x-col" xid="col32">
    <i class="icon-chatbubble-working" xid="i7"></i>
  <span xid="span6"><![CDATA[12]]></span></div> 
   <div class="x-col" xid="col33" style="color:red;">
    <i class="icon-ios7-heart" xid="i9"></i>
  <span xid="span7"><![CDATA[50]]></span></div> </div>
  </li></ul> </div>
  
  
  </div> 
   <div class="x-content-center x-pull-up" xid="div11">
    <span class="x-pull-up-label" xid="span5">加载更多...</span></div> </div></div>
   </div></div>