<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents1"> 
        <div class="x-contents-content" xid="homeContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="homeContainer" src="./homePage.w"></div></div>  
        <div class="x-contents-content" xid="fishpondContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="fishpondContainer" src="./detail.w"></div></div>  
        <div class="x-contents-content" xid="messageContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="./message.w"></div></div>  
        <div class="x-contents-content" xid="mineContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="mineContainer" src="./mine.w"></div></div>
      </div>
    </div>  
    <div class="x-panel-bottom" xid="bottom1">
   <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1" style="height:50px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top active" label="首页" xid="homeBtn" target="homeContent" style="height:44px;">
     <i xid="i1">
      <img src="./images/home.png" style="width:20px;margin-top:-25px;" xid="image2"></img></i> 
     <span xid="span1" style="display:block;position:absolute;left:30%;top:45%;margin-left:5px;">首页</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="鱼塘" xid="fishpondBtn" target="fishpondContent">
     <i xid="i1">
      <img src="./images/fishpond.png" style="width:20px;margin-top:-25px;" xid="image3"></img></i> 
     <span xid="span2" style="display:block;position:absolute;left:30%;top:45%;margin-left:5px;">鱼塘</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="发布" xid="publishBtn" onClick="publishBtnClick">
     <i xid="i1">
      <div style="width:40px;height:40px;background-color:#FFDA44;border:5px solid #fff;border-radius:20px;position:absolute;top:-23px;right:10px;left:15px;padding-bottom:10px;" class="center-block" xid="div1">
       <i class="icon-android-add" style="font-size:medium;position:absolute;top:25%;left:25%;" xid="i2"></i></div> </i> 
     <span xid="span3" style="display:block;position:absolute;left:30%;top:45%;margin-left:5px;">发布</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="消息" xid="shoppingCartBtn" target="messageContent">
     <i xid="i1">
      <img src="./images/message.png" style="width:20px;margin-top:-25px;" xid="image4"></img></i> 
     <span xid="span4" style="display:block;position:absolute;left:30%;top:45%;margin-left:5px;">消息</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="我的" xid="mineBtn" target="mineContent">
     <i xid="i11"><img src="./images/mine.png" style="width:20px;margin-top:-25px;" xid="image4"></img></i>
     <span xid="span5" style="display:block;position:absolute;left:30%;top:45%;margin-left:5px;">我的</span></a> </div> </div><div xid="opendiv" id="opendiv" style="position:absolute;top:0px;right:0px;bottom:0px;left:0px;background-color:#111111;opacity:0.8;color:#333333;" class="hideopendiv">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="text-align:center;position:absolute;left:5%;top:70%;">
    <div class="x-col" xid="col10" style="text-align:center;">
     <div xid="camera" style="height:80px;width:80px;text-align:center;border-radius:50%;background-color:#FFFFFF;margin-left:20%;" bind-click="cameraClick">
      <img src="./images/black2.png" alt="" xid="image5" style="width:50px;margin-top:25%;"></img></div> </div> 
    <div class="x-col" xid="col12">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="issue" icon="img:./images/black1.png|" style="line-height:60px;width:80px;height:80px;;border-radius:50%;background-color:#FFFFFF;margin-left:20%;" onClick="issueClick">
   <i xid="i6"></i>
   <img src="./images/black1.png" xid="image1"></img><span xid="span6"></span></a></div> </div> </div>
  </div>
</div>
