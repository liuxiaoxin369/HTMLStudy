<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:426px;left:692px;">
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true"
      xid="userData" queryAction="queryIdlefish_user" saveAction="saveIdlefish_user"
      url="/justep/idleFishUser" tableName="idlefish_user" idColumn="username">
      <column label="username" name="username" type="String" xid="default1"/>  
      <column label="password" name="password" type="String" xid="default2"/>  
      <column label="nickname" name="nickname" type="String" xid="default3"/>  
      <column label="photo" name="photo" type="String" xid="default4"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1">
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1" style="background-color:white;"> 
        <div class="x-titlebar-left" xid="left1">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            xid="backBtn" icon="linear linear-volumehigh" label="快速注册" style="color:#000000;"
            onClick="backBtnClick"> 
            <i xid="i1" class="linear linear-volumehigh"/>  
            <span xid="span1">快速注册</span>
          </a>
        </div>  
        <div class="x-titlebar-title" xid="title1"/>  
        <div class="x-titlebar-right reverse" xid="right1"/>
      </div>
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div xid="div1" style="margin-top:10px;margin-bottom:10px;padding-left:15px;padding-right:15px;">
        <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
          xid="inputGroup1"> 
          <span class="input-group-addon"><![CDATA[请输入账号]]></span>
          <input type="text" class="form-control" component="$UI/system/components/justep/input/input"
            xid="username"/>
        </div>
        <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
          xid="inputGroup2"> 
          <span class="input-group-addon"><![CDATA[请输入密码]]></span>  
          <input component="$UI/system/components/justep/input/password" class="form-control"
            xid="password"/>
        </div>
        <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
          xid="inputGroup3"> 
          <span class="input-group-addon" xid="span4"><![CDATA[再次输密码]]></span>  
          <input component="$UI/system/components/justep/input/password" class="form-control"
            xid="passwordAgn"/>
        </div>
        <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
          xid="inputGroup4"> 
          <span class="input-group-addon" xid="span6"><![CDATA[请输入昵称]]></span>
          <input type="text" class="form-control" component="$UI/system/components/justep/input/input"
            xid="nickname"/>
        </div>
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block"
          label="注册" xid="register" style="margin-top:20px;background-color:#FFDA44;"
          onClick="registerClick"> 
          <i xid="i2"/>  
          <span xid="span5">注册</span>
        </a> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"/>
  </div>
</div>
