<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/4
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="caidan" class="easyui-accordion" data-options="fit:true" style="width:300px;height:200px;">
    <div title="用户管理" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
        <a class="a" href="userlist.jsp">用户列表</a>
    </div>
    <div title="部门管理" data-options="iconCls:'icon-reload',selected:true" style="padding:10px;">
        <a class="a" href="deptlist.jsp">部门列表</a>
    </div>
    <div title="商品管理">
        <a class="a" href="goodslist.jsp">商品列表</a>
    </div>
</div>

</body>
</html>
