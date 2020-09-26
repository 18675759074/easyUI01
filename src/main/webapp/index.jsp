<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/4
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">--%>
<html>
<head>
    <title>首页</title>
    <!-- jquery-->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!-- easyui-->
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    <!-- 语言包-->
    <script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
    <!-- 主题-->
    <link rel="stylesheet" href="themes/default/easyui.css" />
    <!-- 图标-->
    <link rel="stylesheet" href="themes/icon.css" />

    <script type="text/javascript" src="js/script.js"></script>
</head>
<body class="easyui-layout">

    <div data-options="region:'north'"  style="height:150px;">
        <h1>XX后台管理系统</h1>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;admin 登录了
    </div>

    <div data-options="region:'west',title:'菜单管理'" style="width:180px;">
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
    </div>
    <div  data-options="region:'center',href:'center.jsp'">
    </div>


</body>
</html>
