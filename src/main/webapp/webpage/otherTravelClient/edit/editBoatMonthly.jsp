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
<t:formvalid formid="boatMonthSave" refresh="true" dialog="true" action="boatMonthlyController.do?savebm" callback="reloadTable" layout="table">
	<input  value="${boatMonthly.id }" type="hidden" name="id">

<table style=" font-size:12px;" cellpadding="0" cellspacing="1" class="formtable">
		<tbody>
			<tr>
				<td align="right" width="16%"><span class="filedzt">企业名称</span></td>
				<td class="value" width="16%" colspan="2"><input disabled="disabled" value="${boatMonthly.otherTravelInfo.name }"  type="text" datatype="*"  "></td>
                <td align="right" width="16%">企业类型</td>
                <td class="value" width="30%"><input type="text" disabled="disabled" value="<c:if test="${boatMonthly.otherTravelInfo.type==1 }">高尔夫项目</c:if><c:if test="${boatMonthly.otherTravelInfo.type==2 }">游艇项目</c:if><c:if test="${boatMonthly.otherTravelInfo.type==3 }">空中飞行项目</c:if><c:if test="${boatMonthly.otherTravelInfo.type==4 }">机场项目</c:if><c:if test="${boatMonthly.otherTravelInfo.type==5 }" >动车项目</c:if>"></td>	         
			</tr>
			<tr>
            	<td align="right" width="16%">月报时间</td>
                <td class="value" width="16%" colspan="4">
                <input  name=smonth value="${boatMonthly.smonth}" type="text"  readOnly></td>
                <%-- <input  value="<fmt:formatDate value="${boatMonthly.dates }" type="date"/>" type="text"  datatype="*"   errormsg="请输入月份" datatype="*" "></td> --%>
                <div ><input type="hidden"  value="${boatMonthly.otid }" name="otid"   ></div>
            </tr>
        	<!--许可证号-->
        	<tr>
            	<td align="right" width="16%">所在市</td>
                <td class="value" width="16%" colspan="2"><input disabled="disabled" value="${boatMonthly.otherTravelInfo.city }" type="text" datatype="*" "></td>
                <td align="right" width="16%">所在区 </td>
                <td class="value" width="30%">
                <input  value="<c:if test="${boatMonthly.otherTravelInfo.area ==0 }">市辖区</c:if><c:if test="${boatMonthly. otherTravelInfo.area ==1 }">崖州区</c:if><c:if test="${boatMonthly. otherTravelInfo.area ==2 }">海棠区</c:if><c:if test="${boatMonthly. otherTravelInfo.area ==3 }">天涯区</c:if><c:if test="${boatMonthly. otherTravelInfo.area ==4 }">吉阳区</c:if>" disabled="disabled" type="text" datatype="*" ">
                </td>
            </tr>
            <!--法人信息-->
            <tr>
				<td align="right" width="16%">联系电话<span class="filedzt">:</span></td>
				<td class="value" width="16%" colspan="2"><input readOnly value="${boatMonthly.otherTravelInfo.phone}" type="text"  readonly="readonly"  name="phone "></td>
                <td align="right" width="16%">邮政编码<span class="filedzt"></span></td>
                <td class="value" width="30%"><input readOnly value="${boatMonthly.otherTravelInfo.postalcode}" type="text"  readonly="readonly" name="postalcode "></td>
			</tr>
            <!--英文名称-->
            <tr>
				<td align="right" width="16%"><span class="filedzt">接待人次（单位：人次）</span></td>
				<td class="value" width="16%" colspan="2"><input value="${boatMonthly.recepNum}" type="text" datatype="n1-9" errormsg="只能为1-9位整数" name="recepNum"></td>
                <td align="right" width="16%"><span class="filedzt">营业收入（万元）</span></td>
                <td class="value" width="30%"><input value="${boatMonthly.income}" type="text" datatype="/^\d{1,9}(.\d{1,2})?$/"   errormsg="请输入1-9位数字(最多两位小数)" " name="income"></td>
			</tr>
           <tr>
            	<td align="right" width="16%"><span class="filedzt">填报人</span></td>
 				<td class="value" width="16%" colspan="4"><input value="${boatMonthly.reporter }" datatype="*"   type="text"  name="reporter"></td>
            </tr>
                 
		</tbody>
	</table>
</t:formvalid>
</body>
<script type="text/javascript">

</script>
