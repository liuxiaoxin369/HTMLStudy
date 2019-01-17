<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:107px;top:547px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="associationData" queryAction="queryIdlefish_association" saveAction="saveIdlefish_association" url="/justep/idleFishAssociation" tableName="idlefish_association" idColumn="id"><column label="id" name="id" type="String" xid="default6"></column>
  <column label="userId" name="userId" type="String" xid="default7"></column>
  <column label="fishpondId" name="fishpondId" type="String" xid="default8"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="fishpondData" queryAction="queryIdlefish_fishpond" saveAction="saveIdlefish_fishpond" url="/justep/idleFishPond" tableName="idlefish_fishpond" idColumn="id"><column label="id" name="id" type="String" xid="default1"></column>
  <column label="name" name="name" type="String" xid="default2"></column>
  <column label="type" name="type" type="String" xid="default3"></column>
  <column label="popularity" name="popularity" type="Integer" xid="default4"></column>
  <column label="publishCount" name="publishCount" type="Integer" xid="default5"></column>
  <column label="curLng" name="curLng" type="String" xid="default9"></column>
  <column label="curLat" name="curLat" type="String" xid="default10"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2" style="background-color:#FFDA44;text-align:center;"> 
           
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group" tabbed="true" xid="buttonGroup2" style="margin-top:8px;color:#000040;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-change" label="发现" xid="button3" style="color:#000040;" target="content3"> 
              <i xid="i3" />  
              <span xid="span3">发现</span>
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-change" label="我的" xid="button4" style="color:#000040;" target="content4"> 
              <i xid="i4" />  
              <span xid="span4">我的</span>
            </a> 
          </div></div> 
      </div>
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents1"> 
        <div class="x-contents-content  x-scroll-view" xid="content3">
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div3"> 
              <span class="x-pull-down-label" xid="span1">下拉刷新...</span>
            </div>  
            <div class="x-scroll-content" xid="div4">
              <img src="./images/main_top.gif" alt="" xid="image1" class="img-responsive"></img><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
                    <div class="x-col x-col-33" xid="col1"> 
                      <span xid="span7" style="display:block;font-weight:bold;padding-left:5px;border-left-style:solid;border-left-width:medium;border-left-color:#21CDD6;font-size:xx-small;">附近的鱼塘</span>
                    </div>  
                    <div class="x-col" xid="col2" style="text-align:right;"> 
                      <span xid="span8" style="font-size:xx-small;color:#808080;text-align:right;">里店镇十里河家居建材商业街</span>
                    </div>  
                    <div class="x-col x-col-10" xid="col3" style="color:#21CDD6;"> 
                      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon btn-block" label="button" xid="button2" icon="linear linear-directionrtl">
   <i xid="i9" class="linear linear-directionrtl"></i>
   <span xid="span37"></span></a></div> 
                  </div><div xid="div11" style="height:10px;background-color:#eeeeee;"></div><div xid="mapDiv" style="height:200px;" /><div xid="div12" style="padding:0 10px;margin:15px 0;">
   <div class="media" xid="media1">
    <div class="media-left" xid="mediaLeft1">
     <img src="" alt="" xid="image3" class="img-rounded media-object" height="40px" style="width:40px;"></img></div> 
    <div class="media-body" xid="mediaBody1">
     <h5 xid="h51" style="margin-top:0"><![CDATA[御景园]]></h5>
     <span xid="span14" style="font-size:xx-small;"><![CDATA[发布数190]]></span>
     <span xid="span5" style="font-size:xx-small;"><![CDATA[人气2140]]></span></div> </div> <div class="media" xid="media3">
    <div class="media-left" xid="mediaLeft3">
     <img src="" alt="" xid="image4" class="img-rounded media-object" height="40px" style="width:40px;"></img></div> 
    <div class="media-body" xid="mediaBody3">
     <h5 xid="h52" style="margin-top:0"><![CDATA[京瑞大厦]]></h5>
     <span xid="span6" style="font-size:xx-small;"><![CDATA[发布数7]]></span>
     <span xid="span9" style="font-size:xx-small;"><![CDATA[人气33]]></span></div> </div></div><div xid="div7" style="border:1px solid #EBEBEB;"> 
                    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"> 
                      <a component="$UI/system/components/justep/button/button" class="btn-link btn-block btn" label="更多" xid="moreBtn" onClick="moreBtnClick"> 
                        <i xid="i1" />  
                        <span xid="span15" style="color:#000040;">更多</span>
                      </a> 
                    </div> 
                  </div><div xid="div9" style="height:10px;background-color:#EBEBEB;"></div><div xid="div6" height="120"> 
                   
                <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11"> 
                    <div class="x-col x-col-fixed" xid="col23"> 
                      
                    <span xid="span21" style="display:block;font-weight:bold;padding-left:5px;border-left-style:solid;border-left-width:medium;border-left-color:#21CDD6;">不可错过的鱼塘</span></div> 
                  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12"> 
                    <div class="x-col" xid="col26"> 
                      <img src="./images/main_bn2.png" alt="" xid="image6" class="img-responsive"/>  
                      <span xid="span22" style="display:block;font-size:x-small;">耳机</span>  
                      <span xid="span23" style="color:#C0C0C0;font-size:x-small;">人气568978</span>
                    </div>  
                    <div class="x-col" xid="col35"> 
                      <img src="./images/main_bn3.png" alt="" xid="image10" class="img-responsive"/>  
                      <span xid="span30" style="display:block;font-size:x-small;">囧一刻</span>  
                      <span xid="span31" style="color:#C0C0C0;font-size:x-small;">人气568978</span>
                    </div>  
                    <div class="x-col" xid="col36"> 
                      <img src="./images/main_bn4.png" alt="" xid="image11" class="img-responsive"/>  
                      <span xid="span32" style="display:block;font-size:x-small;">一只诱惑的口红</span>  
                      <span xid="span33" style="color:#C0C0C0;font-size:x-small;">人气568978</span>
                    </div> 
                  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row13"> 
                    <div class="x-col" xid="col32"> 
                      <img src="./images/main_bn5.png" alt="" xid="image7" class="img-responsive"/>  
                      <span xid="span24" style="display:block;font-size:x-small;">一起cosplay</span>  
                      <span xid="span25" style="color:#C0C0C0;font-size:x-small;">人气568978</span>
                    </div>  
                    <div class="x-col" xid="col33"> 
                      <img src="./images/main_bn6.png" alt="" xid="image8" class="img-responsive"/>  
                      <span xid="span26" style="display:block;font-size:x-small;">爱篮球，爱NBA</span>  
                      <span xid="span27" style="color:#C0C0C0;font-size:x-small;">人气568978</span>
                    </div>  
                    <div class="x-col" xid="col34"> 
                      <img src="./images/main_bn1.png" alt="" xid="image9" class="img-responsive"/>  
                      <span xid="span28" style="display:block;font-size:x-small;">告别前任</span>  
                      <span xid="span29" style="color:#C0C0C0;font-size:x-small;">人气568978</span>
                    </div> 
                  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"> 
                    <div class="x-col x-col-10" xid="col8" />  
                    <div class="x-col" xid="col9"> 
                      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6"> 
                        <div class="x-col" xid="col12"> 
                          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#C0C0C0;"> 
                            <div class="x-col" xid="col15" />  
                            <div class="x-col" xid="col16" />  
                            <div class="x-col" xid="col17" />
                          </div>  
                          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14"> 
                            <div class="x-col" xid="col24" />  
                            <div class="x-col" xid="col25" />  
                            <div class="x-col" xid="col27" />
                          </div> 
                        </div>  
                        <div class="x-col" xid="col13"> 
                          <span xid="span11" style="font-size:x-small;">鱼塘新鲜事</span>
                        </div>  
                        <div class="x-col" xid="col14"> 
                          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#C0C0C0;"> 
                            <div class="x-col" xid="col28" />  
                            <div class="x-col" xid="col29" />  
                            <div class="x-col" xid="col30" />
                          </div>  
                          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16"> 
                            <div class="x-col" xid="col31" />  
                            <div class="x-col" xid="col37" />  
                            <div class="x-col" xid="col38" />
                          </div> 
                        </div> 
                      </div> 
                    </div>  
                    <div class="x-col x-col-10" xid="col11" />
                  </div></div>
  
  </div>  
            <div class="x-content-center x-pull-up" xid="div5"> 
              <span class="x-pull-up-label" xid="span2">加载更多...</span>
            </div> 
          </div>
        </div>  
        <div class="x-contents-content" xid="content4" style="background-color:#eeeeee;">
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i10"></i>
    <span class="x-pull-down-label" xid="span35">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="mineFishpondList" data="fishpondData" filter="$model.filter($row)">
   <ul class="x-list-template list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="detail" class=" list-group-item" componentname="li(html)" id="undefined_li1" bind-click="detailClick">
     
     <div class="media" xid="media2">
   <div class="media-left" xid="mediaLeft2">
    <img src="" alt="" xid="image5" class="img-rounded media-object" height="40px" style="width:40px;"></img></div> 
   <div class="media-body" xid="mediaBody2">
    <h5 xid="h53" bind-text='ref("name")' style="margin-top:0"></h5>
    <span xid="span10" bind-text='"发布数"+val("publishCount")' style="font-size:xx-small;"></span>
    <span xid="span12" bind-text='"人气"+val("popularity")' style="font-size:xx-small;"></span></div> </div></li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div10">
    <span class="x-pull-up-label" xid="span36">加载更多...</span></div> </div></div>
      </div>
    </div> 
  </div>
</div>
