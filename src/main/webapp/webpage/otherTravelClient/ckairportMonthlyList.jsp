<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
<div region="center" style="padding: 1px;"> 
<div id="tempSearchColums" style="display: none">
    <div name="searchColums"></div></div>
<t:datagrid  name="userList2" title="" queryMode="group" actionUrl="airportMonthlyController.do?acdatagrid" 
idField="id" fit="true" sortName="dates" sortOrder="desc" >
	<t:dgCol title="编号" field="id" hidden="true"></t:dgCol>
	<t:dgCol  title="月报时间"   field="smonth"  query="true" ></t:dgCol>
	<t:dgCol  title="月报时间"   field="dates" formatter="yyyy-MM" hidden="true" ></t:dgCol>
	<t:dgCol  title="企业名称"   field="otherTravelInfo.name"  width="20"  ></t:dgCol>
	<t:dgCol title="本月实际完成的运输起降架次" field="actualsortie"></t:dgCol>
	<t:dgCol title="全年计划完成的运输起降架次" field="plansortieyear"></t:dgCol>
	<t:dgCol title="本月计划出发运量-旅客（万人）" field="planouttraveller"></t:dgCol>
	<t:dgCol title="本月实际完成的出发货运-旅客（万人）" field="actualouttraveller"></t:dgCol>
	<t:dgCol title="审核状态" field="status" query="true" width="40" replace="<font color=\"red\">未填报</font>_1,<font color=\"#d2980c\">未审核</font>_2,已审核(审核不通过)_3,已审核(审核通过)_4" ></t:dgCol>		     
	<%-- <t:dgCol title="涉旅机构名称" field="name"  query="true"   width="20"></t:dgCol> --%>
	<%-- <t:dgCol title="其他涉旅机构编码" field="organizationNum"  query="true" ></t:dgCol>	 --%>
	<t:dgCol title="基本信息id" field="otid" hidden="true"></t:dgCol>	
	<%-- <t:dgCol title="其他涉旅机构类型" field="type" query="true" replace="其他_0,高尔夫项目_1,游艇项目_2,空中飞行项目_3,机场项目_4,动车项目_5" width="20"></t:dgCol> --%>	
	<%-- <t:dgCol title="接待人次（单位：人次）" field="receptionnum" query="true"  width="20"></t:dgCol> --%>	
	<%-- <t:dgCol title="营业收入（万元）" field="businessincome"  query="true"  width="20"></t:dgCol>
 --%>	<%-- <t:dgCol title="所在区" field="area" replace="市辖区_0,崖州区_1,海棠区_2,天涯区_3,吉阳区_4"></t:dgCol> --%>	     
	<t:dgCol title="操作" field="opt" width="100"></t:dgCol>
	<%-- <t:dgDelOpt title="删除" url="otherTravelMonthlyController.do?delgm&id={id}"/> --%>
	<t:dgFunOpt funname="editam(id,otid)" title="编辑" exp="status#eq#3"></t:dgFunOpt>
	<t:dgFunOpt funname="detailam(id,otid)" title="查看详情" ></t:dgFunOpt>
	<t:dgToolBar title="月报录入" langArg="common.user" icon="icon-add" url="airportMonthlyController.do?addam" funname="add"></t:dgToolBar>
<%-- <t:dgToolBar title="机场月报信息导出" langArg="common.user" icon="icon-put"  onclick="doMigrateOut();"></t:dgToolBar> --%>

</t:datagrid>
  


</div>
</div>

<script type="text/javascript">

function detailam(id,otid){
	createdetailwindow('机场月报信息详情', 'airportMonthlyController.do?detailam&amonthId='+id+'&load=detail&otid='+otid);
}
function editam(id,otid){
	createwindow('编辑机场月报信息', 'airportMonthlyController.do?editam&amonthId='+id+'&otid='+otid);
}
function userListsearch(){
	$.dataGrid("#userList2").reload();
}

	
function doMigrateOut(){
		JeecgExcelExport("airportMonthlyController.do?exportsxlss","userList2");
		
	}
// 		function getListSelections(){
// 		var ids = '';
// 		var rows = $("#jeecgDemoList").datagrid("getSelections");
// 		for(var i=0;i<rows.length;i++){
// 			ids+=rows[i].id;
// 			ids+=',';
// 		}
// 		ids = ids.substring(0,ids.length-1);
// 		return ids;
//	}
function back(data){
	if(data.success)
	reloadTable();
}
</script>
