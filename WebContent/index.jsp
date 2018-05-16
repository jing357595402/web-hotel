<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
 
<link rel="icon" href="img2/timg-.ico" type="image/x-icon"/> 
<link rel="shortcut icon" href="img2/timg-.ico" type="image/x-icon"/> 

<title>老k酒店管理系统</title>
<style type="text/css">

<!--
body,td,th {
	font-family: 宋体;
	font-size: 9pt;
	color: ##6495ED;
}
body {
	
	background-color: #000000;
}
-->
</style>

<link href="<%=request.getContextPath() %>/css/css.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="<%=request.getContextPath() %>/js/function.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/prototype.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/lightbox.js"></script>
<script  langauge="javascript"  src="<%=request.getContextPath() %>/js/calendar.js"></script>
<script language="javascript" src="<%=request.getContextPath() %>/js/xmlHttpRequest.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/ajax.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/check.js"></script>

</head>

<body  topmargin="0" leftmargin="0" >
<div align="center">
  <%@include file="top.jsp" %>
  <table width="1003" height="222" border="0" cellpadding="0" cellspacing="0" background="img2/15.jpg">
    <tr>
      <td align="center" valign="top"><table width="964" height="194" border="0" cellpadding="0" cellspacing="0" background="img2/18.jpg">
        <tr>
          <td width="10" align="left" valign="top"><img src="img2/19.jpg" width="10" height="194" /></td>
          <td width="945" align="left" valign="top">
		  
		   <script language=javascript> 
var flashURL="<%=request.getContextPath() %>/fla/top.swf"; 
var flashWIDTH="945"; 
var flashHEIGHT="194"; 
</script> <script language=javascript src="<%=request.getContextPath() %>/js/flash_view.js"></script>
		  </td>
          <td width="9" align="right" valign="top"><img src="<%=request.getContextPath() %>/img2/17.jpg" width="9" height="194" /></td>
        </tr>
      </table>
        <table width="964" height="28" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><img src="<%=request.getContextPath() %>/img2/20.jpg" width="182" height="28" /></td>
            <td align="right" valign="middle">
			<font color="#593E34"><strong>今天是：</strong>
                  <script language=JavaScript>
