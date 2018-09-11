<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/admin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/web/css/style2.css" />
    <script src="${pageContext.request.contextPath}/web/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/web/js/pintuer.js"></script>
    <script src="${pageContext.request.contextPath }/web/editor/kindeditor.js"></script>
    <script src="${pageContext.request.contextPath }/web/js/jquery-1.8.3.min.js"></script>
    
<style>
.wz1{
  position:absolute;
  right:545px;
  top:50px;
}
.wz2{
  position:absolute;
  right:20px;
  top:50px;
}
.wz3{
  position:absolute;
  right:350px;
  top:50px;
}
.wz4{
  position:absolute;
  left:270px;
  top:50px;
}
</style>

<script type="text/javascript">
KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
</script>

<script>
function showRemark(num){
 if(num==1){
 
  $("#div1").css("display","block");
  $("#div2").css("display","none");
  $("#div3").css("display","none");
  $("[name='note1']").attr("id","content7");
  $("[name='note2']").removeAttr("id");
  $("[name='note3']").removeAttr("id");
  
  }
  if(num==2){
  $("#div1").css("display","none");
  $("#div2").css("display","block");
  $("#div3").css("display","none");
  $("[name='note1']").removeAttr("id");
  $("[name='note2']").attr("id","content7");
  $("[name='note3']").removeAttr("id");
  }
  if(num==3){
  $("#div1").css("display","none");
  $("#div2").css("display","none");
  $("#div3").css("display","block");
  $("[name='note1']").removeAttr("id");
  $("[name='note2']").removeAttr("id");
  $("[name='note3']").attr("id","content7");
  }
}
</script>

<script>
function showAnswer(num){
  if($("#cl"+num).val()=="问答型"){
   $("#answer").css("display","none");
   $("#anDiv"+num).css("display","block");
   for(var i=1;i<4;i++){
    if(i!=num){
     $("#anDiv"+i).css("display","none");
    }
   }

 }else{
  $("#anDiv1").css("display","none");
  $("#anDiv2").css("display","none");
  $("#anDiv3").css("display","none");
  $("#answer").css("display","block");
  $("#answer").html($("#ta"+num).html());
 }
}
</script>

<script>
function changeSearch1(){
  $("#frm").submit();
}
</script>

<script>
function changeSearch2(){
  $("#frm").submit();
}
</script>

<script>
$(function(){
   var hidden=$("#hi1").val();
  $("#sid option").each(function(){
    if($(this).val()==hidden){
      $(this).attr("selected","selected");
    }
  });
});
</script>

<script>
$(function(){
  var hidden=$("#hi2").val();
  $("#roo option").each(function(){
    if($(this).val()==hidden){
      $(this).attr("selected","selected");
    }
  });
});
</script>

<script>
$(function(){
  var hidden=$("#hi3").val();
  $("#clazz option").each(function(){
    if($(this).val()==hidden){
      $(this).attr("selected","selected");
    }
  });
});
</script>

<script type="text/javascript">
$(function(){
	var hidden=$("input[name='hidden']").val();
	$("input[name='title']").val(hidden);
	
	$("[name='xunlian']").click(function(){
		$("#frm").submit();
	});
});
</script>

<script>
$(function(){
  if($("#msg").val()!=""){
    alert($("#msg").val());
  }
});
</script>

</head>
<body>
<!--  -->
<input type="hidden" id="cl1" value="${que1.qcet}"/>
<input type="hidden" id="cl2" value="${que2.qcet}"/>
<input type="hidden" id="cl3" value="${que3.qcet}"/>
<!--  -->
<textarea style="display:none;" id="ta1">
${que1.answer}
</textarea>

<textarea style="display:none;" id="ta2">
${que2.answer}
</textarea>

