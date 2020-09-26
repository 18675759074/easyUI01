<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/5
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<head>
    <title>添加页面</title>
</head>
<body>

<form id="adduser_form" method="post">

用户名：<input id="name" name="name" class="easyui-validatebox" data-options="required:true,validType:'length[6,10]'" /><br>
生日：<input id="birthday" name="birthday" type="text" class="easyui-datebox" required="required"></input><br>
工资:<input id="salary"  name="salary" class="easyui-numberspinner" style="width:80px;"
          required="required" data-options="min:10,max:999999"><br>
    省：<input id="sheng" name="sheng" >  <br>
    市：<input id="shi" name="sheng" ><br>
    区：<input id="qu" name="sheng" ><br>

    <a id="btnsaveuser" href="javascript:void(0)" class="easyui-linkbutton"
       data-options="iconCls:'icon-add'">保存</a>
</form>

<script type="text/javascript">
    $("#btnsaveuser").click(function () {

        //表单提交
        $('#adduser_form').form('submit', {
            url:"adduser.action",
            onSubmit: function(){

                //自己手动写js代码 验证窗体上的数据正确性
                //如果正确 返回true  往后台提交
                //不过有错误 返回false  提交终止

                return $(this).form("validate");
            },
            success:function(data){
                //alert(data);
                $.messager.show({
                    title:data,
                    msg:'消息将在5秒后关闭。',
                    timeout:5000,
                    showType:'slide'
                });

                //关闭添加窗口
                $("#adduserwin").panel("close");
                //刷新后台表格数据
            }
        });


    });


    //加载省得下拉框
    var param ={
        //url:"province.json",
        url:"querysheng.action",
        valueField:'provinceId',   //绑定值
        textField:'provinceName',   //绑定显示文本
        onSelect:function (rec) {
            $("#shi").combobox('clear')
            var url ="querycitybyid.action?id="+rec.provinceId;
            $("#shi").combobox('reload',url);
        }
    };
    $("#sheng").combobox(param);


    //将市的下拉框 创建
    var param2 ={
        valueField:'cityId',   //绑定值
        textField:'cityName',   //绑定显示文本
        onSelect:function (rec) {
            var url ="queryAreaByid.action?id="+rec.cityId;
            $("#qu").combobox('reload',url);
        }
    };
    $("#shi").combobox(param2);
    //$("#shi").combobox('select',data[0].value);
    // $("#id ").combobox('select',data[0]);

    var param3={
        valueField:'areaId',   //绑定值
        textField:'areaName'   //绑定显示文本
    };
    $("#qu").combobox(param3);
</script>


</body>
</html>
