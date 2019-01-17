<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:342px;left:332px;"
    onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="detailData" idColumn="id">
      <column name="id" type="String" xid="xid1"></column>
  <column name="userId" type="String" xid="xid2"></column>
  <column name="title" type="String" xid="xid3"></column>
  <column name="description" type="String" xid="xid4"></column>
  <column name="image1" type="String" xid="xid5"></column>
  <column name="image2" type="String" xid="xid6"></column>
  <column name="image3" type="String" xid="xid7"></column>
  <column name="price" type="String" xid="xid8"></column>
  <column name="kind" type="String" xid="xid9"></column>
  <column name="reverse" type="String" xid="xid10"></column>
  <column name="createTime" type="String" xid="xid11"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="宝贝详情"
        class="x-titlebar" style="background-color:#F5F5F5;color:#333;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="backBtnClick"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">宝贝详情</div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            xid="button2" icon="icon-ios7-information-outline"> 
            <i xid="i2" class="icon-ios7-information-outline"/>  
            <span xid="span2"/>
          </a>
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            xid="button1" icon="icon-share"> 
            <i xid="i1" class="icon-share"/>  
            <span xid="span1"/>
          </a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div xid="div2" style="background-color:white;">
        <div xid="div9" style="padding:0 8px;">
   <div class="media" xid="media2">
    <div class="media-left" xid="mediaLeft2">
     <img src="./images/audio2.png" alt="" xid="image18" class="img-rounded media-object " style="width:36px;margin-top:8px;"></img></div> 
    <div class="media-body" xid="mediaBody2">
     <h5 xid="h53" bind-text='$model.detailData.ref("userId")' style="margin-bottom:0;color:#000000;"></h5>
     <span xid="span7" style="font-size:x-small;" bind-text='$model.timeTrans()'></span></div> 
    <div class="media-right" xid="mediaRight1">
     
     <span xid="span9" style="display:block;font-size:xx-small;margin:8px 0 4px 0;">一口价</span><h5 xid="h54" bind-text='"￥"+$model.detailData.val("price")' style="color:#FF0000;margin-top:0;"></h5>
  </div> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row6"> 
          <div class="x-col" xid="col18">
            <span xid="span11" bind-text="$model.detailData.ref(&quot;description&quot;)"><![CDATA[]]></span>
          </div>
        </div>
        <div component="$UI/system/components/justep/row/row" class="x-row x-row-center"
          xid="row7" style="color:#2FA4E7;font-size:xx-small;"> 
          <div class="x-col" xid="col19">
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs"
              label="来自" xid="button6" icon="linear linear-mapmarker"> 
              <i xid="i6" class="linear linear-mapmarker"/>  
              <span xid="span12">来自</span>
            </a>  
            <span xid="span13"><![CDATA[杭州]]></span>  
            <span xid="span16"><![CDATA[鱼塘|]]></span>
            <span xid="span14"><![CDATA[顺发旺角城]]></span> 
          </div>  
          <div class="x-col" xid="col21" style="text-align:right;">
            <span xid="span15"><![CDATA[担保交易]]></span>
          </div>
        </div>
        <div xid="div10" style="padding:10px;"><img alt="" xid="image2" bind-attr-src="$model.transUrl(detailData.val('image1'),detailData.val('id'))" class="img-responsive" style="margin-bottom:6px;"/><img src="" alt="" xid="image15" bind-attr-src="$model.transUrl(detailData.val('image2'),detailData.val('id'))" class="img-responsive" style="margin-bottom:6px;"></img><img src="" alt="" xid="image16" bind-attr-src="$model.transUrl(detailData.val('image3'),detailData.val('id'))" class="img-responsive"></img></div><div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row8" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EFEFEF;"> 
          <div class="x-col" xid="col4">
            <img src="./images/2.png" alt="" xid="image7"/>
            <span xid="span18" style="color:#2FA4E7;"><![CDATA[56]]></span>  
            <span xid="span19" style="color:#2FA4E7;"><![CDATA[人点赞]]></span>
          </div>  
          <div class="x-col" xid="col7" style="color:#aaa;text-align:right;">
            <span xid="span20"><![CDATA[5218]]></span>  
            <span xid="span21"><![CDATA[人浏览]]></span>
          </div>
        </div> 
      </div>
      <div xid="div3" style="margin-top:10px;background-color:white;">
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row10"> 
          <div class="x-col" xid="col14">
            <span xid="span22"><![CDATA[热门留言]]></span>  
            <span xid="span23"><![CDATA[（28）]]></span>
          </div> 
        </div>  
        <div xid="div5" style="border-top:1px solid #f0f0f0;">
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row11"> 
            <div class="x-col" xid="col17">
              <img src="./images/4.png" alt="" xid="image3"/>  
              <span xid="span24"><![CDATA[cly5201314spmu]]></span>
            </div>  
            <div class="x-col" xid="col29" style="text-align:right;">
              <span xid="span26" style="color:#aaa;"><![CDATA[10小时前]]></span>
            </div>
          </div>
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row13"> 
            <div class="x-col" xid="col26">
              <span xid="span25"><![CDATA[圈上刻得的是什么？多少克的？]]></span>
            </div> 
          </div>
        </div>  
        <div xid="div6" style="border-top:1px solid #f0f0f0;"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row22"> 
            <div class="x-col" xid="col12"> 
              <img src="./images/4.png" alt="" xid="image8"/>  
              <span xid="span38"><![CDATA[q425816]]></span>
            </div>  
            <div class="x-col" xid="col11" style="text-align:right;"> 
              <span xid="span39" style="color:#aaa;"><![CDATA[22小时前]]></span>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row23"> 
            <div class="x-col" xid="col15"> 
              <span xid="span17"><![CDATA[换护肤品？]]></span>
            </div> 
          </div> 
        </div>  
        <div xid="div7" style="border-top:1px solid #f0f0f0;"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row24"> 
            <div class="x-col" xid="col23"> 
              <img src="./images/4.png" alt="" xid="image9"/>  
              <span xid="span42"><![CDATA[陈家宝贝4]]></span>
            </div>  
            <div class="x-col" xid="col24" style="text-align:right;"> 
              <span xid="span40" style="color:#aaa;"><![CDATA[1天前]]></span>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row25"> 
            <div class="x-col" xid="col16"> 
              <span xid="span41"><![CDATA[回复@q425816：在的，亲]]></span>
            </div> 
          </div> 
        </div>  
        <div xid="div8" style="border-top:1px solid #f0f0f0;"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row26"> 
            <div class="x-col" xid="col30"> 
              <img src="./images/4.png" alt="" xid="image10"/>  
              <span xid="span45"><![CDATA[唯美而已544]]></span>
            </div>  
            <div class="x-col" xid="col27" style="text-align:right;"> 
              <span xid="span44" style="color:#aaa;"><![CDATA[1天前]]></span>
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row27"> 
            <div class="x-col" xid="col25"> 
              <span xid="span43"><![CDATA[回复@q425816：还有个刻字的金戒指买来多少钱，我也有一个]]></span>
            </div> 
          </div> 
        </div>
      </div>
      <div xid="div1" style="margin-top:10px;">
        <span xid="span27" style="margin-left:10px;"><![CDATA[猜你喜欢]]></span>
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row12"> 
          <div class="x-col x-col-47" xid="col5" style="background-color:white;margin:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row14"> 
              <div class="x-col" xid="col20">
                <img src="./images/main_bn (4).png" alt="" xid="image4" style="width:100%;"/>
              </div>
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row15"> 
              <div class="x-col" xid="col22">
                <span xid="span28"><![CDATA[绑定的标题(卖柜子)]]></span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row16"> 
              <div class="x-col" xid="col28">
                <span xid="span29" style="color:#e4393c;font-weight:bold;"><![CDATA[￥]]></span>  
                <span xid="span30" style="color:#e4393c;font-weight:bold"><![CDATA[299]]></span>
              </div>
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row17"> 
              <div class="x-col" xid="col32">
                <span xid="span31" style="color:#aaa;"><![CDATA[0赞]]></span>
                <span xid="span32" style="color:#aaa;"><![CDATA[0评论]]></span>
              </div>
            </div>
          </div>  
          <div class="x-col x-col-47" xid="col37" style="background-color:white;margin:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row20"> 
              <div class="x-col" xid="col36"> 
                <img src="./images/pic4.png" alt="" xid="image5" style="width:100%;"/>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row18"> 
              <div class="x-col" xid="col34"> 
                <span xid="span34"><![CDATA[毛衣显瘦]]></span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row19"> 
              <div class="x-col" xid="col33"> 
                <span xid="span33" style="color:#e4393c;font-weight:bold;">￥</span>  
                <span xid="span35" style="color:#e4393c;font-weight:bold"><![CDATA[186]]></span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row21"> 
              <div class="x-col" xid="col35"> 
                <span xid="span37" style="color:#aaa;"><![CDATA[10赞]]></span>  
                <span xid="span36" style="color:#aaa;"><![CDATA[5评论]]></span>
              </div> 
            </div> 
          </div>
        </div>  
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row28"> 
          <div class="x-col x-col-47" xid="col43" style="background-color:white;margin:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row31"> 
              <div class="x-col" xid="col42"> 
                <img src="./images/main_bn (4).png" alt="" xid="image12" style="width:100%;"/>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row29"> 
              <div class="x-col" xid="col45"> 
                <span xid="span47">绑定的标题(卖柜子)</span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row30"> 
              <div class="x-col" xid="col44"> 
                <span xid="span46" style="color:#e4393c;font-weight:bold;">￥</span>  
                <span xid="span48" style="color:#e4393c;font-weight:bold">299</span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row35"> 
              <div class="x-col" xid="col46"> 
                <span xid="span53" style="color:#aaa;">0赞</span>  
                <span xid="span52" style="color:#aaa;">0评论</span>
              </div> 
            </div> 
          </div>  
          <div class="x-col x-col-47" xid="col31" style="background-color:white;margin:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row32"> 
              <div class="x-col" xid="col38"> 
                <img src="./images/pic4.png" alt="" xid="image11" style="width:100%;"/>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row36"> 
              <div class="x-col" xid="col40"> 
                <span xid="span54">毛衣显瘦</span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row34"> 
              <div class="x-col" xid="col41"> 
                <span xid="span55" style="color:#e4393c;font-weight:bold;">￥</span>  
                <span xid="span50" style="color:#e4393c;font-weight:bold">186</span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row33"> 
              <div class="x-col" xid="col39"> 
                <span xid="span51" style="color:#aaa;">10赞</span>  
                <span xid="span49" style="color:#aaa;">5评论</span>
              </div> 
            </div> 
          </div> 
        </div>  
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row37"> 
          <div class="x-col x-col-47" xid="col53" style="background-color:white;margin:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row40"> 
              <div class="x-col" xid="col52"> 
                <img src="./images/main_bn (4).png" alt="" xid="image14" style="width:100%;"/>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row38"> 
              <div class="x-col" xid="col55"> 
                <span xid="span57">绑定的标题(卖柜子)</span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row39"> 
              <div class="x-col" xid="col54"> 
                <span xid="span56" style="color:#e4393c;font-weight:bold;">￥</span>  
                <span xid="span58" style="color:#e4393c;font-weight:bold">299</span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row44"> 
              <div class="x-col" xid="col56"> 
                <span xid="span63" style="color:#aaa;">0赞</span>  
                <span xid="span62" style="color:#aaa;">0评论</span>
              </div> 
            </div> 
          </div>  
          <div class="x-col x-col-47" xid="col47" style="background-color:white;margin:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row41"> 
              <div class="x-col" xid="col48"> 
                <img src="./images/pic4.png" alt="" xid="image13" style="width:100%;"/>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row45"> 
              <div class="x-col" xid="col50"> 
                <span xid="span64">毛衣显瘦</span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row43"> 
              <div class="x-col" xid="col51"> 
                <span xid="span65" style="color:#e4393c;font-weight:bold;">￥</span>  
                <span xid="span60" style="color:#e4393c;font-weight:bold">186</span>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row42"> 
              <div class="x-col" xid="col49"> 
                <span xid="span61" style="color:#aaa;">10赞</span>  
                <span xid="span59" style="color:#aaa;">5评论</span>
              </div> 
            </div> 
          </div> 
        </div>
      </div>
      <div xid="div4" style="margin:5px;">
        <img src="./images/goods_detail_bottom.png" alt="" xid="image6" style="width:100%;"/>
      </div>
    </div>  
    <div class="x-panel-bottom" xid="bottom2" height="52">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group"
        tabbed="true" xid="buttonGroup2" style="width:100%;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          xid="button5" icon="e-commerce e-commerce-xiaoxi" style="color:#333;" label="留言"> 
          <i xid="i5" class="e-commerce e-commerce-xiaoxi"/>  
          <span xid="span5">留言</span>
        </a>
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="点赞" xid="button4" icon="linear linear-earth" style="color:#333;"> 
          <i xid="i4" class="linear linear-earth"/>  
          <span xid="span4">点赞</span>
        </a>
        <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right"
          label="我想要" xid="wantBtn" style="color:#fff;line-height:32px;background-color:#e4393c;width:147px;"
          onClick="wantBtnClick" bind-visible="$model.isOrNotVisible()"> 
          <i xid="i3"/>  
          <span xid="span3">我想要</span>
        </a>
      </div>
    </div>
  </div> 
</div>
