<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Notice.Controller.noticemanage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Notice" %>
<%@ Import namespace="FP_Notice.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!--[if IE]>\r\n");
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n");
	ViewBuilder.Append("<!--<![endif]-->\r\n");
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>公告通知管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-datepicker.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.bootbox.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.notify.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-prompts.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modal.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modalmanager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ba-bbq/jquery.ba-bbq.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "pager/pager.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append("    span.required {\r\n");
	ViewBuilder.Append("	    display: none;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .search-form .control-group {\r\n");
	ViewBuilder.Append("	    display: inline-block\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .search-form .control-label {\r\n");
	ViewBuilder.Append("	    width: 100px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .search-form .controls {\r\n");
	ViewBuilder.Append("	    margin-left: 120px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .search-form .control-group {\r\n");
	ViewBuilder.Append("	    margin-bottom: 10px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <!--侧边栏-->\r\n");
	ViewBuilder.Append("<div class=\"sidebar\" style=\"height: 780px; overflow-y: hidden; outline: none;\" tabindex=\"5001\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_logo T_icon\"><img src=\"" + echo(setupinfo.icon) + "\" style=\"width:64px;height:64px;\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("    <ul class=\"nav nav-list\">\r\n");

	if (isperm)
	{
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="noticeadd.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"noticeadd.aspx?backurl=" + echo(pagename) + "\"><i class=\"icon-pencil-2\"></i>发布公告</a></li>\r\n");
	}//end if
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="noticelist.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"noticelist.aspx\"><i class=\"icon-envelop-3\"></i>通知公告<span class=\"badge badge-important pull-right\">" + echo(countinfo.count) + "</span></a></li>\r\n");

	if (isperm)
	{
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="noticemanage.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"noticemanage.aspx\"><i class=\"icon-mail-send\"></i>公告管理</a></li>\r\n");
	}//end if
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_buttons\"> </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("    <!--导航栏-->\r\n");
	ViewBuilder.Append("    <div style=\"margin-left:180px\">\r\n");
	ViewBuilder.Append("      <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("        <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td><span class=\"td-nav-title\">公告通知管理</span></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("    <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"nid\" id=\"nid\" value=\"\">\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"margin-left: 180px; height: 740px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("      <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("        <div id=\"gridview\" class=\"grid-view\">\r\n");
	ViewBuilder.Append("          <div class=\"toolbar\">\r\n");
	ViewBuilder.Append("            <div class=\"btn-group\">\r\n");
	ViewBuilder.Append("                <a class=\"btn\" style=\"margin-right:5px;\" id=\"btn_delete\" href=\"#\">删除</a>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("<div class=\"pull-right\">\r\n");
	ViewBuilder.Append("    <div style=\"float:left;display:inline-block;margin-right:8px;height:30px;line-height:30px;\">共" + echo(pager.total) + "条</div>\r\n");
	ViewBuilder.Append("    <div class=\"fpager\">\r\n");
	ViewBuilder.Append("        <div class=\"fpager-pages\">\r\n");
	ViewBuilder.Append("        <ul>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-prev\"><a href=\"" + seturl("pageindex="+pager.prepage)+ "\" title=\"上一页\">«</a></li>\r\n");

	if (pager.startpage>2)
	{
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex=1")+ "\">1</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	}//end if
	for (int i = pager.startpage; i <= pager.endpage; i++){

	if (i==pager.pageindex)
	{
	ViewBuilder.Append("            <li class=\"fpager-page active\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}//end if
	}//end for

	if (pager.endpage<pager.pagecount-2)
	{
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+pager.pagecount)+ "\">" + echo(pager.pagecount) + "</a></li>\r\n");
	}//end if
	ViewBuilder.Append("            <li class=\"fpager-next\"><a href=\"" + seturl("pageindex="+pager.nextpage)+ "\" title=\"下一页\">»</a></li>\r\n");
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("          <table class=\"items table table-bordered\">\r\n");
	ViewBuilder.Append("            <thead>\r\n");
	ViewBuilder.Append("              <tr>\r\n");
	ViewBuilder.Append("                <th style=\"width:20px;text-align:center;\"><input type=\"checkbox\" value=\"0\" name=\"chkall\" id=\"chkall\"></th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:left;\">公告标题</th>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("                <th style=\"width:80px;text-align:center;\">类型</th>\r\n");
	}//end if
	ViewBuilder.Append("                <th style=\"width:140px;text-align:center;\">发布时间</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:100px;text-align:center;\">生效日期</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:100px;text-align:center;\">终止日期</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:60px;text-align:center;\">状态</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:160px;text-align:center;\">操作</th>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	ViewBuilder.Append("            </thead>\r\n");
	ViewBuilder.Append("            <tbody>\r\n");

	loop__id=0;
	foreach(NoticeInfo item in noticelist)
	{
	loop__id++;
	ViewBuilder.Append("              <tr onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input value=\"" + echo(item.id) + "\" id=\"chkid\" type=\"checkbox\" name=\"chkid\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\" class=\"ellipsis\">\r\n");
	ViewBuilder.Append("                    <i class=\"ico-doc\" title=\"已发送\"></i>\r\n");
	ViewBuilder.Append("                    <a class=\"subject\" href=\"noticeview.aspx?id=" + echo(item.id) + "\">" + echo(item.title) + "</a></td>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("                <td style=\"text-align:center;\">" + echo(item.typename) + "</td>\r\n");
	}//end if
	ViewBuilder.Append("                <td style=\"text-align:center;\">" + echo(item.postdatetime,"yyyy-MM-dd HH:mm") + "</td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">" + echo(item.starttime,"yyyy-MM-dd") + "</td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">" + echo(item.endtime,"yyyy-MM-dd") + "</td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">\r\n");

	if (item.status==1)
	{
	ViewBuilder.Append("                  <span class=\"label label-success\"><b>已生效</b></span>\r\n");
	}
	else
	{
	ViewBuilder.Append("                  <span class=\"label label-important\"><b>已终止</b></span>\r\n");
	}//end if
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">\r\n");
	ViewBuilder.Append("                  <a href=\"noticeadd.aspx?id=" + echo(item.id) + "\"><span class=\"label label-success\">编辑</span></a>&nbsp;\r\n");

	if (item.status==1)
	{
	ViewBuilder.Append("                  <a href=\"javascript:stop(" + echo(item.id) + ");\"><span class=\"label label-danger\">终止</span></a>&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                  <a href=\"javascript:restore(" + echo(item.id) + ");\"><span class=\"label label-danger\">生效</span></a>&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                  <a href=\"javascript:Read(" + echo(item.id) + ")\"><span class=\"label label-info\">查阅情况</span></a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	}//end loop
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("          <div class=\"toolbar\">\r\n");
	ViewBuilder.Append("<div class=\"pull-right\">\r\n");
	ViewBuilder.Append("    <div style=\"float:left;display:inline-block;margin-right:8px;height:30px;line-height:30px;\">共" + echo(pager.total) + "条</div>\r\n");
	ViewBuilder.Append("    <div class=\"fpager\">\r\n");
	ViewBuilder.Append("        <div class=\"fpager-pages\">\r\n");
	ViewBuilder.Append("        <ul>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-prev\"><a href=\"" + seturl("pageindex="+pager.prepage)+ "\" title=\"上一页\">«</a></li>\r\n");

	if (pager.startpage>2)
	{
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex=1")+ "\">1</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	}//end if
	for (int i = pager.startpage; i <= pager.endpage; i++){

	if (i==pager.pageindex)
	{
	ViewBuilder.Append("            <li class=\"fpager-page active\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}//end if
	}//end for

	if (pager.endpage<pager.pagecount-2)
	{
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+pager.pagecount)+ "\">" + echo(pager.pagecount) + "</a></li>\r\n");
	}//end if
	ViewBuilder.Append("            <li class=\"fpager-next\"><a href=\"" + seturl("pageindex="+pager.nextpage)+ "\" title=\"下一页\">»</a></li>\r\n");
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var windows = $(\".windows\", parent.document);\r\n");
	ViewBuilder.Append("        for (var i = 0; i < windows.length; i++) {\r\n");
	ViewBuilder.Append("            var win = windows[i];\r\n");
	ViewBuilder.Append("            var win_id = $(win).attr(\"id\");\r\n");
	ViewBuilder.Append("            if (win_id.indexOf('app_notice') != -1) {\r\n");
	ViewBuilder.Append("                $(win).find(\".win_title .title\").html('通知公告 -> 公告管理')\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $('[rel=tooltip]').tooltip({ 'container': 'body', 'template': '<div class=\\\"tooltip\\\"><div class=\\\"tooltip-shadow\\\"><div class=\\\"tooltip-container\\\"><div class=\\\"tooltip-arrow\\\"><em><\\/em><span><\\/span><\\/div><div class=\\\"tooltip-inner\\\"><\\/div><\\/div><\\/div><\\/div>', 'animation': false });\r\n");
	ViewBuilder.Append("        $(\"#chkall\").click(function () {\r\n");
	ViewBuilder.Append("            var checked = this.checked;\r\n");
	ViewBuilder.Append("            $(\"input[name='chkid']:enabled\").each(function () { this.checked = checked; });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btn_delete').live('click', function () {\r\n");
	ViewBuilder.Append("            var select = new Array();\r\n");
	ViewBuilder.Append("            $(\"input[name='chkid']:checked\").each(function () {\r\n");
	ViewBuilder.Append("                select.push($(this).val());\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            if (select.length > 0) {\r\n");
	ViewBuilder.Append("                window.confirm('您确定要删除所选的公告吗？删除后将无法进恢复。', function (ret) {\r\n");
	ViewBuilder.Append("                    if (ret == true) {\r\n");
	ViewBuilder.Append("                        $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $.notify({ type: 'warning', message: { text: '您没有选择任何选项！', icon: 'icon-info' } }).show();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\".sidebar\").height(height);\r\n");
	ViewBuilder.Append("            if ($(\".td-nav\").length > 0) {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height - $(\".td-nav\").height());\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\"); $(\".content\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("        $('.subject').live('click', function () {\r\n");
	ViewBuilder.Append("            TUtil.openUrl(this.href);\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    function Read(id) {\r\n");
	ViewBuilder.Append("        TUtil.openUrl(\"noticeread.aspx?id=\" + id);\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function stop(id) {\r\n");
	ViewBuilder.Append("        $(\"#action\").val(\"stop\");\r\n");
	ViewBuilder.Append("        $(\"#nid\").val(id);\r\n");
	ViewBuilder.Append("        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function restore(id) {\r\n");
	ViewBuilder.Append("        $(\"#action\").val(\"restore\");\r\n");
	ViewBuilder.Append("        $(\"#nid\").val(id);\r\n");
	ViewBuilder.Append("        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	if(iswrite==0)
	{
	Response.Write(ViewBuilder.ToString());
	}
	else if(iswrite==1)
	{
	Hashtable hash = new Hashtable();
	hash["errcode"] = 0;
	hash["errmsg"] ="";
	hash["html"]=ViewBuilder.ToString();
	FPResponse.WriteJson(hash);
	}
}
</script>
