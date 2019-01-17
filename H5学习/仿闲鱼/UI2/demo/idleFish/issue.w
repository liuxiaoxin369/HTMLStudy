<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:112px;left:813px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="pageData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="xid10"/>  
      <column name="title" type="String" xid="xid11"/>  
      <column name="description" type="String" xid="xid12"/>  
      <column name="image" type="String" xid="xid13"/>  
      <column name="price" type="String" xid="xid14"/>  
      <column name="kind" type="String" xid="xid15"/>  
      <rule xid="rule1"> 
        <col name="id" xid="ruleCol1"> 
          <calculate xid="calculate1"> 
            <expr xid="default12">justep.UUID.createUUID()</expr>
          </calculate> 
        </col> 
      </rule>  
      <column name="fishpondId" type="String" xid="xid4"/>  
      <column name="fishpondName" type="String" xid="xid5"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data1" idColumn="start"> 
      <column name="start" type="String" xid="xid1"/>  
      <column name="auction" type="String" xid="xid2"/>  
      <column name="end" type="String" xid="xid3"/>  
      <data xid="default1">[{"start":"1","auction":"0","end":"0"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true"
      xid="publishData" queryAction="queryIdlefish_publish" saveAction="saveIdlefish_publish"
      url="/justep/idleFishPublish" tableName="idlefish_publish" idColumn="id">
      <column label="id" name="id" type="String" xid="default2"/>  
      <column label="userId" name="userId" type="String" xid="default3"/>  
      <column label="title" name="title" type="String" xid="default4"/>  
      <column label="description" name="description" type="String" xid="default5"/>  
      <column label="image1" name="image1" type="String" xid="default6"/>  
      <column label="image2" name="image2" type="String" xid="default7"/>  
      <column label="image3" name="image3" type="String" xid="default8"/>  
      <column label="price" name="price" type="String" xid="default9"/>  
      <column label="kind" name="kind" type="String" xid="default10"/>  
      <column label="reverse" name="reverse" type="String" xid="default11"/>  
      <column label="createTime" name="createTime" type="String" xid="default13"/>  
      <column label="fishpondId" name="fishpondId" type="String" xid="default14"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="发布"
        class="x-titlebar" style="color:#333;background-color:#F7F7F7;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-default btn-only-icon" icon="icon-android-close" onClick="{operation:'window.close'}"
            xid="closeBtn" style="background-color:#F7F7F7;color:#333;border:none;"> 
            <i class="icon-android-close"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">发布</div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg"
            xid="button1" icon="icon-ios7-information-outline" style="background-color:#F7F7F7;color:black;border:none;"> 
            <i xid="i1" class="icon-ios7-information-outline"/>  
            <span xid="span1"/> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div xid="div1"> 
        <div xid="div4" style="padding:0 15px;position:relative;"> 
          <input type="text" placeholder="标题" xid="titleInput" style="outline:none;width:100%;height:39px;padding-left:1%;border-bottom-style:solid;border-bottom-color:#F5F5F5;border-width:0px 0px 1px 0px;"
            bind-value="$model.pageData.ref(&quot;title&quot;)"/>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            xid="scanBtn" style="position:absolute;right:0px;color:#333;top:0px;"
            onClick="scanBtnClick" icon="linear linear-chevronupcircle"> 
            <i xid="i3" class="linear linear-chevronupcircle"/>  
            <span xid="span4"/> 
          </a> 
        </div>  
        <div xid="div5" style="padding:0 8px;"> 
          <textarea component="$UI/system/components/justep/textarea/textarea" rows="3"
            overflow="scroll" placeholder="描述一下您的宝贝" class="form-control" xid="desctiptionText"
            style="border:none;height:89%;outline:none;" bind-ref="$model.pageData.ref(&quot;description&quot;)"/> 
        </div> 
      </div>  
      <!-- <div xid="div2" style="margin:5px 0;background-color:white;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" xid="button5" icon="img:$UI/idleFish/images/2.png" target="content5">
   <i xid="i5"></i>
   <span xid="span6"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button6" icon="img:$UI/idleFish/images/2.png" target="content6">
   <i xid="i6"></i>
   <img src="$UI/idleFish/images/2.png" xid="image2"></img><span xid="span7"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button7" icon="img:$UI/idleFish/images/4.png" target="content7">
   <i xid="i7"></i>
   <img src="$UI/idleFish/images/4.png" xid="image3"></img><span xid="span8"></span></a>
  </div><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2" style="width:863px;height:591px;">
   <div class="x-contents-content" xid="content5"></div>
  <div class="x-contents-content" xid="content6"></div>
  <div class="x-contents-content" xid="content7"></div></div></div> -->  
      <div component="$UI/system/components/justep/attachment/attachmentSimple"
        actionUrl="/baas/justep/attachment/simpleFileStore" xid="attachmentSimple1"
        bind-ref="$model.pageData.ref(&quot;image&quot;)"> 
        <div class="x-attachment" xid="div6"> 
          <div class="x-attachment-content x-card-border" xid="div7" style="border:0;"> 
            <div class="x-doc-process" xid="div8"> 
              <div class="progress-bar x-doc-process-bar" role="progressbar"
                style="width:0%;" xid="progressBar1"/>
            </div>  
            <div data-bind="foreach:$attachmentItems" xid="div9"> 
              <div class="x-attachment-cell" xid="div10"> 
                <div class="x-attachment-item x-item-other" data-bind="click:$model.previewOrRemoveItem.bind($model),style:{backgroundImage:($model.previewPicture.bind($model,$object))()}"
                  xid="div11"> 
                  <a data-bind="visible:$model.$state.get() == 'remove'"
                    class="x-remove-barget" xid="a1"/>
                </div> 
              </div> 
            </div>  
            <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload'"
              xid="div12"> 
              <div class="x-attachment-item x-item-upload" data-bind="visible:$state.get() == 'upload'"
                xid="div13"/>
            </div>  
            <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload' &amp;&amp; $attachmentItems.get().length &gt; 0"
              xid="div14"> 
              <div class="x-attachment-item x-item-remove" data-bind="click:changeState.bind($object,'remove')"
                xid="div15"/>
            </div>  
            <div style="clear:both;" xid="div16"/>
          </div> 
        </div> 
      </div>
      <div xid="div19" style="padding:10px 15px;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
          xid="position" icon="icon-android-location" style="color:#333;padding:0 5px;"> 
          <i xid="i4" class="icon-android-location"/>  
          <span xid="span5"/> 
        </a>
        <span xid="span18" style="font-size:xx-small;"><![CDATA[北京 北京 朝阳区]]></span>
      </div>
      <div xid="div23" style="height:10px;background-color:#EBEBEB;"/>
      <div xid="div20"> 
        <div xid="div21" style="padding:10px 0;margin:0 10px;"> 
          <div xid="div2" style="position:relative;margin:2% 15%;height:2px;background-color:#EEEEEE;width:70%;"> 
            <div xid="startBtn" style="position:absolute;border-radius:50%;background-color:#EFEFEF;left:0px;top:-3px;height:6px;width:6px;"
              bind-click="startBtnClick"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link"
                xid="button5" icon="img:./images/2.png|" style="position:absolute;left:-20px;top:-20px;"
                startBtn="1" bind-visible=" $model.data1.val(&quot;start&quot;) ==1" bind-css="{'btnColor':data1.start==1}"> 
                <i xid="i5"/>  
                <img src="./images/2.png" xid="image2"/>  
                <span xid="span3"/> 
              </a> 
            </div>  
            <div xid="auctionBtn" style="position:absolute;border-radius:49%;background-color:#EFEFEF;left:50%;height:6px;width:6px;top:-2.5px;"
              bind-click="auctionBtnClick"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link"
                xid="button6" icon="img:./images/3.png|" style="position:absolute;left:-20px;top:-20px;"
                bind-visible=" $model.data1.val(&quot;auction&quot;) ==1" auctionBtn="1"> 
                <i xid="i6"/>  
                <img src="./images/3.png" xid="image3"/>  
                <span xid="span6"/> 
              </a> 
            </div>  
            <div xid="endBtn" style="position:absolute;border-radius:50%;background-color:#EFEFEF;right:0px;height:6px;width:6px;top:-2.5px;"
              bind-click="endBtnClick"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link"
                xid="button7" icon="img:./images/4.png|" style="position:absolute;left:-20px;top:-20px;"
                bind-visible=" $model.data1.val(&quot;end&quot;) ==1" endBtn="1"> 
                <i xid="i7"/>  
                <img src="./images/4.png" xid="image4"/>  
                <span xid="span7"/> 
              </a> 
            </div> 
          </div>  
          <div xid="div25" style="margin:5% 0;padding:0px 10%;"> 
            <span xid="startText" style="width:32%;display:inline-block;" bind-css="{&quot;btnColor&quot;:$model.data1.val(&quot;start&quot;)==1}"><![CDATA[开个价]]></span>  
            <span xid="auctionText" style="width:32%;display:inline-block;text-align:center;"
              bind-css="{&quot;btnColor&quot;: $model.data1.val(&quot;auction&quot;)==1}"><![CDATA[拍卖]]></span>  
            <span xid="endText" style="width:32%;display:inline-block;text-align:right;"
              bind-css="{&quot;btnColor&quot;: $model.data1.val(&quot;end&quot;)==1}"><![CDATA[不开价]]></span> 
          </div> 
        </div>  
        <div xid="startDiv" bind-visible="$model.data1.val(&quot;start&quot;) ==1" style="display:none;margin:0 10px;"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1" style="border-bottom:1px solid #F5F5F5;border-top:1px solid #F5F5F5"> 
            <div class="x-col" xid="col2">
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2" style="padding:0"> 
                <label class="x-label" xid="label2"><![CDATA[价格]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.pageData.ref(&quot;price&quot;)" placeHolder="￥0.00"
                  style="border:0"/>
              </div>
            </div>  
            <div class="x-col x-col-10" xid="col3">
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
                label="button" xid="button2" icon="icon-chevron-right"> 
                <i xid="i9" class="icon-chevron-right"/>  
                <span xid="span12"/>
              </a>
            </div>
          </div>
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row2" style="border-bottom:1px solid #F5F5F5"> 
            <div class="x-col" xid="col4">
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3" style="padding:0"> 
                <label class="x-label" xid="label3"><![CDATA[分类]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="classify" placeHolder="请选择分类" style="border:0" bind-ref="$model.pageData.ref(&quot;kind&quot;)" disabled="true"/>
              </div>
            </div>  
            <div class="x-col x-col-10" xid="col5">
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
                label="button" xid="classifyBtn" icon="icon-chevron-right" onClick="classifyBtnClick"> 
                <i xid="i11" class="icon-chevron-right"/>  
                <span xid="span14"/>
              </a>
            </div> 
          </div>
        </div>  
        <div xid="auctionDiv" style="margin:0 10px;border-top:1px solid #EEEEEE;display:none;"
          bind-visible="$model.data1.val(&quot;auction&quot;) ==1"> 
          <p xid="p1" style="text-align:center;margin-top:20px;"><![CDATA[拍卖功能内测中，敬请期待！]]></p>  
          <p xid="p2" style="text-align:center;margin-bottom:20px;"><![CDATA[嘻嘻~很快就轮到你啦！]]></p> 
        </div>  
        <div xid="endDiv" style="height:60px;margin:0 10px;" bind-visible=" $model.data1.val(&quot;end&quot;)==1"> 
          <div xid="div22" overflow-x="scroll" overflow="hidden" style="padding:10px;width:100%;height:60px;"
            class="x-navbox"> 
            <span xid="span8" bind-click="span8Click"><![CDATA[求购]]></span>  
            <span xid="span15" bind-click="span15Click"><![CDATA[求点赞]]></span>  
            <span xid="span16" bind-click="span16Click"><![CDATA[只求一顿饭]]></span>  
            <!-- <span xid="span21"><![CDATA[本宫周末有空求约]]></span>
            <span xid="span22"><![CDATA[免费送]]></span>  
            <span xid="span23"><![CDATA[你开价]]></span>  
            <span xid="span24"><![CDATA[+自定义]]></span>  --> 
          </div> 
        </div>  
        <div xid="div18" style="height:10px;background-color:#EBEBEB;"/>
        <div xid="div3" style="margin:0 10px;"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row3" style="border-bottom:1px solid #F5F5F5;border-top:1px solid #F5F5F5"> 
            <div class="x-col" xid="col7"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4" style="padding:0"> 
                <label class="x-label" xid="label4"><![CDATA[鱼塘]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="fishpondInput" style="border:0" placeHolder="选择鱼塘，获得更多曝光" bind-ref="$model.pageData.ref(&quot;fishpondName&quot;)" disabled="true"/>
              </div> 
            </div>  
            <div class="x-col x-col-10" xid="col8"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
                label="button" xid="moreFishpond" icon="icon-chevron-right" onClick="moreFishpondClick"> 
                <i xid="i12" class="icon-chevron-right"/>  
                <span xid="span17"/>
              </a> 
            </div> 
          </div>
        </div> 
      </div>  
      <div xid="div17" style="padding:20px;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="确定发布" xid="publishBtn" style="background-color:#e4393c;border:none;width:100%;"
          onClick="publishBtnClick" bind-disable=" $model.data1.val(&quot;auction&quot;) ==1"> 
          <i xid="i2"/>  
          <span xid="span2">确定发布</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="fishpondDialog"
    src="./chooseFishpond.w" onReceive="fishpondDialogReceive" style="top:112px;left:216px;"/>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="classifyDialog"
    src="./classify.w" onReceive="classifyDialogReceive" style="top:118px;left:164px;"/>
</div>
