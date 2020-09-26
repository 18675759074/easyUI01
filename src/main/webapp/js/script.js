
$(window).load(function () {

    //点击菜单  绑定事件 (追加tab选项卡)
    $("#caidan").click(function (e) {
        //获取触发对象
        var clickobj = e.target;

        if($(clickobj).attr("class")=="a"){
            //alert("菜单点击了");
            //组织超链接的跳转   组织默认行为

            if($("#tt").tabs('exists',$(clickobj).text())){
                //select
                $("#tt").tabs('select',$(clickobj).text())
            }else{
                //add

                $("#tt").tabs('add',
                    {title:$(clickobj).text(),
                        selected:true,
                        href:$(clickobj).attr("href"),
                        iconCls:'icon-reload',
                        closable:true});
            }




        }
        e.preventDefault();

    });



});