today=new Date();
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i] }
var d=new initArray(
"星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六");
document.write(

today.getYear(),"年",
today.getMonth()+1,"月",
today.getDate(),"日",
d[today.getDay()+1],
"</font>" ); 
</script>
</font>
			
			
			
			</td>
          </tr>
        </table></td>
    </tr>
  </table>
  <table width="1003" height="10" border="0" cellpadding="0" cellspacing="0" bgcolor="FFF5CE">
    <tr>
      <td></td>
    </tr>
  </table>
   <table width="1003" height="10" border="0" cellpadding="0" cellspacing="0" background="img2/16.jpg" bgcolor="FFF5CE">
    <tr>
      <td width="267"  height="500" align="center" valign="top"><table width="233" height="46" border="0" cellpadding="0" cellspacing="0" background="<%=request.getContextPath() %>/img2/27.jpg">
          <tr>
            <td width="32">　</td>
            <td width="201" align="left" valign="top"><table width="180" height="38" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="left" valign="bottom"><strong>今日天气&nbsp;</strong></td>
              </tr>
            </table></td>
          </tr>
        </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/28.jpg" width="232" height="16" /></td>
          </tr>
        </table>
        <table width="232" height="106" border="0" cellpadding="0" cellspacing="0" background="img2/29.jpg">
          <tr>
			
        
          </tr>
        </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="<%=request.getContextPath() %>/img2/30.jpg" width="232" height="16" /></td>
          </tr>
        </table>
        <table width="233" height="46" border="0" cellpadding="0" cellspacing="0" background="<%=request.getContextPath() %>/img2/27.jpg">
          <tr>
            <td width="32">　</td>
            <td width="201" align="left" valign="top"><table width="180" height="38" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="left" valign="bottom"><strong>网站直通车&nbsp;</strong></td>
                </tr>
            </table></td>
          </tr>
        </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="<%=request.getContextPath() %>/img2/28.jpg" width="232" height="16" /></td>
          </tr>
        </table>
        <table width="232" height="223" border="0" cellpadding="0" cellspacing="0" background="img2/29.jpg">
          <tr>
            <td align="center" valign="top"><table width="208" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="left" valign="top"><img src="img2/40.jpg" width="208" height="9"></td>
                </tr>
                <tr>
                  <td height="60" align="center" valign="top" background="img2/41.jpg"><table width="195" height="56" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="87" rowspan="2" align="center" valign="middle"><img src="img3/05.jpg" width="83" height="53" /></td>
                        <td width="108" height="28" align="center" valign="middle">客房</td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle"><a href="kf.jsp" class="bb">&gt;&gt;&gt;点击查看</a></td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td align="left" valign="top"><img src="img2/42.jpg" width="208" height="6"></td>
                </tr>
              </table>
                <table width="217" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle"><img src="img2/39.jpg" width="217" height="12"></td>
                  </tr>
                </table>
              <table width="208" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="left" valign="top"><img src="img2/40.jpg" width="208" height="9"></td>
                  </tr>
                  <tr>
                    <td height="60" align="center" valign="top" background="img2/41.jpg"><table width="195" height="56" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="87" rowspan="2" align="center" valign="middle"><img src="img3/06.jpg" width="81" height="48" /></td>
                          <td width="108" height="28" align="center" valign="middle">会议室</td>
                        </tr>
                        <tr>
                          <td align="center" valign="middle"><a href="hyyh.jsp" class="bb">&gt;&gt;&gt;点击查看</a></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top"><img src="img2/42.jpg" width="208" height="6"></td>
                  </tr>
              </table>
              <table width="217" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle"><img src="img2/39.jpg" width="217" height="12"></td>
                  </tr>
              </table>
              <table width="208" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="left" valign="top"><img src="img2/40.jpg" width="208" height="9"></td>
                  </tr>
                  <tr>
                    <td height="60" align="center" valign="top" background="img2/41.jpg"><table width="195" height="56" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="87" rowspan="2" align="center" valign="middle"><img src="img3/07.jpg" width="81" height="48" /></td>
                          <td width="108" height="28" align="center" valign="middle">马可波罗西餐厅</td>
                        </tr>
                        <tr>
                          <td align="center" valign="middle"><a href="cyjb.jsp" class="bb">&gt;&gt;&gt;点击查看</a></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top"><img src="img2/42.jpg" width="208" height="6"></td>
                  </tr>
              </table>
              <table width="217" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle"><img src="img2/39.jpg" width="217" height="12"></td>
                  </tr>
              </table>
              <table width="208" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="left" valign="top"><img src="img2/40.jpg" width="208" height="9"></td>
                  </tr>
                  <tr>
                    <td height="60" align="center" valign="top" background="img2/41.jpg"><table width="195" height="56" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="87" rowspan="2" align="center" valign="middle"><img src="img/27.jpg" width="81" height="48" /></td>
                          <td width="108" height="28" align="center" valign="middle">西安花式酒店</td>
                        </tr>
                        <tr>
                          <td align="center" valign="middle"><a href="cyjb.jsp" class="bb">&gt;&gt;&gt;点击查看</a></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top"><img src="img2/42.jpg" width="208" height="6"></td>
                  </tr>
              </table>
              <br></td>
          </tr>
        </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/30.jpg" width="232" height="16" /></td>
          </tr>
        </table></td>
      <td width="469" align="center" valign="top"><table width="441" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="203" height="30" align="left" valign="middle"><strong>老k酒店简介</strong></td>
          <td width="238" align="right" valign="middle"><font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:6E4B25;">LK International Hotel</font></td>
        </tr>
      </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/31.jpg" width="441" height="10" /></td>
          </tr>
        </table>
        <table width="441" height="150" border="0" cellpadding="0" cellspacing="0" background="img2/32.jpg">
          <tr>
            <td align="center" valign="top">
			
        <table width="426" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="140" align="left" valign="top" style="line-height:22px">
            
            <P><FONT face=Verdana><FONT face=Verdana>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 老k酒店位于南京省软件谷，是一座集度假、会议、住宿、餐饮、娱乐、温泉洗浴等多功能为一体的园林别墅式酒店。曾多次接待中央及省、市领导。是您迎春踏青、消夏避暑、金秋赏月、冬觅清幽的上佳之选。
     酒店环境——仙人岛宾馆依林傍海，景色怡人，万亩槐林环抱之中，形成了天然氧吧，漫步林间，享受大自然带给您的清幽与恬淡。
     酒店餐饮——宾馆设大小包房7间，大厅可同时容纳100人就餐。融合多年接待国家首长经验，使得这里成为品尝本地海鲜、传统辽菜的好去处。 
