<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
<div region="center" style="padding: 1px;"> 
<div id="tempSearchColums" style="display: none">
    <div name="searchColums"></div></div>
<t:datagrid  name="flightMonthList" title="" queryMode="group" actionUrl="flightMonthlyController.do?fmonthdatagrid" idField="id" fit="true">
	<t:dgCol title="编号" field="id" hidden="true"></t:dgCol>
	<t:dgCol title="编号" field="flightMonth.id" hidden="true"></t:dgCol>
	<%-- <t:dgCol  title="月报时间"   field="flightMonth.dates" formatter="yyyy-MM"  ></t:dgCol> --%>
	<t:dgCol  title="企业名称"   field="name" sortable="true" query="true"  ></t:dgCol>
	<t:dgCol  title="企业负责人"    sortable="true" query="true" field="principal"   ></t:dgCol>	     
	<%-- <t:dgCol title="涉旅机构名称" field="name"  query="true"   width="20"></t:dgCol> --%>
	<%-- <t:dgCol title="其他涉旅机构编码" field="organizationNum"  query="true" ></t:dgCol>	 --%>
	<%-- <t:dgCol title="基本信息id" field="otid" hidden="true"></t:dgCol> --%>	
	<%-- <t:dgCol title="其他涉旅机构类型" field="type" query="true" replace="其他_0,高尔夫项目_1,游艇项目_2,空中飞行项目_3,机场项目_4,动车项目_5" width="20"></t:dgCol> --%>	
	<t:dgCol title="接待人次（单位：人次）" field="flightMonth.receptionnum"    width="20"></t:dgCol>	
	<t:dgCol title="营业收入（万元）" field="flightMonth.businessincome"    width="20"></t:dgCol>
	<t:dgCol title="飞行架次(架次)" field="flightMonth.flighttimes"    width="20"></t:dgCol>
	<t:dgCol title="审核状态" field="flightMonth.status" query="true" width="40" replace="<font color=\"red\">未填报</font>_1,<font color=\"#d2980c\">未审核</font>_2,已审核(审核不通过)_3,已审核(审核通过)_4" ></t:dgCol>
	<t:dgCol title="填报时间" field="flightMonth.writeDate" formatter="yyyy-MM-dd"  ></t:dgCol>
<%-- <t:dgCol title="所在区" field="area" replace="市辖区_0,崖州区_1,海棠区_2,天涯区_3,吉阳区_4"></t:dgCol> --%>	     
	<t:dgCol title="操作" field="opt" width="100"></t:dgCol>
	<%-- <t:dgToolBar title="代填报" langArg="common.user" icon="icon-edit" onclick="daitianbaos()" ></t:dgToolBar> --%>
	<%-- <t:dgDelOpt title="删除" url="flightMonthlyController.do?delfm&id={id}"/> --%>
	<t:dgFunOpt funname="detail(id,flightMonth.id)" title="查看详情" exp="flightMonth.status#ne#1" ></t:dgFunOpt>
	<t:dgFunOpt funname="checkwin(id,flightMonth.id)" title="审核" exp="flightMonth.status#eq#2"></t:dgFunOpt>
	<t:dgFunOpt funname="daitianbao(id,flightMonth.id)" title="代填报" exp="flightMonth.status#eq#1"></t:dgFunOpt>
	
<%-- <t:dgToolBar title="查看周报详情" langArg="common.user" icon="icon-edit" url="userController.do?addorupdate" funname="update"></t:dgToolBar> --%>
<%-- <t:dgToolBar title="其他涉旅机信息导出" langArg="common.user" icon="icon-put"  onclick="doMigrateOut();"></t:dgToolBar> --%>
<%-- <t:dgToolBar title="批量导入" langArg="common.user" icon="icon-put" url="" funname=""></t:dgToolBar> --%>

</t:datagrid>
  


</div>
</div>

<script type="text/javascript">
function reloadTable(){
	window.setTimeout(function(){
		$("#flightMonthList").datagrid('reload');
	},1000);
	
	}
	//代填报
function daitianbaos(){
	createwindow('代填报', 'flightMonthlyController.do?daitianbao');
	
}
	//空中飞行月报信息详情
function detail(id,fmonthId){
	createdetailwindow('空中飞行月报信息详情', 'flightMonthlyController.do?detailfm&fmonthId='+fmonthId+'&load=detail&otid='+id);
}
function userListsearch(){
	$.dataGrid("#flightMonthList").reload();
}

 //空中飞行月报审核
	function checkwin(id,fmonthId){
		var button = [{  
		            name: "通过",
		            callback: function(){
		            	$.ajax ({
							url:"flightMonthlyController.do?addstatusfm&fmonthId="+fmonthId,
							//data:{id:id},
							dataType:"json",
							success:function(data){
								alert(data.msg);
								reloadTable();
							}	
							 }
							);
		            	
		            },
		            focus: true
		        },{
		            name: "退回",
		            callback: function(){
		            	nocheck(fmonthId);
		            	
		            },
		            focus: true
		        }];
			createwindowbutton('审核','flightMonthlyController.do?auditfm&fmonthId='+fmonthId+'&load=detail&otid='+id,button);
				 
			}
 //空中飞行月报审核退回
			function nocheck(fmonthId){
			
				$.ajax ({
				url:"flightMonthlyController.do?nocheckfm&fmonthId="+fmonthId,
				//data:{id:id},
				dataType:"json",
				success:function(data){
					alert(data.msg);
					reloadTable();
				}	
				 }
				);
			}	
	
	var iframe;
	//空中飞行月报代填报
	function daitianbao(id,fmonthId) {
	var button = [{  
		            name: "提交",
		            	 callback: function(){
		 	            iframe = this.iframe.contentWindow;
		 				saveObj();
		 				return false;
		            	
		            },
		            focus: true
		        },{
		            name: "暂存",
		            callback: function(){
		           		 iframe = this.iframe.contentWindow;
		            	var formjson = $('#saveflightMonth', iframe.document).serialize();
						$.ajax ({
							url:"flightMonthlyController.do?zancuncheckfm&otid="+id,
							data:formjson,
							dataType:"json",
							success:function(data){    
								alert(data.msg);
								reloadTable();
								}  	
						 	}
						);
		            	
		            },
		            focus: true
		        }];
			createwindowbutton('代填报', 'flightMonthlyController.do?addsignfm&fmonthId='+fmonthId+'&otid='+id,button);
		} 
		

	

</script>
