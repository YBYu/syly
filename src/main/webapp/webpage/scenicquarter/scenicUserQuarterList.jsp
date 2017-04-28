<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
<div region="center" style="padding: 1px;"> 
<div id="tempSearchColums" style="display: none">
    <div name="searchColums"></div></div>
<t:datagrid name="userList2" title="" queryMode="group" actionUrl="scenicQuarterController.do?userDatagrid" idField="id" fit="true">
	<t:dgCol title="编号" field="id" hidden="true"></t:dgCol>  
	<t:dgCol title="编号" field="scenicData.id" hidden="true"></t:dgCol> 
	<t:dgCol title="年份" field="year" query="true"    replace="2000年_2000,2001年_2001,2002年_2002,2003年_2003,2004年_2004,2005年_2005,2006年_2006,2007年_2007,2008年_2008,2009年_2009,2010年_2010,2011年_2011,2011年_2011,2012年_2012,2013年_2013,2014年_2014,2015年_2015,2016年_2016,2017年_2017"></t:dgCol>
	<t:dgCol title="季度" field="quarter" query="true" replace="第一季度_1,第二季度_2,第三季度_3,第四季度_4" ></t:dgCol> 	
	<t:dgCol title="景区名称" field="scenicData.name"     width="20"></t:dgCol>
	<t:dgCol title="所属辖区" field="scenicData.area"   replace="市辖区_0,崖州区_1,海棠区_2,天涯区_3,吉阳区_4,三亚市_5"></t:dgCol>		
	<t:dgCol title="景区类型" field="scenicData.scenictype"   replace="自然景观_1,历史文化_2,度假休闲_3,主题游乐_4,博物馆_5,乡村旅游_6,工业旅游_7,红色旅游_8,科技旅游_9,其他_10"  ></t:dgCol>	
	<t:dgCol title="景区等级" field="scenicData.level"  sortable="true" replace="未评定_6,AAAAA_1,AAAA_2,AAA_3,AA_4,A_5"></t:dgCol>
	<%-- <t:dgCol title="景区总收入(万元)" field="totalincome"   ></t:dgCol> 
	<t:dgCol title="其中门票收入(万元)" field="ticketincome"   ></t:dgCol> 
	<t:dgCol title="接待游客量(人次)" field="receptionnum"   ></t:dgCol>     
	<t:dgCol title="其中免票人次" field="exemptticketnum"   ></t:dgCol>  --%>
		<t:dgCol title="状态" field="status"    query="true" replace="未分配_1,已分配_2,未填报_3,提交待审_4,退回修订_5,区级审核通过_6,市级审核通过_7,省级审核通过_8,国家审核通过_9,省级待审核_10" ></t:dgCol>	 
	<t:dgCol title="操作" field="opt" width="20"></t:dgCol>
	<t:dgDelOpt title="删除" url="scenicQuarterController.do?del&id={id}" exp="status#eq#4"/>
	<t:dgDelOpt title="删除" url="scenicQuarterController.do?del&id={id}" exp="status#eq#5"/>
	<t:dgFunOpt funname="detail(id,scenicData.id)" title="查看详情"></t:dgFunOpt>
	<t:dgFunOpt funname="update(id,scenicData.id)" title="编辑" exp="status#eq#3" ></t:dgFunOpt> 
	<t:dgFunOpt funname="update(id,scenicData.id)" title="编辑" exp="status#eq#5" ></t:dgFunOpt> 
	<t:dgToolBar title="季报数据上报" langArg="common.user" icon="icon-add" url="" funname="add()"></t:dgToolBar>
	<t:dgFunOpt funname="comment(id,spotQuarter.id)" title="查看审核意见" exp="status#eq#5"></t:dgFunOpt>
	<t:dgFunOpt funname="comment(id,spotQuarter.id)" title="查看审核意见" exp="status#eq#8"></t:dgFunOpt>
	

</t:datagrid>
  


</div>
</div>

<script type="text/javascript">
//表格刷新
function reloadTable(){
	try{
		$("#userList2").datagrid('reload');
	}catch(e)
	{
		
	}	
}
$(document).ready(function(){

	 $.ajax ({
			url:"calcYear.do?getYearList&tableName=t_scenicspot_quarterly&columnName=year",
			dataType:"json",
			success:function(data){
				$("select[name='year']").empty();
				 var itemYear=data.split(",");
				 $("select[name='year']").append("<option  >请选择</option>");
				 for(var i=0;i<itemYear.length;i++){
						$("select[name='year']").append("<option value='"+itemYear[i]+"'>"+itemYear[i]+"年</option>");
				}
				 
			}
			 });
	 
	
});
//查看审核意见
function comment(id){
	createdetailwindow('景区季报审核意见', 'scenicQuarterController.do?getComments&quarterid='+id,600,280);

}
//景区季报上报
function add(){
	var notLevel='${notLevel}';
	if(notLevel=="notLevel"){
		alert("非A级景区无须填写季报");
		return false;
	}
	var roleName='${scenicdata}';
	if(roleName=="null"){//如果区级管理员易经审核无法在审核
		alert("请先填写景区基本信息");
		return false;
	}
	var scenicquarterdata='${scenicquarterdata}';
	if(scenicquarterdata=="have"){
		alert("本季度季报已填写");
		return false;
	}
	 createwindow('季报编辑','scenicQuarterController.do?addUser', 850, 350);
}
//景区详情查看
function detail(id,spotId){
		createdetailwindow('景区季报信息详情', 'scenicQuarterController.do?detial&quarterid='+id+'&load=detail&scenicdataid='+spotId);
	} 
	//景区季报编辑
function update(id,spotId){
	 createwindow('季报编辑','scenicQuarterController.do?updateScenic&scenicdataid='+spotId+'&quarterid='+id, 850, 350);
}
function userListsearch(){
	$.dataGrid("#userList2").reload();
}
	 
</script>
