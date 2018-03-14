<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>人事管理系统</title>
<!-- jq -->
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>

<!-- bootstrap -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<!-- 分页插件 -->
<link
	href="${pageContext.request.contextPath}/css/bootstrap-table.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap-table.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap-table-locale-all.min.js"></script>

<!--layer -->
<link
	href="${pageContext.request.contextPath}/js/layer/theme/default/layer.css"
	rel="stylesheet">
<style type="text/css">
.panel {
	margin-left: -48px;
	width: 1145px;
}

.col-sm-12 {
	margin-left: -60px;
}

thead {
	background: #428bca;
	color: white;
}
</style>
</head>
<body>
	<div class="container" style="margin-top: 5px">
		<div class="row">
			<!--!查询区 -->
			<div class="col-sm-11">
				<div class="panel-heading"
					style="background-color: #428bca; color: white">查询条件</div>
				<div class="panel-body form-group" style="margin-bottom: 0px;">
					<label class="col-sm-2 control-label"
						style="text-align: right; margin-top: 5px">用户名：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" name="username"
							id="search_name" />
					</div>
					<label class="col-sm-2 control-label"
						style="text-align: right; margin-top: 5px">用户状态：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" name="status"
							id="search_status" />
					</div>
					<div class="col-sm-1">
						<button class="btn btn-primary" class="search" type="button"
							id="search_btn" style="background-color: #0767C8">查询</button>
					</div>
				</div>
			</div>

			<div id="toolbar" class="btn-group">
				<button id="btn_add" type="button" class="btn btn-success">
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
				</button>
				<button id="btn_edit" type="button" class="btn btn-primary">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
				</button>
				<button id="btn_delete" type="button" class="btn btn-danger">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>批量删除
				</button>
			</div>
			<!-- 表格 -->
			<div class="col-sm-11">
				<table class="table table-striped table-bordered table-hover"
					id="table"></table>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
	<script type="text/javascript">

    //获取选中的所有行的id
    function getIds() {
        return $.map($("#table").bootstrapTable('getSelections'), function (row) {
            return row.id;
        })
    }

    //新增
    $("#btn_add").click(function () {
        window.location.href = "${ctx}/addUser?flag=1";
    })
     
    //批量删除的方法
    $("#btn_delete").click(function () {
        var ids = getIds();
        if (ids.length < 1) {
            layer.alert('请选择至少一个用户!', {
                skin: 'layui-layer-lan'
                , closeBtn: 0
            })
        }else {
            layer.confirm('确定删除这些用户吗?？', {
                btn: ['是的', '按错了'] //可以无限个按钮
            }, function () {
                //确定按钮的回调函数
                var url = "${ctx}/removeUser";
                var params = {
                    flag: 2,
                    ids: ids
                }
                $.ajax({//向后台发起删除操作的请求
                    url: url,
                    data: params,
                    type: "post",
                    dataType: "json",
                    
                    success:function(data){
                    	if(data=="success"){
                    		setTimeout(function(){
                    			$("#table").bootstrapTable("refresh", {url: '${ctx}/userJson'});
                    		},1000);
                    		layer.closeAll('dialog');
                    	}
                    },
                    error: function () {
                        $("#table").bootstrapTable("refresh", {url: '${ctx}/userJson'});
                        layer.closeAll('dialog');
                    }
                })
            })
        }
    })

    //删除当前选择的记录
    function deleteone(id) {
        layer.confirm('确定删除这个用户吗?？', {
            btn: ['是的', '按错了'] //可以无限个按钮
        }, function () {
            //确定按钮的回调函数
            window.location.href = "${ctx}/removeUser?flag=1&id=" + id;
        })
    }

    class BstpTable {
        constructor(obj) {
            this.obj = obj;
        }

        init() {
            //---先销毁表格 ---
            this.obj.bootstrapTable('destroy');
            //---初始化表格,动态从服务器加载数据---
            this.obj.bootstrapTable({
                //【发出请求的基础信息】
                url: '${ctx}/userJson',
                method: 'post',
                contentType: "application/x-www-form-urlencoded",//必须有
                //【查询设置】
                /* queryParamsType的默认值为 'limit' ,在默认情况下 传给服务端的参数为：offset,limit,sort
                                  设置为 ''  在这种情况下传给服务器的参数为：pageSize,pageNumber */
                queryParamsType: '',
                queryParams: function queryParams(params) {//前端页面向服务器发起请求,此处是请求所携带的请求参数
                    //自定义传递的参数
                    var param = {
                        pageNumber: params.pageNumber,
                        pageSize: params.pageSize,
                        username: $("#search_name").val(),
                        status: $("#search_status").val()
                    };
                    return param;
                },

                //【其它设置】
                locale: 'zh-CN',//中文支持
                pagination: true,//是否开启分页（*）
                striped: true,
                pageNumber: 1,//初始化加载第一页，默认第一页
                pageSize: 5,//每页的记录行数（*）
                pageList: [5, 10, 15],//可供选择的每页的行数（*）
                sidePagination: "server", //分页方式：client客户端分页，server服务端分页（*）
                showRefresh: true,//刷新按钮
                showToggle: true,//卡片视图
                toolbar: '#toolbar',//工具栏

                //【样式设置】
                height: 384,
                //按需求设置不同的样式：5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
                //【设置列】
                columns: [//类似于LayUI中的cols
                    {
                        title: '全选',
                        field: 'select',
                        //复选框
                        checkbox: true,
                        width: 25,
                        align: 'center',
                        valign: 'middle'
                    },
                    {field: 'loginame', title: '登录名'},
                    {field: 'password', title: '密码'},
                    {field: 'username', title: '用户名'},
                    {field: 'status', title: '状态'},
                    {field: 'createdate', title: '创建时间',           
                        formatter:function resultFormatter(value){  
                        var oDate = new Date(value),    
                         oYear = oDate.getFullYear(),    
                          oMonth = oDate.getMonth()+1,    
                          oDay = oDate.getDate(),    
                         /*  oHour = oDate.getHours(),    
                          oMin = oDate.getMinutes(),    
                          oSen = oDate.getSeconds(), */    
                          oTime = oYear +'-'+ oMonth +'-'+ oDay;//最后拼接时间    
                          return oTime;    
              			}  
                    },
                    {
                        field: 'tool', title: '操作', align: 'center',
                        formatter: function (value, row, index) {
                            var element =
                                "<a  data-id='" + row.id + "' href='${ctx}/updateUser?flag=1&id=" + row.id + "' class='btn btn-info btn-sm'>编辑</a> &nbsp;" +
                                "<button  data-id='" + row.id + "' href='#' onclick='deleteone(" + row.id + ")' class='btn btn-danger btn-sm'>删除</button> ";
                            return element;
                        }
                    }
                ]
            })
        }
    }

    var bstpTable = new BstpTable($("table"));
    bstpTable.init({})

    //查询按钮的处理逻辑
    $("#search_btn").click(function () {
        $("#table").bootstrapTable("refresh", {url: '${ctx}/userJson'})
    })

</script>
</body>
</html>