</FONT></FONT><FONT face=Verdana><FONT face=Verdana>传统辽菜的好去处。......         
            
            
            </td>
          </tr>
          <tr>
            <td align="right" valign="top" style="line-height:22px"><img src="img/06.jpg" width="32" height="20" align="absmiddle" /><a href="fdjj.jsp" class="bb">查看详细信息</a></td>
          </tr>
        </table>
			
			
			</td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/33.jpg" width="441" height="10" /></td>
          </tr>
        </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>　</td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="203" height="30" align="left" valign="middle"><strong>客房展示</strong>&nbsp;</td>
            <td width="238" align="right" valign="middle"><a href="kf.jsp" class="bb">详细介绍</a></td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/31.jpg" width="441" height="10" /></td>
          </tr>
        </table>
        <table width="441" height="130" border="0" cellpadding="0" cellspacing="0" background="img2/32.jpg">
          <tr>
            <td align="center" valign="bottom">

 <script type="text/javascript">

//more javascript from http://www.smallrain.net
var baseopacity=30

function slowhigh(which2){
imgobj=which2
browserdetect=which2.filters? "ie" : typeof which2.style.MozOpacity=="string"? "mozilla" : ""
instantset(baseopacity)
highlighting=setInterval("gradualfade(imgobj)",50)
}

function slowlow(which2){
cleartimer()
instantset(baseopacity)
}

function instantset(degree){
if (browserdetect=="mozilla")
imgobj.style.MozOpacity=degree/100
else if (browserdetect=="ie")
imgobj.filters.alpha.opacity=degree
}

function cleartimer(){
if (window.highlighting) clearInterval(highlighting)
}

function gradualfade(cur2){
if (browserdetect=="mozilla" && cur2.style.MozOpacity<1)
cur2.style.MozOpacity=Math.min(parseFloat(cur2.style.MozOpacity)+0.1, 0.99)
else if (browserdetect=="ie" && cur2.filters.alpha.opacity<100)
cur2.filters.alpha.opacity+=10
else if (window.highlighting)
clearInterval(highlighting)
}

</script>
<DIV id=demo style="OVERFLOW: hidden; WIDTH:430px; HEIGHT:126px">
  <TABLE cellSpacing=0 cellPadding=0 border=0>
  
    <TBODY>
      <TR>
        <TD id=demo1>
		<table  height="126" width="511" border="0" cellpadding="0" cellspacing="0">
		 
			  
          <tr>
		  
		  	                 
          
          
            <td align="center"  valign="middle">
			
			<table width="156" height="104" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
              <tr>
                <td align="center" valign="middle" bgcolor="#FFF8DE"><a href="#"  title=""><img src="<%=request.getContextPath() %>/UpPic/2008111152144512.jpg" alt="豪华单人间" width="146" height="94" border="0" /></a></td>
              </tr>
            </table>
              <table width="105" height="24" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle"><a href="#"  class="aa">豪华单人间</a></td>
                </tr>
              </table>
			  </td>
              
                               
          
          
            <td align="center"  valign="middle">
			
			<table width="156" height="104" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
              <tr>
                <td align="center" valign="middle" bgcolor="#FFF8DE"><a href="#"  title=""><img src="<%=request.getContextPath() %>/UpPic/2008111151858887.jpg" alt="高级双人间" width="146" height="94" border="0" /></a></td>
              </tr>
            </table>
              <table width="105" height="24" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle"><a href="#"  class="aa">高级双人间</a></td>
                </tr>
              </table>
			  </td>
              
                               
          
          
            <td align="center"  valign="middle">
			
			<table width="156" height="104" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
              <tr>
                <td align="center" valign="middle" bgcolor="#FFF8DE"><a href="#"  title=""><img src="<%=request.getContextPath() %>/UpPic/200811115153249.jpg" alt="豪华套房" width="146" height="94" border="0" /></a></td>
              </tr>
            </table>
              <table width="105" height="24" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle"><a href="#"  class="aa">豪华套房</a></td>
                </tr>
              </table>
			  </td>
              
                               
          
          
            <td align="center"  valign="middle">
			
			<table width="156" height="104" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
              <tr>
                <td align="center" valign="middle" bgcolor="#FFF8DE"><a href="#"  title=""><img src="<%=request.getContextPath() %>/UpPic/200811685144279.jpg" alt="总统套房" width="146" height="94" border="0" /></a></td>
              </tr>
            </table>
              <table width="105" height="24" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle"><a href="#"  class="aa">总统套房</a></td>
                </tr>
              </table>
			  </td>
              
              
            
			  
			  
		
          </tr>
        </table></TD>
    <TD id=demo2></TD></TR></TBODY>
  </TABLE>
