var dialog;
var grid;
$(function() {
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "ID",
			name : "id",
			hide:true
		}, {
			colkey : "CPUUSAGE",
			name : "cpu使用率",
			width : "85px"
		}, {
			colkey : "SETCPUUSAGE",
			name : "预设cpu使用率",
			width : "115px"
		}, {
			colkey : "JVMUSAGE",
			name : "Jvm使用率",
			width : "90px"
		}, {
			colkey : "SETJVMUSAGE",
			name : "预设Jvm使用率",
			width : "115px"
		} ,{
			colkey : "RAMUSAGE",
			name : "Ram使用率",
			width : "90px"
		} ,{
			colkey : "SETRAMUSAGE",
			name : "预设Ram使用率",
			width : "115px"
		} ,{
			colkey : "EMAIL",
			name : "发送的邮件"
		} ,{
			colkey : "OPERTIME",
			name : "发送的时间",
			renderData : function(rowindex,data, rowdata, column) {
				return new Date(data).format("yyyy-MM-dd hh:mm:ss");
			}
		} ,{
			colkey : "MARK",
			name : "备注"
		} ],
		jsonUrl : rootPath + '/monitor/findByPage.shtml',
		checkbox : true
	});
	$("#searchForm").click("click", function() {//绑定查询按扭
		var searchParams = $("#fenye").serializeJson();
		grid.setOptions({
			data : searchParams
		});
	});
});