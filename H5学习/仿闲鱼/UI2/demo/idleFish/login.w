<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:482px;left:606px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryIdlefish_user" saveAction="saveIdlefish_user" url="/justep/idleFishUser" tableName="idlefish_user" idColumn="username"><column label="username" name="username" type="String" xid="default1"></column>
  <column label="password" name="password" type="String" xid="default2"></column>
  <column label="nickname" name="nickname" type="String" xid="default3"></column>
  <column label="photo" name="photo" type="String" xid="default4"></column></div></div> 
    <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1" style="color:#000040;background-color:#E4E4E4;"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:white;">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="登录" xid="backBtn" icon="linear linear-volumehigh" style="color:#000000;" onClick="backBtnClick">
   <i xid="i2" class="linear linear-volumehigh"></i>
   <span xid="span1">登录</span></a></div>
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eeeeee;padding-left:5px;padding-right:5px;">
  <div xid="div2" style="padding:20px"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
   <span class="input-group-addon" xid="span5"><![CDATA[账号]]></span><input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="username"></input></div>
  <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup2">
   <span class="input-group-addon" xid="span6"><![CDATA[密码]]></span><input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="password"></input></div></div><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" style="margin-top:10px;border-radius:10px;border-width:0px 0px 0px 0px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="登录" xid="loginBtn" style="border-radius:10px;background-color:#FFDA44;color:#000040;border-width:0px 0px 0px 0px;" onClick="loginBtnClick">
    <i xid="i1"></i>
    <span xid="span2">登录</span></a></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="registerBtn" label="快速注册" style="color:#000040;" onClick="registerBtnClick">
   <i xid="i3"></i>
   <span xid="span3">快速注册</span></a></div>
   <div class="x-col" xid="col5"></div>
   <div class="x-col" xid="col6"></div>
  <div class="x-col" xid="col7"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="找回密码" xid="button4" style="color:#000040;">
   <i xid="i4"></i>
   <span xid="span4">找回密码</span></a></div></div><div class="panel-body" xid="div3"></div><div class="list-group" xid="listGroup1">
   <div class="list-group-item" xid="div1">
    <div component="$UI/system/components/bootstrap/row/row" class="row panel-heading text-center" xid="row1">
     <div class="col col-xs-4 x-nopadding" xid="col3">
      <img src="" alt="" bind-attr-src="$model.getImageUrl('./images/user1.png')" class="img3" xid="image2" bind-click="loginWeixinClicked" height="50px" style="width:50px;"></img>
      <div bind-text="'微信账号登录'" class="text-muted" xid="div15"></div></div> 
     <div class="col col-xs-4 x-nopadding" xid="col1">
      <img src="" alt="" bind-attr-src="$model.getImageUrl('./images/user2.png')" class="img3" xid="image1" bind-click="loginWeiboClick" height="50px" style="width:50px;"></img>
      <div bind-text="'新浪微博登录'" class="text-muted" xid="div13"></div></div> 
     <div class="col col-xs-4 x-nopadding" xid="col2">
      <img src="" alt="" xid="image4" bind-attr-src="$model.getImageUrl('./images/user3.png')" class="img3" bind-click="loginQQClick" height="50px" style="width:50px;"></img>
      <div bind-text="'QQ账号登录'" class="text-muted" xid="div14"></div></div> </div> 
    </div> </div>
  </div>
  </div>
</div>