﻿KindEditor.plugin('tongyi', function (K) {
    var editor = this, name = 'tongyi';
    // 点击图标时执行
    editor.clickToolbar(name, function () {
        var txtUser = document.getElementById("txtUser").value;
        var txtDate = document.getElementById("txtDate").value;
        editor.appendHtml('<p style="text-indent:2em; padding:0px; margin:0px; ">同意</p><p style="width:auto;"><div style="width:160px; float:right; line-height:24px;">' + txtUser + '<br/>' + txtDate + '</div></p>');
    });
});