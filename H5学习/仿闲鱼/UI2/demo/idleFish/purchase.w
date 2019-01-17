<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:406px;left:78px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column>
  <column name="price" type="String" xid="xid3"></column>
  <column name="image" type="String" xid="xid4"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="buyData" queryAction="queryIdlefish_buy" saveAction="saveIdlefish_buy" url="/justep/idleFishBuy" tableName="idlefish_buy" idColumn="id"><column label="id" name="id" type="String" xid="default1"></column>
  <column label="publishId" name="publishId" type="String" xid="default2"></column>
  <column label="goodsName" name="goodsName" type="String" xid="default3"></column>
  <column label="userName" name="userName" type="String" xid="default4"></column>
  <column label="price" name="price" type="String" xid="default5"></column>
  <column label="image" name="image" type="String" xid="default6"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="publishData" queryAction="queryIdlefish_publish" saveAction="saveIdlefish_publish" url="/justep/idleFishPublish" tableName="idlefish_publish" idColumn="id"><column label="id" name="id" type="String" xid="default19"></column>
  <column label="userId" name="userId" type="String" xid="default20"></column>
  <column label="title" name="title" type="String" xid="default21"></column>
  <column label="description" name="description" type="String" xid="default22"></column>
  <column label="image1" name="image1" type="String" xid="default23"></column>
  <column label="image2" name="image2" type="String" xid="default24"></column>
  <column label="image3" name="image3" type="String" xid="default25"></column>
  <column label="price" name="price" type="String" xid="default26"></column>
  <column label="kind" name="kind" type="String" xid="default27"></column>
  <column label="reverse" name="reverse" type="String" xid="default28"></column>
  <column label="createTime" name="createTime" type="String" xid="default29"></column>
  <column label="fishpondId" name="fishpondId" type="String" xid="default30"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="购买宝贝"
          class="x-titlebar" style="background-color:#F5F5F5;color:#333;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#333;"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">购买宝贝</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#F5F5F5;"><div xid="div1" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="image">
   <div class="x-col x-col-25 x-col-center" xid="col1" style="width:auto;text-align:left;"><img alt="" xid="image1" class="img-responsive" bind-attr-src=" $model.transUrl()"></img></div>
   <div class="x-col x-col-75" xid="col3"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><span xid="span2" style="color:#333;" bind-text='$model.data.ref("name")'><![CDATA[]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7"><span xid="span3" style="color:#e4393c;" bind-text='"￥"+$model.data.val("price")'><![CDATA[]]></span>
  </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col12"><span xid="span7"><![CDATA[成都]]></span>
  <span xid="span8"><![CDATA[龙泉驿区]]></span><span xid="span9" style="width:1px;margin:0 5px;display:inline-block;border-left:1px solid #ddd;border-left-style:solid;border-left-width:1px;border-left-color:#C0C0C0;height:12px;"></span>
  <span xid="span10"><![CDATA[在线交易]]></span></div></div></div></div></div><div xid="div3" style="height:10px;"></div><div xid="div2" style="background-color:white;">
  
  
  
  <ul xid="ul1" class="list-group">
  <li xid="li1" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col " xid="col5"><span xid="span6" class="pull-right"><![CDATA[张三15515515555]]></span></div>
  <div class="x-col x-col-10" xid="col6"></div>
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col " xid="col8"><span xid="span5"><![CDATA[收货地址]]></span><span xid="span11" class="pull-right"><![CDATA[北京市朝阳区十里河]]></span></div>
   <div class="x-col x-col-10" xid="col11"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button2" icon="icon-chevron-right">
   <i xid="i2" class="icon-chevron-right"></i>
   <span xid="span4"></span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col " xid="col16"><span xid="span12" class="pull-right"><![CDATA[高河蓝峰大厦18层起步科技]]></span></div>
   <div class="x-col x-col-10" xid="col18"></div></div></li>
  <li xid="li1" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   
   <div class="x-col" xid="col10"><span xid="span14"><![CDATA[运费]]></span></div>
  <div class="x-col" xid="col15" style="text-align:right;">
   <span xid="span19"><![CDATA[快递]]></span><span xid="span21" style="color:#e4393c;font-weight:bold;"><![CDATA[￥]]></span><span xid="span20" style="color:#e4393c;font-weight:bold;"><![CDATA[0.00]]></span></div></div></li>
  <li xid="li1" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col13"><span xid="span13"><![CDATA[实付金额]]></span></div>
   <div class="x-col" xid="col14" style="text-align:right;"><span xid="span22" style="color:#e4393c;font-weight:bold;"><![CDATA[￥]]></span><span xid="span23" style="color:#e4393c;font-weight:bold;"><![CDATA[0.01]]></span></div></div></li>

  </ul></div>
  </div>
  <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="确定" xid="okBtn" style="margin-top:5px;color:#fff;margin-left:5%;width:90%;background-color:#e4393c;" onClick="okBtnClick">
   <i xid="i1"></i>
   <span xid="span1">确定</span></a></div></div> 
</div>