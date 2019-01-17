<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:152px;left:673px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="associationData" queryAction="queryIdlefish_association" saveAction="saveIdlefish_association" url="/justep/idleFishAssociation" tableName="idlefish_association" idColumn="id"><column label="id" name="id" type="String" xid="default11"></column>
  <column label="userId" name="userId" type="String" xid="default12"></column>
  <column label="fishpondId" name="fishpondId" type="String" xid="default13"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="fishpondData" queryAction="queryIdlefish_fishpond" saveAction="saveIdlefish_fishpond" url="/justep/idleFishPond" tableName="idlefish_fishpond" idColumn="id" autoNew="false"><column label="id" name="id" type="String" xid="default1"></column>
  <column label="name" name="name" type="String" xid="default2"></column>
  <column label="type" name="type" type="String" xid="default3"></column>
  <column label="popularity" name="popularity" type="Integer" xid="default4"></column>
  <column label="publishCount" name="publishCount" type="Integer" xid="default5"></column>
  <column label="curLng" name="curLng" type="String" xid="default6"></column>
  <column label="curLat" name="curLat" type="String" xid="default7"></column>
  <rule xid="rule1">
   <col name="id" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default8"></expr></calculate> </col> 
   <col name="popularity" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default9"></expr></calculate> </col> 
   <col name="publishCount" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default10"></expr></calculate> </col> </rule></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" title="发布" class="x-titlebar" style="color:#333;background-color:#F7F7F7;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-default btn-only-icon" icon="icon-android-close" onClick="backBtnClick" xid="backBtn" style="background-color:#F7F7F7;color:#333;border:none;">
     <i class="icon-android-close" xid="i2"></i>
     <span xid="span2"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">申请鱼塘</div>
   <div class="x-titlebar-right reverse" xid="right1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg" xid="button1" icon="icon-ios7-information-outline" style="background-color:#F7F7F7;color:black;border:none;">
     <i xid="i1" class="icon-ios7-information-outline"></i>
     <span xid="span1"></span></a> </div> </div></div>
   <div class="x-panel-content" xid="content1"><img src="./images/apply.png" alt="" xid="image1" class="img-responsive"></img>
  <div xid="div1" style="padding:15px 15px 0 15px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12" style="border-bottom:1px solid #EBEBEB;">
   <label class="x-label" xid="label12"><![CDATA[鱼塘名称]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="nameInput" style="border:0" bind-ref='$model.fishpondData.ref("name")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="border-bottom:1px solid #EBEBEB;">
   <label class="x-label" xid="label1"><![CDATA[鱼塘类型]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="typeInput" style="border:0" bind-ref='$model.fishpondData.ref("type")'></input></div>
  
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3"><![CDATA[鱼塘范围]]></label>
   <img src="./images/class02.png" alt="" xid="image2" class="x-edit"></img></div>
  </div>
  <div xid="div2" style="background-color:#EBEBEB;height:15px;"></div>
  <div xid="div3" style="padding:15px 15px 0 15px;">
   
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4" style="border-bottom:1px solid #F5F5F5">
    <label class="x-label" xid="label4"><![CDATA[塘主姓名]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" style="border:0"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7" style="border-bottom:1px solid #EBEBEB;">
   <label class="x-label" xid="label7"><![CDATA[性别]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" style="border:0"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8" style="border-bottom:1px solid #EBEBEB;">
   <label class="x-label" xid="label8"><![CDATA[生日]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" dataType="Date" style="border:0"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9" style="border-bottom:1px solid #EBEBEB;">
   <label class="x-label" xid="label9"><![CDATA[职业]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" style="border:0"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10" style="border-bottom:1px solid #EBEBEB;">
   <label class="x-label" xid="label10"><![CDATA[手机]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input7" style="border:0"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
   <label class="x-label" xid="label11"><![CDATA[电子邮箱]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input8" style="border:0"></input></div></div></div>
   <div class="x-panel-bottom" xid="bottom1" style="border-top:1px solid #EBEBEB;" height="54"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-10" xid="col1"></div>
   <div class="x-col" xid="col2"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确认创建鱼塘" xid="createBtn" style="border:0;background-color:#e4393c;" onClick="createBtnClick">
   <i xid="i3"></i>
   <span xid="span3">确认创建鱼塘</span></a></div>
   <div class="x-col x-col-10" xid="col3"></div></div></div></div></div>