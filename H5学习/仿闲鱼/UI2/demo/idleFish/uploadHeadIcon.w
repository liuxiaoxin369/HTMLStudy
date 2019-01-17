<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:573px;left:742px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="data" idColumn="id" autoNew="true"><column name="id" type="String" xid="xid1"></column>
  <column name="image" type="String" xid="xid2"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="baasData2" queryAction="queryIdlefish_user2" saveAction="saveIdlefish_user" url="/justep/idleFishUser" tableName="idlefish_user" idColumn="username"><column label="username" name="username" type="String" xid="default5"></column>
  <column label="password" name="password" type="String" xid="default6"></column>
  <column label="nickname" name="nickname" type="String" xid="default7"></column>
  <column label="photo" name="photo" type="String" xid="default8"></column></div></div> 

  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" title="上传头像" class="x-titlebar" style="color:#000000;background-color:#E8E8E8;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="backBtnClick" xid="backBtn">
     <i class="icon-chevron-left" xid="i1"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">上传头像</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/attachment/attachmentSimple" actionUrl="/baas/justep/attachment/simpleFileStore" xid="attachmentSimple1" style="margin:15px 0;" bind-ref='$model.data.ref("image")'>
   <div class="x-attachment" xid="div1">
    <div class="x-attachment-content x-card-border" xid="div2">
     <div class="x-doc-process" xid="div3">
      <div class="progress-bar x-doc-process-bar" role="progressbar" style="width:0%;" xid="progressBar1"></div></div> 
     <div data-bind="foreach:$attachmentItems" xid="div4">
      <div class="x-attachment-cell" xid="div5">
       <div class="x-attachment-item x-item-other" data-bind="click:$model.previewOrRemoveItem.bind($model),style:{backgroundImage:($model.previewPicture.bind($model,$object))()}" xid="div6">
        <a data-bind="visible:$model.$state.get() == 'remove'" class="x-remove-barget" xid="a1"></a></div> </div> </div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload'" xid="div7">
      <div class="x-attachment-item x-item-upload" data-bind="visible:$state.get() == 'upload'" xid="div8"></div></div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload' &amp;&amp; $attachmentItems.get().length &gt; 0" xid="div9">
      <div class="x-attachment-item x-item-remove" data-bind="click:changeState.bind($object,'remove')" xid="div10"></div></div> 
     <div style="clear:both;" xid="div11"></div></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"></div>
   <div class="x-col" xid="col2"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确定" xid="okBtn" onClick="okBtnClick">
   <i xid="i2"></i>
   <span xid="span2">确定</span></a></div>
   <div class="x-col" xid="col3"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="取消" xid="button2">
   <i xid="i3"></i>
   <span xid="span3">取消</span></a></div>
  <div class="x-col" xid="col4"></div></div></div>
   </div></div>