</DIV>

<SCRIPT>

var speed=20

demo2.innerHTML=demo1.innerHTML

function Marquee(){

if(demo2.offsetWidth-demo.scrollLeft<=0)

 demo.scrollLeft-=demo1.offsetWidth

else{

 demo.scrollLeft++  
}  

}

var MyMar=setInterval(Marquee,speed)

demo.onmouseover=function(){clearInterval(MyMar)}

demo.onmouseout=function(){MyMar=setInterval(Marquee,speed)}

  </SCRIPT>
</td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/33.jpg" width="441" height="10" /></td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10" align="left" valign="middle"></td>
          </tr>
        </table>
        
		
		
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="203" height="30" align="left" valign="middle"><strong>最新动态</strong>&nbsp;</td>
            <td width="238" align="right" valign="middle"><a href="#" class="bb">更多信息</a></td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/31.jpg" width="441" height="10" /></td>
          </tr>
        </table>
        <table width="441" height="150" border="0" cellpadding="0" cellspacing="0" background="img2/32.jpg">
          <tr>
            <td align="center" valign="top"><table width="428" height="175" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="left" valign="top">
				
				

                
                    
                    
                    <table width="420" height="28" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="27"  align="center" valign="middle"><img src="img/iecool_arrow_204.gif" width="14" height="11" /></td>
                          <td width="372"  align="left" valign="middle"><a href="#" class="bb"  title="酒店饭店网站管理系统正式版源码">
                                                       老k酒店管理系统</a>
                         
                    
                          </td>
                          <td width="101"  align="center" valign="middle">2017-9-15</td>
                        </tr>
                        <tr>
                          <td height="1" colspan="3"  bgcolor="#DCCA9C"></td>
                        </tr>
                    </table>
                      
                      
                      
                    
                      
                      
                      
                      
                      
                      
                          
                       
                       <table width="420" height="28" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="27"  align="center" valign="middle"><img src="img/iecool_arrow_204.gif" width="14" height="11" /></td>
                          <td width="372"  align="left" valign="middle"><a href="#" class="bb"  title="酒店宾馆网站模板下载酒店，宾馆网站管理系统，酒店，宾馆网站源码">
                                                      老k酒店管理系统
                          </a></td>
                          <td width="101"  align="center" valign="middle">2017-9-20</td>
                        </tr>
                        <tr>
                          <td height="1" colspan="3"  bgcolor="#DCCA9C"></td>
                        </tr>
                      </table>
                       
                       
                       
                       
                       
                                     
				
				      
                       
                       <table width="420" height="28" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="27"  align="center" valign="middle"><img src="img/iecool_arrow_204.gif" width="14" height="11" /></td>
                          <td width="372"  align="left" valign="middle"><a href="#" class="bb"  title="酒店宾馆网站模板下载酒店，宾馆网站管理系统，酒店，宾馆网站源码">
                                                      老k酒店管理系统
                          </a></td>
                          <td width="101"  align="center" valign="middle">2017-9-26</td>
                        </tr>
                        <tr>
                          <td height="1" colspan="3"  bgcolor="#DCCA9C"></td>
                        </tr>
                      </table>
                       
             
             
                     <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="203" height="30" align="left" valign="middle"><strong>触动你心灵的视频</strong>&nbsp;</td>
          </tr>
          </table>
				
             
             
                       
                        <table cellpadding="0" cellspacing="0" class="cTable">
                                                     <td>
                                <object id="NSPlay" width=400 height=300 classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95" codebase="" standby="Loading Microsoft Windows Media Player components..." type="application/x-oleobject" align="right" hspace="5">
                                    <param name="AutoRewind" value=1>
                                    <param name="FileName" value="img/2017.10.03-19.44.25.mp4">
                                    <param name="ShowControls" value="1">
                                    <param name="ShowPositionControls" value="0">
                                    <param name="ShowAudioControls" value="1">
                                    <param name="ShowTracker" value="0">
                                    <param name="ShowDisplay" value="0">
                                    <param name="ShowStatusBar" value="0">
                                    <param name="ShowGotoBar" value="0">
                                    <param name="ShowCaptioning" value="0">
                                    <param name="AutoStart" value=1>
                                    <param name="Volume" value="-2500">
                                    <param name="AnimationAtStart" value="0">
                                    <param name="TransparentAtStart" value="0">
                                    <param name="AllowChangeDisplaySize" value="0">
                                    <param name="AllowScan" value="0">
                                    <param name="EnableContextMenu" value="0">
                                    <param name="ClickToPlay" value="0">
                                </object>
                                </td>
                   </table>    
                                     
				
		
				</td>
              </tr>
            </table></td>
          </tr>
        </table>
      </td>
      <td width="267" align="center" valign="top"><table width="233" height="46" border="0" cellpadding="0" cellspacing="0" background="img2/27.jpg">
        <tr>
          <td width="32">　</td>
          <td width="201" align="left" valign="top"><table width="180" height="38" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="left" valign="bottom"><strong>特惠精选&nbsp;</strong>&nbsp;<a href="#" class="bb">更多信息</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/28.jpg" width="232" height="16" /></td>
          </tr>
        </table>
        <table width="232" height="163" border="0" cellpadding="0" cellspacing="0" background="img2/29.jpg">
          <tr>
            <td height="163" align="center" valign="top">
              <table width="200" height="200" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="top"><table width="191" height="190" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="190" align="left" valign="top" style="line-height:22px"><marquee direction="up" scrollamount="1" scrolldelay="4" onMouseOver="this.stop();" onMouseOut="this.start();" width="190" height="190">
                            <font color="#666F58">
                             
  客房推广  放鞭炮，洗温泉，红红火火过中秋  国庆客房大礼包   高级客房￥399元/间 可享受优惠：  
 
 每间房赠送3位早餐 
 房间内24小时温泉泡泡浴或花花浴 
 每间房赠送10元红包一个 
 凭房卡免费使用健身房 
 推广期自2008年2月6日至2008年2月15日 
 推广活动的最终解释权归饭店所有   高级客房￥499元/间可享受优惠：  
 
 每间房赠送3位早餐 
 房间内24小时温泉泡泡浴或花花浴 
 每间房赠送10元红包一个和房间内赠送红枣、花生等新年赠品 
 免费赠送马可波罗西餐厅代金券100元，有效期一个月 
 凭房卡免费使用健身房 
 推广期自2008年2月6日至2008年2月15日 
 推广活动的最终解释权归饭店所有  
  马可波罗西餐厅推广  
 
 从2017年10月1日至2017年10月9日，推出国庆中秋自助早午合并餐，每位58元，住店客人每位48元，1.2米以下儿童30元/位。   
  中秋套餐  
 
 ￥118元/2位￥178元/3位￥238元/4位￥358元/6人  
  中秋集装箱  
 
 中秋食品集装箱368元/箱，台湾热带水果集装箱298元/箱   

 赠送巧克力一桶、玫瑰一支、曲奇饼一桶、国产红酒一瓶和心型蛋糕 
 客房送餐免收服务费      
                          </font></marquee></td>
                        </tr>
                    </table></td>
                </tr>
              </table>
			  
            </td>
          </tr>
        </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/30.jpg" width="232" height="16" /></td>
          </tr>
        </table>
        <table width="233" height="46" border="0" cellpadding="0" cellspacing="0" background="img2/27.jpg">
          <tr>
            <td width="32">　</td>
            <td width="201" align="left" valign="top"><table width="197" height="38" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="left" valign="bottom"><strong>员工天地&nbsp;</strong>&nbsp;<a href="#" class="bb">更多信息</td>
                </tr>
            </table></td>
          </tr>
        </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/28.jpg" width="232" height="16" /></td>
          </tr>
        </table>
        <table width="232" border="0" cellpadding="0" cellspacing="0" background="img2/29.jpg">
          <tr>
            <td align="center" valign="top"><table width="208" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="168" align="center" valign="middle"><table border="0" cellpadding="0" cellspacing="5" bgcolor="#FEEEB3">
                        <tr>
					
                    <td height="73" align="center" valign="middle" bgcolor="#FFFFFF">
					
					
					
					
					<img src="<%=request.getContextPath() %>/UpPic/20083822370360.jpg" width="194" height="144"></td>
                  </tr>
                </table>
				</td>
              </tr>
              <tr>
                <td height="25">【员工精英】<a href="#" class="bb">员工精英</a></td>
              </tr>
			  
            </table>
              <table width="217" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center" valign="middle"><img src="<%=request.getContextPath() %>/img2/39.jpg" width="217" height="12"></td>
                </tr>
              </table>
			  
			        
                      
                      
                      
                      <table width="214" height="28" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="24" height="28" align="center" valign="middle"><img src="img/iecool_arrow_204.gif" width="14" height="11" /></td>
                            <td width="190" height="28" align="left" valign="middle"><a href="#" class="aa"  title="酒店饭店网站管理系统正式版源">
                                                            老k酒店管理系统</a></td>
                        </tr>
              </table>
                        
                              
                      
                      
                      
                      <table width="214" height="28" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="24" height="28" align="center" valign="middle"><img src="img/iecool_arrow_204.gif" width="14" height="11" /></td>
                            <td width="190" height="28" align="left" valign="middle"><a href="#" class="aa"  title="酒店宾馆网站系统模板正式版">
                                                           老k酒店管理系统</a></td>
                        </tr>
              </table>
                        
                              
                      
                      
                      
                      <table width="214" height="28" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="24" height="28" align="center" valign="middle"><img src="img/iecool_arrow_204.gif" width="14" height="11" /></td>
                            <td width="190" height="28" align="left" valign="middle"><a href="#" class="aa"  title="酒店饭店网站管理系统正式版源码">
                                                          老k酒店管理系统</a></td>
                        </tr>
              </table>
                        
                              
                      
                      
                      
                      <table width="214" height="28" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="24" height="28" align="center" valign="middle"><img src="img/iecool_arrow_204.gif" width="14" height="11" /></td>
                            <td width="190" height="28" align="left" valign="middle"><a href="#" class="aa"  title="asp通用酒店宾馆网站管理系统宾馆酒店模板下载版，酒店宾馆网站自助建站管理系统源码">
                                                            老k酒店管理系统</a></td>
                        </tr>
              </table>
                        
                              
                      
                      
                      
                      <table width="214" height="28" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="24" height="28" align="center" valign="middle"><img src="img/iecool_arrow_204.gif" width="14" height="11" /></td>
                            <td width="190" height="28" align="left" valign="middle"><a href="#" class="aa"  title="酒店饭店网站管理系统正式版源码">
                                                            老k酒店管理系统</a></td>
                        </tr>
              </table>
                        
                              
                      
                      
                      
                      <table width="214" height="28" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="24" height="28" align="center" valign="middle"><img src="img/iecool_arrow_204.gif" width="14" height="11" /></td>
                            <td width="190" height="28" align="left" valign="middle"><a href="#" class="aa"  title="酒店饭店网站管理系统正式版源码">
                                                               老k酒店管理系统</a></td>
                        </tr>
              </table>
                        
                        		    </td>
          </tr>
        </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="img2/30.jpg" width="232" height="16" /></td>
          </tr>
        </table>
		<a href="" target="_blank"></a>  
		<a href="" target="_blank"></a>    </td>
    </tr>
  </table>
   <table width="1003" height="10" border="0" cellpadding="0" cellspacing="0" bgcolor="FFF5CE">
    <tr>
      <td></td>
    </tr>
  </table>
  
