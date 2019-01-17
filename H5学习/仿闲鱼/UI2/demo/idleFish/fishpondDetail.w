<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:106px;left:493px;"
    onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true"
      xid="associationData" queryAction="queryIdlefish_association" saveAction="saveIdlefish_association"
      url="/justep/idleFishAssociation" tableName="idlefish_association" idColumn="id">
      <column label="id" name="id" type="String" xid="default9"/>  
      <column label="userId" name="userId" type="String" xid="default10"/>  
      <column label="fishpondId" name="fishpondId" type="String" xid="default11"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data" idColumn="id">
      <column name="id" type="String" xid="xid1"/>  
      <column name="name" type="String" xid="xid2"/>  
      <column name="type" type="String" xid="xid3"/>  
      <column name="popularity" type="String" xid="xid4"/>  
      <column name="publishCount" type="String" xid="xid5"/>
    </div>  
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true"
      xid="fishpondData" queryAction="queryIdlefish_fishpond" saveAction="saveIdlefish_fishpond"
      url="/justep/idleFishPond" tableName="idlefish_fishpond" idColumn="id">
      <column label="id" name="id" type="String" xid="default1"/>  
      <column label="name" name="name" type="String" xid="default2"/>  
      <column label="type" name="type" type="String" xid="default3"/>  
      <column label="popularity" name="popularity" type="Integer" xid="default4"/>  
      <column label="publishCount" name="publishCount" type="Integer" xid="default5"/>  
      <rule xid="rule1"> 
        <col name="popularity" xid="ruleCol1"> 
          <calculate xid="calculate1"> 
            <expr xid="default6"/>
          </calculate> 
        </col>  
        <col name="publishCount" xid="ruleCol2"> 
          <calculate xid="calculate2"> 
            <expr xid="default7"/>
          </calculate> 
        </col> 
      </rule>
    </div> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="publishData" queryAction="queryIdlefish_publish" saveAction="saveIdlefish_publish" url="/justep/idleFishPublish" tableName="idlefish_publish" idColumn="id" orderBy="createTime:desc"><column label="id" name="id" type="String" xid="default12"></column>
  <column label="userId" name="userId" type="String" xid="default13"></column>
  <column label="title" name="title" type="String" xid="default14"></column>
  <column label="description" name="description" type="String" xid="default15"></column>
  <column label="image1" name="image1" type="String" xid="default16"></column>
  <column label="image2" name="image2" type="String" xid="default17"></column>
  <column label="image3" name="image3" type="String" xid="default18"></column>
  <column label="price" name="price" type="String" xid="default19"></column>
  <column label="kind" name="kind" type="String" xid="default20"></column>
  <column label="reverse" name="reverse" type="String" xid="default21"></column>
  <column label="createTime" name="createTime" type="String" xid="default22"></column>
  <column label="fishpondId" name="fishpondId" type="String" xid="default23"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="neighbor"><column name="neighbor" type="String" xid="xid9"></column>
  <column name="hodgepodge" type="String" xid="xid10"></column>
  <column name="flag" type="String" xid="xid11"></column>
  <data xid="default24">[{&quot;neighbor&quot;:&quot;1&quot;,&quot;hodgepodge&quot;:&quot;0&quot;,&quot;flag&quot;:&quot;&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1">
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="left1">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="backBtn" icon="icon-chevron-left" style="color:#000000;"
            onClick="backBtnClick"> 
            <i xid="i1" class="icon-chevron-left"/>  
            <span xid="span1"/>
          </a>
        </div>  
        <div class="x-titlebar-title" xid="title1"/>  
        <div class="x-titlebar-right reverse" xid="right1">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
            label="button" xid="button3" icon="icon-ios7-redo-outline" style="color:#000000;"> 
            <i xid="i3" class="icon-ios7-redo-outline"/>  
            <span xid="span3"/>
          </a>
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
            label="button" xid="button2" icon="icon-android-search" style="color:#000000;"> 
            <i xid="i2" class="icon-android-search"/>  
            <span xid="span2"/>
          </a>
        </div>
      </div>
    </div>
    <div class="x-panel-content " xid="content1" _xid="C719133788E00001F3681BC0FDDD1F9B"> 
      <div class="o-relative" xid="div2"> 
        <div xid="div3" style="position:absolute; bottom:20px;padding:0 10px;">
          <div class="media" xid="media2"> 
            <div class="media-left" xid="mediaLeft2"> 
              <img src="" alt="" xid="image3" class="img-rounded media-object"
                height="40px" style="width:40px;"/>
            </div>  
            <div class="media-body" xid="mediaBody2"> 
              <h5 xid="h51" bind-text="$model.data.ref(&quot;name&quot;)" style="margin-top:0"/>  
              <span xid="span14" bind-text="&quot;发布数&quot;+$model.data.val(&quot;publishCount&quot;)"
                style="font-size:xx-small;"/>  
              <span xid="span15" bind-text="&quot;人气&quot;+$model.data.val(&quot;popularity&quot;)"
                style="font-size:xx-small;"/>
            </div> 
          </div>
        </div>
        <img src="./images/map.png" alt="" xid="image2" class="img-responsive"/> 
      </div>  
      <div xid="div1" style="background-color:white;"> 
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
          tabbed="true" xid="buttonGroup2" style="background-color:white;"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
            label="签到+1" xid="button7" icon="icon-calendar" style="font-size:x-small;"> 
            <i xid="i8" class="icon-calendar"/>  
            <span xid="span29">签到+1</span>
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
            label="话题" xid="button7" icon="icon-android-volume" style="font-size:x-small;"> 
            <i xid="i9" class="icon-android-volume"/>  
            <span xid="span30">话题</span>
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
            label="找塘主" xid="button8" icon="icon-ios7-contact-outline" style="font-size:x-small;"> 
            <i xid="i10" class="icon-ios7-contact-outline"/>  
            <span xid="span31">找塘主</span>
          </a> 
        </div>  
        <div xid="div6" style="padding:10px 10px;border:1px solid #f0f0f0;"> 
          <img src="./images/join(3).png" alt="" xid="image1" style="width:44px;height:14px;"/>  
          <span xid="span7" style="margin-left:10px;font-size:x-small;">如何玩转话题鱼塘话题来了！鱼塘里的小伙...</span>
        </div> 
      </div>  
      <div xid="div11" style="height:10px;background-color:#eeeeee;"/>
      <div xid="div8"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link"
          label="邻居帮帮忙" xid="neighborBtn" bind-css="{&quot;active-btn&quot;: $model.data1.val(&quot;neighbor&quot;)==1}"
          onClick="neighborBtnClick"> 
          <i xid="i17"/>  
          <span xid="span18">邻居帮帮忙</span>
        </a>
        <a component="$UI/system/components/justep/button/button" class="btn btn-link"
          label="大杂烩" xid="hodgepodgeBtn" bind-css="{'active-btn': $model.data1.val(&quot;hodgepodge&quot;) ==1}"
          onClick="hodgepodgeBtnClick"> 
          <i xid="i18"/>  
          <span xid="span25">大杂烩</span>
        </a>
      </div>  
      <div xid="div4" bind-visible=' $model.data1.val("neighbor") ==1'><img src="./images/empty.png" alt="" xid="image5" class="img-responsive"></img></div><div xid="div5" bind-visible=' $model.data1.val("hodgepodge") ==1'><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="publishData" filter="$model.filter($row)"> 
                <ul class="x-list-template" xid="listTemplateUl1" style="background-color:#eeeeee;"> 
                  <li xid="li1" style="margin:10px;background-color:white;">
                    <div xid="div2" style="padding:0 8px;"> 
                      <div class="media" xid="media2"> 
                        <div class="media-left" xid="mediaLeft2"> 
                          <img src="./images/audio2.png" alt="" xid="image14" class="img-rounded media-object " style="width:36px;margin-top:8px;" /> 
                        </div>  
                        <div class="media-body" xid="mediaBody2"> 
                          <h5 xid="h53" bind-text="ref(&quot;userId&quot;)" style="margin-bottom:0;color:#000000;" />  
                          <span xid="span8" style="font-size:x-small;" bind-text="$model.timeTrans($object)" /> 
                        </div>  
                        <div class="media-right" xid="mediaRight1"> 
                          <h5 xid="h54" bind-text="&quot;￥&quot;+val(&quot;price&quot;)" style="color:#FF0000;" /> 
                        </div> 
                      </div> 
                    </div>  
                    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
                      <div class="x-col" xid="col4"> 
                        <img src="" alt="" xid="image2" bind-attr-src="$model.transUrl($object.val('image1'),$object.val('id'))" class="img-responsive" /> 
                      </div>  
                      <div class="x-col" xid="col5" bind-visible="$model.isOrNotHaveImage( val(&quot;image2&quot;))"> 
                        <img src="" alt="" xid="image3" bind-attr-src="$model.transUrl($object.val('image2'),$object.val('id'))" class="img-responsive" /> 
                      </div>  
                      <div class="x-col" xid="col6" bind-visible=" $model.isOrNotHaveImage( val(&quot;image3&quot;))"> 
                        <img src="" alt="" xid="image4" bind-attr-src="$model.transUrl($object.val('image3'),$object.val('id'))" class="img-responsive" /> 
                      </div> 
                    </div>  
                    <p xid="p1" bind-text="ref(&quot;description&quot;)" style="padding-left:8px;padding-right:8px;" />  
                    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="border-top:1px solid #F8F8FF;"> 
                      <div class="x-col x-col-67" xid="col31" style="color:#52C7E4;"> 
                        <i class="icon-android-location" xid="i5" />  
                        <span xid="span20"><![CDATA[来自深圳]]></span> 
                      </div>  
                      <div class="x-col" xid="col32"> 
                        <i class="icon-chatbubble-working" xid="i7" />  
                        <span xid="span6"><![CDATA[12]]></span> 
                      </div>  
                      <div class="x-col" xid="col33" style="color:red;"> 
                        <i class="icon-ios7-heart" xid="i9" />  
                        <span xid="span7"><![CDATA[50]]></span> 
                      </div> 
                    </div> 
                  </li>
                </ul> 
              </div></div></div>  
    <div class="x-panel-bottom" xid="bottom1"><div xid="div7" style="padding:5px 10px 5px 10px;border-top:1px solid #C1C1C1;" align="center">
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="加入鱼塘" xid="joinBtn" onClick="joinBtnClick" bind-visible="$model.isOrNotShow()"> 
          <i xid="i7" />  
          <span xid="span11">加入鱼塘</span>
        </a>
      <a component="$UI/system/components/justep/button/button" class="btn btn-block" label="发布" xid="publishBtn" onClick="joinBtnClick" style="background-color:#FFDA44;" bind-visible="$model.isOrNotShow2()">
   <i xid="i12"></i>
   <span xid="span10">发布</span></a></div></div></div>
</div>
