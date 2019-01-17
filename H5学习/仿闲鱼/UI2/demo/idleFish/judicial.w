<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cssChangeData" idColumn="css"><column name="css" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;css&quot;:&quot;1&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="font-size:small;"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="司法拍卖"
        class="x-titlebar" style="color:#333;background-color:white;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">司法拍卖</div>  
        <div class="x-titlebar-right reverse"></div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1" style="font-size:x-small;"> 
      <div xid="div1"> 
        <img src="./images/judicial(1).png" alt="" xid="image1" style="width:100%;"/>
        <img src="./images/judicial(12).png" alt="" xid="image2" style="width:24%;"/>
        <img src="./images/judicial(4).png" alt="" xid="image3" style="width:24%;"/>
        <img src="./images/judicial(11).png" alt="" xid="image4" style="width:24%;"/>
        <img src="./images/judicial(3).png" alt="" xid="image5" style="width:24%;border-left:1px solid #f0f0f0"/> 
      </div>
      <div xid="div4" style="border-width:1px 1px 1px 1px;border-color:#F6F6F6 #F6F6F6 #F6F6F6 #F6F6F6;border-top-style:solid;border-bottom-style:solid;">
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="titleBar" style="padding:0px 0px 0px 0px;"> 
          <div class="x-col x-col-center" xid="col5">
            <a href="#a1" class="actived"><span xid="span17">百元起拍</span></a>  
            <a href="#a2"><span xid="span1" style="margin-left:10px;"><![CDATA[不限购]]></span></a>  
            <a href="#a3"><span xid="span2" style="margin-left:10px;"><![CDATA[可贷款]]></span></a>
           <a href="#a4"><span xid="span3" style="margin-left:10px;"><![CDATA[机动车]]></span></a>  
            <a href="#a5"><span xid="span4" style="margin-left:10px;"><![CDATA[优质好房源]]></span></a>
          </div>  
          <div class="x-col x-col-10 x-col-center" xid="col16" style="border-left:1px solid #f0f0f0;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right"
              xid="button1" style="padding:0;color:#333;" icon="linear linear-user"> 
              <i xid="i1" class="linear linear-user"/>  
              <span xid="span6"/>
            </a>
          </div>
        </div>  
        <div component="$UI/system/components/justep/row/row" id="a1" class="x-row"
          xid="row1" style="margin-top:1px;background-color:#CE4A5F;"> 
          <div class="x-col" xid="col1"/>  
          <div class="x-col x-col-center" xid="col2">
            <span xid="span7" style="color:#fff;"><![CDATA[百元起拍]]></span>
          </div>  
          <div class="x-col" xid="col3"/>
        </div>
        <div xid="div2">
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row3"> 
            <div class="x-col" xid="col4">
              <img src="./images/judicial(5).png" alt="" xid="image6" style="width:100%;"/>  
              <span xid="span8" style="display:block;padding-bottom:10px;padding-top:3px;"><![CDATA[刑事罚没电脑主机一台]]></span>  
              <span xid="span9" style="text-align:center;display:block;border-top:1px solid #f0f0f0;"><![CDATA[起拍价：￥200]]></span>  
              <img src="./images/judicial(13).png" alt="" xid="image7" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col8"> 
              <img src="./images/judicial(6).png" alt="" xid="image8" style="width:100%;"/>  
              <span xid="span10" style="display:block;padding-bottom:10px;padding-top:3px;"><![CDATA[三星手机一部]]></span>  
              <span xid="span11" style="text-align:center;display:block;border-top:1px solid #f0f0f0;"><![CDATA[起拍价：￥300]]></span>  
              <img src="./images/judicial(14).png" alt="" xid="image9" style="width:100%;" bind-click="image9Click"/>
            </div>
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row7"> 
            <div class="x-col" xid="col17"> 
              <img src="./images/judicial(7).png" alt="" xid="image22" style="width:100%;"/>  
              <span xid="span25" style="display:block;padding-bottom:10px;padding-top:3px;"><![CDATA[红米手机一部]]></span>  
              <span xid="span26" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image24" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col15"> 
              <img src="./images/judicial(8).png" alt="" xid="image25" style="width:100%;"/>  
              <span xid="span27" style="display:block;padding-bottom:10px;padding-top:3px;"><![CDATA[机械设备一台偏摆检查仪]]></span>  
              <span xid="span28" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image23" style="width:100%;"/>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row9"> 
            <div class="x-col" xid="col21"> 
              <img src="./images/judicial(5).png" alt="" xid="image26" style="width:100%;"/>  
              <span xid="span30" style="display:block;padding-bottom:10px;padding-top:3px;">刑事罚没电脑主机一台</span>  
              <span xid="span31" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image28" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col20"> 
              <img src="./images/judicial(6).png" alt="" xid="image29" style="width:100%;"/>  
              <span xid="span35" style="display:block;padding-bottom:10px;padding-top:3px;">三星手机一部</span>  
              <span xid="span36" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image27" style="width:100%;"/>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row8"> 
            <div class="x-col" xid="col18"> 
              <img src="./images/judicial(7).png" alt="" xid="image33" style="width:100%;"/>  
              <span xid="span32" style="display:block;padding-bottom:10px;padding-top:3px;">红米手机一部</span>  
              <span xid="span34" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image30" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col19"> 
              <img src="./images/judicial(8).png" alt="" xid="image32" style="width:100%;"/>  
              <span xid="span33" style="display:block;padding-bottom:10px;padding-top:3px;">机械设备一台偏摆检查仪</span>  
              <span xid="span29" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image31" style="width:100%;"/>
            </div> 
          </div>
        </div>  
        <div component="$UI/system/components/justep/row/row" id="a2" class="x-row"
          xid="row4" style="margin-top:1px;background-color:#CE4A5F;"> 
          <div class="x-col" xid="col9"/>  
          <div class="x-col x-col-center" xid="col6"> 
            <span xid="span5" style="color:#fff;"><![CDATA[不限购]]></span>
          </div>  
          <div class="x-col" xid="col7"/>
        </div>  
        <div xid="div3"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row11"> 
            <div class="x-col" xid="col24"> 
              <img src="./images/judicial(5).png" alt="" xid="image34" style="width:100%;"/>  
              <span xid="span18" style="display:block;padding-bottom:10px;padding-top:3px;">刑事罚没电脑主机一台</span>  
              <span xid="span19" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image36" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col14"> 
              <img src="./images/judicial(6).png" alt="" xid="image37" style="width:100%;"/>  
              <span xid="span39" style="display:block;padding-bottom:10px;padding-top:3px;">三星手机一部</span>  
              <span xid="span40" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image35" style="width:100%;"/>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row5"> 
            <div class="x-col" xid="col11"> 
              <img src="./images/judicial(7).png" alt="" xid="image21" style="width:100%;"/>  
              <span xid="span14" style="display:block;padding-bottom:10px;padding-top:3px;">红米手机一部</span>  
              <span xid="span16" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image17" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col12"> 
              <img src="./images/judicial(8).png" alt="" xid="image20" style="width:100%;"/>  
              <span xid="span15" style="display:block;padding-bottom:10px;padding-top:3px;">机械设备一台偏摆检查仪</span>  
              <span xid="span13" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image18" style="width:100%;"/>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row6"> 
            <div class="x-col" xid="col22"> 
              <img src="./images/judicial(5).png" alt="" xid="image19" style="width:100%;"/>  
              <span xid="span20" style="display:block;padding-bottom:10px;padding-top:3px;">刑事罚没电脑主机一台</span>  
              <span xid="span24" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image14" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col23"> 
              <img src="./images/judicial(6).png" alt="" xid="image16" style="width:100%;"/>  
              <span xid="span22" style="display:block;padding-bottom:10px;padding-top:3px;">三星手机一部</span>  
              <span xid="span21" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image15" style="width:100%;"/>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row10"> 
            <div class="x-col" xid="col10"> 
              <img src="./images/judicial(7).png" alt="" xid="image12" style="width:100%;"/>  
              <span xid="span23" style="display:block;padding-bottom:10px;padding-top:3px;">红米手机一部</span>  
              <span xid="span37" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image11" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col13"> 
              <img src="./images/judicial(8).png" alt="" xid="image13" style="width:100%;"/>  
              <span xid="span38" style="display:block;padding-bottom:10px;padding-top:3px;">机械设备一台偏摆检查仪</span>  
              <span xid="span12" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image10" style="width:100%;"/>
            </div> 
          </div> 
        </div>  
        <div component="$UI/system/components/justep/row/row" id="a3" class="x-row"
          xid="row16" style="margin-top:1px;background-color:#CE4A5F;"> 
          <div class="x-col" xid="col29"/>  
          <div class="x-col x-col-center" xid="col30"> 
            <span xid="span46" style="color:#fff;"><![CDATA[可贷款]]></span>
          </div>  
          <div class="x-col" xid="col31"/>
        </div>  
        <div xid="div5"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row12"> 
            <div class="x-col" xid="col33"> 
              <img src="./images/judicial(5).png" alt="" xid="image39" style="width:100%;"/>  
              <span xid="span51" style="display:block;padding-bottom:10px;padding-top:3px;">刑事罚没电脑主机一台</span>  
              <span xid="span52" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image41" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col25"> 
              <img src="./images/judicial(6).png" alt="" xid="image40" style="width:100%;"/>  
              <span xid="span47" style="display:block;padding-bottom:10px;padding-top:3px;">三星手机一部</span>  
              <span xid="span50" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image38" style="width:100%;"/>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row15"> 
            <div class="x-col" xid="col28"> 
              <img src="./images/judicial(7).png" alt="" xid="image43" style="width:100%;"/>  
              <span xid="span53" style="display:block;padding-bottom:10px;padding-top:3px;">红米手机一部</span>  
              <span xid="span55" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image44" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col27"> 
              <img src="./images/judicial(8).png" alt="" xid="image42" style="width:100%;"/>  
              <span xid="span56" style="display:block;padding-bottom:10px;padding-top:3px;">机械设备一台偏摆检查仪</span>  
              <span xid="span54" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image47" style="width:100%;"/>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row14"> 
            <div class="x-col" xid="col35"> 
              <img src="./images/judicial(5).png" alt="" xid="image46" style="width:100%;"/>  
              <span xid="span43" style="display:block;padding-bottom:10px;padding-top:3px;">刑事罚没电脑主机一台</span>  
              <span xid="span41" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image51" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col34"> 
              <img src="./images/judicial(6).png" alt="" xid="image45" style="width:100%;"/>  
              <span xid="span45" style="display:block;padding-bottom:10px;padding-top:3px;">三星手机一部</span>  
              <span xid="span42" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image50" style="width:100%;"/>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row13"> 
            <div class="x-col" xid="col32"> 
              <img src="./images/judicial(7).png" alt="" xid="image49" style="width:100%;"/>  
              <span xid="span44" style="display:block;padding-bottom:10px;padding-top:3px;">红米手机一部</span>  
              <span xid="span49" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥200</span>  
              <img src="./images/judicial(13).png" alt="" xid="image52" style="width:100%;"/>
            </div>  
            <div class="x-col" xid="col26"> 
              <img src="./images/judicial(8).png" alt="" xid="image48" style="width:100%;"/>  
              <span xid="span48" style="display:block;padding-bottom:10px;padding-top:3px;">机械设备一台偏摆检查仪</span>  
              <span xid="span57" style="text-align:center;display:block;border-top:1px solid #f0f0f0;">起拍价：￥300</span>  
              <img src="./images/judicial(14).png" alt="" xid="image53" style="width:100%;"/>
            </div> 
          </div> 
        </div>
      </div>
    </div> 
  </div> 
</div>
