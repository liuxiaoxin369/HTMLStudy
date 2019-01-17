<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:291px;left:53px;height:auto;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="淘宝一键转卖"
          class="x-titlebar" style="background-color:#F5F5F5;color:#333;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="linear linear-fileadd"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#333;"> 
              <i class="linear linear-fileadd"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">淘宝一键转卖</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="height:800px;"><div xid="div1" style="padding:8px;background-color:#F5F5F5;"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
   <div class="input-group-btn" xid="layoutWizard1" style="border:0;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="linear linear-book" style="background-color:white;">
    <i xid="i1" class="linear linear-book"></i>
    <span xid="span1"></span></a> </div><input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input1" placeHolder="请输入已买到宝贝关键词" style="border:0;"></input></div></div><div xid="div5" style="border-bottom:1px solid #f0f0f0;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-25 x-col-center" xid="col1"><img src="./images/main_bn (4).png" alt="" xid="image1" class="img-responsive"></img></div>
   <div class="x-col x-col-75" xid="col3"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col6"><span xid="span5"><![CDATA[产品内容描述，长度过长是要截取+...]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col9"><span xid="span6" style="font-weight:bold;"><![CDATA[￥]]></span>
  <span xid="span7" style="font-weight:bold;"><![CDATA[100.00]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row x-row-bottom" xid="row4">
   <div class="x-col" xid="col10"><span xid="span8" style="color:#aaa;"><![CDATA[2016-05-16]]></span></div>
   <div class="x-col" xid="col12"><a component="$UI/system/components/justep/button/button" class="btn btn-default pull-right " label="一键转卖" xid="resell" style="padding:5px;border:none;background-color:#FFDA44;color:#333;" onClick="resellClick">
   <i xid="i3"></i>
   <span xid="span9">一键转卖</span></a></div></div></div></div>
  </div></div>
  </div> 
</div>