<table width="1003" border="0" cellpadding="0" cellspacing="0" bgcolor="#000000">
    <tr>
      <td width="1005" height="1" bgcolor="622700"></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="4E0000" ><font color="#ffffff"><font style="font-family:Arial, Helvetica, sans-serif">Copyright &copy; 2008 Nanjing International Hotel.
</font></font></td>
    </tr>
    <tr>
      <td height="75" align="center" valign="middle" >
      <%@ include file="foot.jsp" %>
      </td>
    </tr>
  </table>
			 
</div>
<script language="javascript">

	function checkyd()
	
		{
			if (form2.rz.value=="")
			
				{
					alert("抵点日期不能为空");
					
					form2.rz.focus();
					
					return false;	
				}
				
				
			if (form2.js.value=="")
			
				{
					alert("离店日期不能为空");
					
					form2.js.focus();
					
					return false;	
				}
				
			if (form2.js.value<form2.rz.value)	
				{
				  alert("离店日期应大于抵点日期");
					
					form2.js.focus();
					
					return false;	

				
				
				}
	
				
					
			if (trim(form2.fjrs.value)=="")
			
				{
					alert("人数不能为空");
					
					form2.fjrs.focus();
					
					return false;	
				}
				
				if (!IsNum(form2.fjrs.value))
			
				{
					alert("人数有非数字字符");
					
					form2.fjrs.focus();
					
					return false;	
				}
				
			
				
			if (trim(form2.kanum.value)=="")
			
				{
					alert("会员卡号不能为空");
					
					form2.kanum.focus();
					
					return false;	
				}	
				
				if (trim(form2.kapwd.value)=="")
			
				{
					alert("密码不能为空");
					
					form2.kapwd.focus();
					
					return false;	
				}
				
				
				
	
		return true;
	
	}

</script>

</body>
</html>