<textarea style="display:none;" id="ta3">
${que3.answer}
</textarea>
<!--  -->
<input type="hidden" id="msg" value="${msg}"/>
<form method="post" action="${pageContext.request.contextPath }/showQue.do" id="frm">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 问答训练</strong></div>
    <div class="padding border-bottom">
      <ul class="search" style="height:50px;">
      
      <div class="wz4">
      <if condition="$iscid eq 1">
          <li>
            <select name="t_class" id="clazz" class="input" style="width:130px; line-height:17px;" onchange="changeSearch1();">
              <option value="#">问答型</option>            
            </select>
            <input type="hidden" id="hi3" value="#"/>
          </li>
        </if>
      </div>
      
      <div class="wz1">
	  <if condition="$iscid eq 1">
          <li>
            <select name="s_id" id="sid" class="input" style="width:160px; line-height:17px;" onchange="changeSearch1();">
              <option value="#">能力训练</option>
            </select>
            <input type="hidden" id="hi1" value="#"/>
          </li>
        </if>
       </div>
       
       <div class="wz3">
	  <if condition="$iscid eq 1">
          <li>
            <select name="root" class="input" id="roo" style="width:180px; line-height:17px;" onchange="changeSearch2();">
              <option value="#">逻辑思维能力测试网</option>
            </select>
            <input type="hidden" id="hi2" value="#"/>
          </li>
        </if>
       </div>

       <div class="wz2">
        <a href="javascript:void(0)" class="button border-main icon-search" name="xunlian">继续训练</a>
        </div>
        
      </ul>
    </div>
    <div class="body-content">
      <div class="form-group">
        <div class="label">
          <label>题一：</label>
        </div>
        <div class="field">
          <textarea  class="input" name="note" style=" height:90px;" readOnly>${que1.qcet}</textarea>
          <div class="tips"></div>
        </div>
        <br/>
        <a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="showRemark(1);">答题</a>
        <a href="javascript:void(0)" name="win1" class="button border-green icon-check" style="padding:5px 15px;" onclick="showAnswer(1);">答案</a>
      </div>    
      
      <div class="form-group" style="display:none;" id="div1">
        <div class="label">
          <label>答题：</label>
        </div>
        <div class="field">
          <textarea class="input" name="note1" style=" height:350px;width:1000px;"></textarea>
          <div class="tips"></div>
        </div>
      </div>    
      
      <div class="form-group">
        <div class="label">
          <label>题二：</label>
        </div>
        <div class="field">
          <textarea class="input" name="note2" style=" height:90px;"readOnly>${que2.qcet}</textarea>
          <div class="tips"></div>
        </div>
      </div>  
      <br/>
        <a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="showRemark(2);">答题</a>
        <a href="javascript:void(0)" name="win2" class="button border-green icon-check" style="padding:5px 15px;" onclick="showAnswer(2);">答案</a>  
    </div>
    
    <div class="form-group" style="display:none;"id="div2">
        <div class="label">
          <label>答题：</label>
        </div>
        <div class="field">
          <textarea class="input" name="note3" style=" height:350px;width:1000px;"></textarea>
          <div class="tips"></div>
        </div>
      </div> 
      
      <div class="body-content">
      <div class="form-group">
        <div class="label">
          <label>题三：</label>
        </div>
        <div class="field">
          <textarea class="input" name="note" style=" height:90px;" readOnly>${que3.qcet}</textarea>
          <div class="tips"></div>
        </div>
        <br/>
        <a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="showRemark(3);">答题</a>
        <a href="javascript:void(0)" name="win3" class="button border-green icon-check" style="padding:5px 15px;" onclick="showAnswer(3);">答案</a>
      </div>    
      
      <div class="form-group" style="display:none;" id="div3">
        <div class="label">
          <label>答题：</label>
        </div>
        <div class="field">
          <textarea class="input" name="note" style=" height:350px;width:1000px;"></textarea>
          <div class="tips"></div>
        </div>
      </div>       
  </div>
</form>

<!-- 弹窗效果 -->
<div class="popup" id="popup">

	<div class="top_nav" id='top_nav'>
		<div align="center">
			<i></i>
			<span>答案</span>
			<a class="guanbi"></a>
		</div>
	</div>
	
	<div class="min" id="xian">
	   <!-- 显示问答型 -->
	    <div id="anDiv1"  style="height:400px; border:1px solid #ddd;display:none;">${que1.answer}</div>
	    <div id="anDiv2"  style="height:400px; border:1px solid #ddd;display:none;">${que2.answer}</div>
	    <div id="anDiv3"  style="height:400px; border:1px solid #ddd;display:none;">${que3.answer}</div>
        <textarea id="answer" class="input" style="height:300px;width:780px;display:none;" readOnly></textarea>
	</div>
</div>
</body>

  
<script type="text/javascript">
//窗口效果
//点击登录class为tc 显示
$("[name='win1']").click(function(){
	$("#popup").show();//查找ID为popup的DIV show()显示#gray
	tc_center();
});

$("[name='win2']").click(function(){
	$("#popup").show();//查找ID为popup的DIV show()显示#gray
	tc_center();
});

$("[name='win3']").click(function(){
	$("#popup").show();//查找ID为popup的DIV show()显示#gray
	tc_center();
});

//点击关闭按钮
$("a.guanbi").click(function(){
	$("#popup").hide();//查找ID为popup的DIV hide()隐藏
})

//窗口水平居中
$(window).resize(function(){
	tc_center();
});

function tc_center(){
	var _top=($(window).height()-$(".popup").height())/6;
	var _left=($(window).width()-$(".popup").width())/2;
	
	$(".popup").css({top:_top,left:_left});
}	
</script>

<script type="text/javascript">
$(document).ready(function(){ 

	$(".top_nav").mousedown(function(e){ 
		$(this).css("cursor","move");//改变鼠标指针的形状 
		var offset = $(this).offset();//DIV在页面的位置 
		var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离 
		var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离 
		$(document).bind("mousemove",function(ev){ //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件 
		
			$(".popup").stop();//加上这个之后 
			
			var _x = ev.pageX - x;//获得X轴方向移动的值 
			var _y = ev.pageY - y;//获得Y轴方向移动的值 
		
			$(".popup").animate({left:_x+"px",top:_y+"px"},10); 
		}); 

	}); 

	$(document).mouseup(function() { 
		$(".popup").css("cursor","default"); 
		$(this).unbind("mousemove"); 
	});
}) 
</script>


</html>