<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/4
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


用户名：<input type="text" name="uname">
<a id="btnSearch" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>

<br>
<a id="btnadduser" href="javascript:void(0)" class="easyui-linkbutton"
   data-options="iconCls:'icon-add'">添加</a>

<table>
    <tr><td>id</td><td>name</td><td>sex</td><td>操作</td></tr>
    <tr><td>id</td><td>name</td><td>sex</td><td>
        <a id="btnupdate" href="#" class="easyui-linkbutton"
           data-options="iconCls:'icon-edit'">编辑</a>
        <a id="btndelete" href="#" class="easyui-linkbutton"
           data-options="iconCls:'icon-remove'">删除</a>
    </td></tr>
    <tr><td>id</td><td>name</td><td>sex</td><td>
        <a id="btnupdate" href="#" class="easyui-linkbutton"
           data-options="iconCls:'icon-edit'">编辑</a>
        <a id="btndelete" href="#" class="easyui-linkbutton"
           data-options="iconCls:'icon-remove'">删除</a>
    </td></tr>
    <tr><td>id</td><td>name</td><td>sex</td><td>
        <a id="btnupdate" href="#" class="easyui-linkbutton"
           data-options="iconCls:'icon-edit'">编辑</a>
        <a id="btndelete" href="#" class="easyui-linkbutton"
           data-options="iconCls:'icon-remove'">删除</a>
    </td></tr>
</table>


<div id="adduserwin" class="easyui-window" title="添加用户"
     style="width:500px;height:450px;padding:10px;background:#fafafa;"
     data-options="iconCls:'icon-add',closable:true,closed:true,href:'adduser.jsp'">



</div>
<script type="text/javascript" >
    //点击添加用户按钮  面板 显示
    $("#btnadduser").click(function () {

        $("#adduserwin").panel("open");
    });


</script>

</body>
</html>
