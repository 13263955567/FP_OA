<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.taskappend" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_WorkFlow" %>
<%@ Import namespace="FP_WorkFlow.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!--[if IE]>\r\n");
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>继续交办-" + echo(taskinfo.title) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/document.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/workflow.turn.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/selector.css\">\r\n");
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "autocomplete/jquery.autocomplete.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "editor/themes/default/default.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/kindeditor.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/lang/zh_CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/attachment.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "flowuser/js/function.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "uploadify/jquery.uploadify.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "uploadify/uploadify.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        KindEditor.create('#content', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx?sortid=0',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("					'removeformat', '|', 'image', 'flash', 'media', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_selector\").click(function () {\r\n");
	ViewBuilder.Append("            var url = \"" + echo(plupath) + "flowuser/index.aspx?flowid=" + echo(taskinfo.flowid) + "\";\r\n");
	ViewBuilder.Append("            byuser_open(url);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_clear\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#PRCS_OP_USER2\").val(\"\");\r\n");
	ViewBuilder.Append("            $(\"#PRCS_USER2\").val(\"\");\r\n");
	ViewBuilder.Append("            var oClearList = $(\".user-tags\");\r\n");
	ViewBuilder.Append("            oClearList.remove();\r\n");
	ViewBuilder.Append("        });\r\n");

	if (ispost)
	{
	ViewBuilder.Append("        var parent = window.opener ? window.opener : window.dialogArguments;\r\n");
	ViewBuilder.Append("        try {\r\n");
	ViewBuilder.Append("            parent.update();\r\n");
	ViewBuilder.Append("        } catch (e) { }\r\n");
	ViewBuilder.Append("        TUtil.winClose();\r\n");
	}//end if
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append(".sidebar {\r\n");
	ViewBuilder.Append("	width:150px;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".users-select-block {\r\n");
	ViewBuilder.Append("margin-left: 3px;\r\n");
	ViewBuilder.Append("overflow-y: auto;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".user-tags{\r\n");
	ViewBuilder.Append("    width: 60px;\r\n");
	ViewBuilder.Append("    background:#00ff90;\r\n");
	ViewBuilder.Append("    margin: 0px;\r\n");
	ViewBuilder.Append("    padding: 0px;\r\n");
	ViewBuilder.Append("    overflow: hidden;\r\n");
	ViewBuilder.Append("    float:left;\r\n");
	ViewBuilder.Append("    margin-right:10px;\r\n");
	ViewBuilder.Append("    padding-left:3px;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("<div>\r\n");
	ViewBuilder.Append("    <div>\r\n");
	ViewBuilder.Append("      <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("        <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td><span class=\"td-nav-title\">" + echo(taskinfo.title) + "-继续交办</span></td>\r\n");
	ViewBuilder.Append("              <td><div class=\"pull-right\">\r\n");
	ViewBuilder.Append("                  <button class=\"btn btn-danger\" id=\"btn_post\" type=\"button\">确定提交</button>\r\n");
	ViewBuilder.Append("                  <a onclick=\"TUtil.winClose();\" style=\"margin-right:3px;\" class=\"btn\">关闭</a>\r\n");
	ViewBuilder.Append("                  </div></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("   </div>\r\n");
	ViewBuilder.Append("   <div class=\"content\">\r\n");
	ViewBuilder.Append("      <div style=\"margin:8px 8px 8px 8px;\">\r\n");
	ViewBuilder.Append("      <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\" class=\"form-horizontal MultiFile-intercepted\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("      <input type=\"hidden\" value=\"1\" name=\"touid\" id=\"touid\">\r\n");
	ViewBuilder.Append("      <table class=\"items table table-bordered\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"150\">继续交办办理人：</td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                  <div class=\"users-select-block\">\r\n");
	ViewBuilder.Append("					<div id=\"host_op_block_div2\" class=\"clearfix\">\r\n");
	ViewBuilder.Append("						<input type=\"hidden\" id=\"PRCS_OP_USER2\" data_type=\"op_user_btn\" name=\"PRCS_OP_USER2\" value=\"\">\r\n");
	ViewBuilder.Append("                        <div class=\"sponsor\" style=\"float:left;\">\r\n");
	ViewBuilder.Append("                            <a class=\"prcs-op-uname\" id=\"TOP_FLAG_SHOW2\">主办人：</a>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("					</div>\r\n");
	ViewBuilder.Append("					<div id=\"prcs_op_block_div2\" class=\"clearfix\" style=\"margin:5px 0\">\r\n");
	ViewBuilder.Append("                        <input type=\"hidden\" data_type=\"op_user_btn\" id=\"PRCS_USER2\" name=\"PRCS_USER2\" value=\"\">\r\n");
	ViewBuilder.Append("						<div class=\"managers\" style=\"float:left;\">经办人：</div>\r\n");
	ViewBuilder.Append("					</div>\r\n");
	ViewBuilder.Append("				  </div>\r\n");
	ViewBuilder.Append("                  <a style=\"margin:0 4px;vertical-align:bottom;\" class=\"btn btn-success btn-small\" id=\"btn_selector\">选择经办/主办人</a>\r\n");
	ViewBuilder.Append("                  <a style=\"margin:0 4px;vertical-align:bottom;\" class=\"btn btn-small\" id=\"btn_clear\">清&nbsp;&nbsp;&nbsp;&nbsp;空</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"150\">继续交办附件：</td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                 <div>\r\n");
	ViewBuilder.Append("                  <input id=\"attachid\" name=\"attachid\" value=\"" + echo(taskinfo.attachid) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                  <input name=\"file_upload\" id=\"file_upload\" type=\"file\" multiple=\"multiple\" value=\"\">\r\n");
	ViewBuilder.Append("                  <div id=\"file-container\">\r\n");

	loop__id=0;
	foreach(AttachInfo item in AttachBll.GetAttachList(taskinfo.attachid))
	{
	loop__id++;
	ViewBuilder.Append("                       <div class=\"attachment-wrapper\" id=\"attachment_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("                           <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                           <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "\"><img width=\"16\" height=\"16\" src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(item.filename)) + ".gif\">" + echo(item.name) + "</a><span class=\"size\">(" + echo(FormatSize(item.filesize)) + ")</span>\r\n");
	ViewBuilder.Append("                           <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                               <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                               <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "\">阅读</a></li>\r\n");
	ViewBuilder.Append("                               <li><a target=\"_blank\" href=\"" + echo(plupath) + "ntko/index.aspx?aid=" + echo(item.id) + "\">编辑</a></li>\r\n");
	ViewBuilder.Append("                               <li><a onclick=\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(item.id) + "');return false;\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("                           </ul></div>\r\n");
	ViewBuilder.Append("                       </div>\r\n");
	}//end loop
	ViewBuilder.Append("                  </div>\r\n");
	ViewBuilder.Append("                 </div>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" valign=\"middle\">继续交办情况：</td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left\">\r\n");
	ViewBuilder.Append("                  <textarea id=\"content\" name=\"content\" style=\"width:800px; height:300px\" cols=\"20\" rows=\"2\"></textarea>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </form>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("   </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#file_upload').uploadify({\r\n");
	ViewBuilder.Append("            'swf': '" + echo(plupath) + "uploadify/uploadify.swf',\r\n");
	ViewBuilder.Append("            'uploader': '" + echo(plupath) + "attach/upload.aspx',\r\n");
	ViewBuilder.Append("            \"formData\": { 'attachid': '" + echo(taskinfo.attachid) + "', 'status': '1', 'app': '" + echo(setupinfo.markup) + "', 'postid': '" + echo(taskinfo.id) + "' },\r\n");
	ViewBuilder.Append("            'fileTypeExts': '" + echo(AttachBll.GetAttachTypeExts()) + "',\r\n");
	ViewBuilder.Append("            'onUploadSuccess': function (file, data, response) {\r\n");
	ViewBuilder.Append("                var obj = (new Function(\"return \" + data))();\r\n");
	ViewBuilder.Append("                if (obj.msg == '') {\r\n");
	ViewBuilder.Append("                    var html = \"<div class=\\\"attachment-wrapper\\\" id=\\\"attachment_\" + obj.aid + \"\\\">\";\r\n");
	ViewBuilder.Append("                    html += \"<div class=\\\"dropdown clearfix\\\">\";\r\n");
	ViewBuilder.Append("                    html += \"<a class=\\\"dropdown-toggle\\\" href=\\\"" + echo(plupath) + "pdf/index.aspx?aid=\" + obj.aid + \"\\\"><img src=\\\"" + echo(webpath) + "common/file/\" + obj.filetype + \".gif\\\" />\" + obj.name + \"</a><span class=\\\"size\\\">(\" + obj.size + \")</span>\";\r\n");
	ViewBuilder.Append("                    html += \"<ul class=\\\"dropdown-menu\\\">\";\r\n");
	ViewBuilder.Append("                    html += \"<li><a href=\\\"" + echo(plupath) + "attach/download.aspx?aid=\" + obj.aid + \"\\\">下载</a></li>\";\r\n");
	ViewBuilder.Append("                    html += \"<li><a target=\\\"_blank\\\" href=\\\"" + echo(plupath) + "pdf/index.aspx?aid=\" + obj.aid + \"\\\">阅读</a></li>\";\r\n");
	ViewBuilder.Append("                    html += \"<li><a target=\\\"_blank\\\" href=\\\"" + echo(plupath) + "ntko/index.aspx?aid=\" + obj.aid + \"\\\">编辑</a></li>\";\r\n");
	ViewBuilder.Append("                    html += \"<li><a onclick=\\\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=\" + obj.aid + \"');return false;\\\" href=\\\"#\\\">删除</a></li>\";\r\n");
	ViewBuilder.Append("                    html += \"</div>\";\r\n");
	ViewBuilder.Append("                    html += \"</div>\";\r\n");
	ViewBuilder.Append("                    $(\"#file-container\").append(html);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                else {\r\n");
	ViewBuilder.Append("                    alert(obj.msg);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_post\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\".sidebar\").height(height);\r\n");
	ViewBuilder.Append("            if ($(\".td-nav\").length > 0) {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height - $(\".td-nav\").height());\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
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
