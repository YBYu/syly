<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<t:base type="jquery,easyui,tools"></t:base>
<script type="text/javascript">


</script>
</head>
<body style="overflow-y: hidden" scroll="no">
<t:formvalid formid="saveot" refresh="false" dialog="true" action="otherTravelController.do?save" layout="table">
	<input id="id" type="hidden" name="oid ">

<table style="width:660px; font-size:12px;" cellpadding="0" cellspacing="1" class="formtable">
		<tbody>
			<tr>
				<td align="right" width="16%"><span class="filedzt">企业名称</span></td>
				<td class="value" width="16%" colspan="2"><input value="${golfMonthly.otherTravelInfo.name }"  type="text" datatype="*"  "></td>
                <td align="right" width="16%">企业类型</td>
                <td class="value" width="30%"><input type="text" value="<c:if test="${golfMonthly.otherTravelInfo.type==1 }">高尔夫项目</c:if><c:if test="${golfMonthly.otherTravelInfo.type==2 }">游艇项目</c:if><c:if test="${golfMonthly.otherTravelInfo.type==3 }">空中飞行项目</c:if><c:if test="${golfMonthly.otherTravelInfo.type==4 }">机场项目</c:if><c:if test="${golfMonthly.otherTravelInfo.type==5 }" >动车项目</c:if>"></td>	         
			</tr>
			<tr>
            	<td align="right" width="16%">月报时间</td>
                <td class="value" width="16%" colspan="4">
                <input  value="${golfMonthly.smonth}" type="text"  datatype="*"     disabled="disabled" ></td>
                <%-- <input  value="<fmt:formatDate value="${golfMonthly.dates }" type="date"/>" type="text"  pattern="yyyy-MM" datatype="*" "></td> --%>
                <%-- <td align="right" width="16%">所在区 </td>
                <td class="value" width="30%">
                <input  value="${otherTravelInfo.city }" type="area" datatype="*" ">
                </td> --%>
            </tr>
        	<!--许可证号-->
        	<tr>
            	<td align="right" width="16%">所在市</td>
                <td class="value" width="16%" colspan="2"><input  value="${golfMonthly.otherTravelInfo.city }" type="text" datatype="*" "></td>
                <td align="right" width="16%">所在区 </td>
                <td class="value" width="30%">
                <input  value="<c:if test="${golfMonthly.otherTravelInfo.area ==0 }">市辖区</c:if><c:if test="${golfMonthly.otherTravelInfo.area ==1 }">崖州区</c:if><c:if test="${golfMonthly.otherTravelInfo.area ==2 }">海棠区</c:if><c:if test="${golfMonthly.otherTravelInfo.area ==3 }">天涯区</c:if><c:if test="${golfMonthly.otherTravelInfo.area ==4 }">吉阳区</c:if>" type="text" datatype="*" ">
                </td>
            </tr>
            <!--法人信息-->
            <tr>
				<td align="right" width="16%">联系电话<span class="filedzt"></span></td>
				<td class="value" width="16%" colspan="2"><input value="${golfMonthly.otherTravelInfo.phone}" type="text" datatype="*" name="phone "></td>
                <td align="right" width="16%">邮政编码<span class="filedzt"></span></td>
                <td class="value" width="30%"><input value="${golfMonthly.otherTravelInfo.postalcode}" type="text" datatype="*" name="postalcode "></td>
			</tr>
            <!--英文名称-->
            <tr>
				<td align="right" width="16%"><span class="filedzt">接待人次（单位：人次）</span></td>
				<td class="value" width="16%" colspan="2"><input value="${golfMonthly.receptionnum}" type="text" datatype="*" name="receptionnum "></td>
                <td align="right" width="16%"><span class="filedzt">营业收入（万元）</span></td>
                <td class="value" width="30%"><input value="${golfMonthly.businessincome}" type="text"  datatype="*" name="businessincome"></td>
			</tr>     
          <tr>
				<td align="right" width="16%"><span class="filedzt">填报人</span></td>
				<td class="value" width="16%" colspan="2"><input disabled="disabled" value="${golfMonthly.reporter }"  type="text"  ></td>
                <td align="right" width="16%"><span class="filedzt">填报时间</span></td>
                <td class="value" width="30%"><input disabled="disabled"  value="<fmt:formatDate value="${golfMonthly.writeDate }" type="date"/>" type="text"  ></td>
			</tr> 
		</tbody>
	</table>
</t:formvalid>
<div style="padding:5px">
	  <!-- <a href="javascript:void(0)" class="easyui-linkbutton" onclick="check();">确认审核</a> -->
	  
	</div>
</body>
<script type="text/javascript">
/* 
	 function check(){
		var id = $("#id").val();
		$.ajax({
			url:"hotelController.do?check&id="+id,
		//data:{id:id">,
			type:'get',
			dataType:"json",
			success:function(data){
				alert(data.msg);
				reloadTable();
			}
			 
			}
	} */
</script>
