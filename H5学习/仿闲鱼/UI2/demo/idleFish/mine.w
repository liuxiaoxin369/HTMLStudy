<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:335px;left:748px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="publishData" queryAction="queryIdlefish_publish" saveAction="saveIdlefish_publish" url="/justep/idleFishPublish" tableName="idlefish_publish" idColumn="id"><column label="id" name="id" type="String" xid="default1"></column>
  <column label="userId" name="userId" type="String" xid="default2"></column>
  <column label="title" name="title" type="String" xid="default3"></column>
  <column label="description" name="description" type="String" xid="default4"></column>
  <column label="image1" name="image1" type="String" xid="default5"></column>
  <column label="image2" name="image2" type="String" xid="default6"></column>
  <column label="image3" name="image3" type="String" xid="default7"></column>
  <column label="price" name="price" type="String" xid="default8"></column>
  <column label="kind" name="kind" type="String" xid="default9"></column>
  <column label="reverse" name="reverse" type="String" xid="default10"></column>
  <column label="createTime" name="createTime" type="String" xid="default11"></column>
  <column label="fishpondId" name="fishpondId" type="String" xid="default12"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="buyData" queryAction="queryIdlefish_buy" saveAction="saveIdlefish_buy" url="/justep/idleFishBuy" tableName="idlefish_buy" idColumn="id"><column label="id" name="id" type="String" xid="default13"></column>
  <column label="publishId" name="publishId" type="String" xid="default14"></column>
  <column label="goodsName" name="goodsName" type="String" xid="default15"></column>
  <column label="userName" name="userName" type="String" xid="default16"></column>
  <column label="price" name="price" type="String" xid="default17"></column>
  <column label="image" name="image" type="String" xid="default18"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryIdlefish_user2" saveAction="saveIdlefish_user" url="/justep/idleFishUser" tableName="idlefish_user" idColumn="username">
   <column label="username" name="username" type="String" xid="default20"></column>
   <column label="password" name="password" type="String" xid="default19"></column>
   <column label="nickname" name="nickname" type="String" xid="default21"></column>
   <column label="photo" name="photo" type="String" xid="default19"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="我的"
        class="x-titlebar" style="color:#000040;background-color:#FFDA44;"> 
        <div class="x-titlebar-left"></div>  
        <div class="x-titlebar-title">我的</div>  
        <div class="x-titlebar-right reverse"></div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eeeeee;">
      <div xid="top2" style="background-color:#ffffff;">
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="mineMessage" bind-click="mineMessageClick"> 
            <div class="x-col x-col-20" xid="col1">
              <img alt="" xid="image1" bind-attr-src=" $model.changePhoto()" height="50px" style="width:50px;" class="img-circle"/>
            </div>  
            <div class="x-col" xid="col2" style="vertical-align:middle;">
              <h5 xid="h51" bind-text="$model.changeUsername()" style="margin-bottom:0px;"><![CDATA[]]></h5><span xid="span1" bind-text="$model.changeDescription()" style="font-size:xx-small;"><![CDATA[]]></span>
  </div>  
            <div class="x-col x-col-25" xid="col3">
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="more" icon="icon-chevron-right" bind-visible=" $model.changeButtonMore()" style="margin-top:10px;">
   <i xid="i1" class="icon-chevron-right"></i>
   <span xid="span2"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="马上登录" xid="loginBtn" style="margin-top:10px;border:0;background-color:#FFDA44;" bind-visible=" $model.changeButtonLogin()" onClick="loginBtnClick">
   <i xid="i2"></i>
   <span xid="span3">马上登录</span></a></div>
          </div>
        </div><ul class="list-group" xid="ul3">
   <li class="list-group-item" xid="li5" style="padding:0px;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
     <div class="x-col x-col-10" xid="col4">
      <img src="./images/mine1.png" alt="" xid="image7" class="img-responsive"></img></div> 
     <div class="x-col" xid="col6">
      <span xid="span4"><![CDATA[我的鱼贝]]></span></div> 
     <div class="x-col x-col-10" xid="col5">
      <i class="icon-chevron-right" xid="i3"></i></div> </div> </li> </ul><ul class="list-group" xid="ul1"> 
            <li class="list-group-item" xid="minePublish" style="padding:0px;" bind-click="minePublishClick"> 
              <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
                <div class="x-col x-col-10" xid="col7">
                  <img alt="" xid="image2" src="./images/mine2.png" class="img-responsive" />
                </div>  
                <div class="x-col" xid="col8">
                  <span xid="span15"><![CDATA[我发布的]]>
  </span>
                <span xid="span5" class="pull-right" bind-text="$model.publishCount()"></span></div>  
                <div class="x-col x-col-10" xid="col9">
                  <i class="icon-chevron-right" />
                </div>
              </div>
            </li>  
            <li class="list-group-item" xid="haveSelled" style="padding:0px;" bind-click="haveSelledClick"> 
              <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"> 
                <div class="x-col x-col-10" xid="col10"> 
                  <img src="./images/mine3.png" alt="" xid="image3" class="img-responsive" />
                </div>  
                <div class="x-col" xid="col12">
                  <span xid="span16"><![CDATA[我卖出的]]></span>
                <span xid="span7" class="pull-right" bind-text="$model.selledCount()"></span></div>  
                <div class="x-col x-col-10" xid="col11"> 
                  <i class="icon-chevron-right" xid="i30" />
                </div> 
              </div>
            </li>  
            <li class="list-group-item" xid="haveBought" style="padding:0px;" bind-click="haveBoughtClick"> 
              <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"> 
                <div class="x-col x-col-10" xid="col13"> 
                  <img src="./images/mine4.png" alt="" xid="image4" class="img-responsive" />
                </div>  
                <div class="x-col" xid="col15">
                  <span xid="span17"><![CDATA[我买到的]]></span>
                <span xid="span6" class="pull-right" bind-text="$model.buyCount()"></span></div>  
                <div class="x-col x-col-10" xid="col14"> 
                  <i class="icon-chevron-right" xid="i31" />
                </div> 
              </div>
            </li>  
            <li class="list-group-item" xid="li4" style="padding:0px;"> 
              <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6"> 
                <div class="x-col x-col-10" xid="col16"> 
                  <img src="./images/mine5.png" alt="" xid="image5" class="img-responsive" />
                </div>  
                <div class="x-col" xid="col18">
                  <span xid="span18"><![CDATA[我赞过的]]></span>
                </div>  
                <div class="x-col x-col-10" xid="col17"> 
                  <i class="icon-chevron-right" xid="i32" />
                </div> 
              </div>
            </li> 
          </ul><ul class="list-group" xid="ul2"> 
            <li class="list-group-item" xid="li13" style="padding:0px;"> 
              <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7"> 
                <div class="x-col x-col-10" xid="col21"> 
                  <img src="./images/mine1.png" alt="" xid="image6" class="img-responsive" />
                </div>  
                <div class="x-col" xid="col19" bind-click="col19Click">
                  <span xid="span19"><![CDATA[注销]]></span>
                </div>  
                <div class="x-col x-col-10" xid="col20"> 
                  <i class="icon-chevron-right" xid="i33" />
                </div> 
              </div>
            </li> 
          </ul>
  </div> 
  </div> 
</div>
