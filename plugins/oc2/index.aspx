<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_OC2.Controller.view" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限责任公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!--[if IE]>\r\n");
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>" + echo(attachinfo.name) + "-文档在线阅读</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/document.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/workflow.turn.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/selector.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" for=\"WebOffice1\" event=\"NotifyCtrlReady\">\r\n");
	ViewBuilder.Append("    try\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("        WebOffice1_NotifyCtrlReady()\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    catch(err)\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("        //setTimeout(\"WebOffice1_NotifyCtrlReady()\",1000);\r\n");
	ViewBuilder.Append("    }        \r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<!--导航栏-->\r\n");
	ViewBuilder.Append("<div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("  <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("    <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <span class=\"td-nav-title\" style=\"display: block;\">" + echo(attachinfo.name,70)+ "</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <div class=\"pull-right\">\r\n");
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn btn-primary\" href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(aid) + "\">下载文件</a>\r\n");
	ViewBuilder.Append("                  <a onclick=\"window.close();\" style=\"margin-right:3px;\" class=\"btn\">关闭</a>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("    <!-- -----------------------------== 装载weboffice控件 ==----------------------------------->\r\n");
	ViewBuilder.Append("    <object id=\"WebOffice1\" height=\"100%\" width=\"100%\" style=\"left: 0px; top: 0px\" classid=\"clsid:E77E049B-23FC-4DB8-B756-60529A35FAD5\" codebase=\"" + echo(plupath) + "oc2/WebOffice/weboffice.cab#Version=6,0,5,2\">\r\n");
	ViewBuilder.Append("        <param name=\"_ExtentX\" value=\"32385\">\r\n");
	ViewBuilder.Append("        <param name=\"_ExtentY\" value=\"13229\">\r\n");
	ViewBuilder.Append("    </object>\r\n");
	ViewBuilder.Append("    <!-- --------------------------------==  结束装载控件 ==------------------------------------->\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("<!--\r\n");
	ViewBuilder.Append("function WebOffice1_NotifyCtrlReady() \r\n");
	ViewBuilder.Append("{\r\n");
	ViewBuilder.Append("   document.all.WebOffice1.OptionFlag |= 128;\r\n");
	ViewBuilder.Append("   document.all.WebOffice1.LoadOriginalFile(\"" + echo(openurl) + "\", \"" + echo(filetype) + "\");\r\n");

	if (op==1)
	{
	ViewBuilder.Append("   document.all.WebOffice1.HideMenuItem(0x01 + 0x10 + 0x4000 + 0x02); //\r\n");
	ViewBuilder.Append("   document.all.WebOffice1.HideMenuArea(\"hideall\", \"\", \"\", \"\");\r\n");
	}//end if
	ViewBuilder.Append("   document.all.WebOffice1.SetTrackRevisions(1);\r\n");
	ViewBuilder.Append("   document.all.WebOffice1.ShowRevisions(0);   \r\n");
	ViewBuilder.Append("   document.all.WebOffice1.height = document.body.clientHeight - 20;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("//-->\r\n");
	ViewBuilder.Append("function SaveDoc() {\r\n");
	ViewBuilder.Append("   document.all.WebOffice1.HttpInit();			\r\n");
	ViewBuilder.Append("   var DocType=document.all.WebOffice1.DocType;\r\n");
	ViewBuilder.Append("   document.all.WebOffice1.HttpAddPostCurrFile(\"DocContent\", \"\"); 	//内容\r\n");
	ViewBuilder.Append("   document.all.WebOffice1.HttpAddPostString(\"officeType\",DocType);\r\n");
	ViewBuilder.Append("   document.all.WebOffice1.HttpAddPostString(\"FileExt\",\"doc\");\r\n");
	ViewBuilder.Append("	var vtRet;\r\n");
	ViewBuilder.Append("	vtRet = document.all.WebOffice1.HttpPost(\"" + echo(saveurl) + "\");\r\n");
	ViewBuilder.Append(" 	if(\"succeed\" == vtRet){\r\n");
	ViewBuilder.Append("		alert(\"保存成功！\");	\r\n");
	ViewBuilder.Append("	}else{\r\n");
	ViewBuilder.Append("		alert(\"保存失败！\");\r\n");
	ViewBuilder.Append("	}\r\n");
	ViewBuilder.Append("    IsSave=\"1\";\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("var IsSave=\"0\";\r\n");
	ViewBuilder.Append("window.onbeforeunload=function txt()\r\n");
	ViewBuilder.Append("{\r\n");
	ViewBuilder.Append(" if(IsSave=='0')\r\n");
	ViewBuilder.Append(" {\r\n");

	if (op==1)
	{
	ViewBuilder.Append("  if(window.confirm(\"是否保存文件\"))\r\n");
	ViewBuilder.Append("    SaveDoc();\r\n");
	}//end if
	ViewBuilder.Append("  } \r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("// -----------------------------== 隐藏修订 ==------------------------------------ //\r\n");
	ViewBuilder.Append("function UnShowRevisions() {\r\n");
	ViewBuilder.Append("	document.all.WebOffice1.ShowRevisions(0);\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("// --------------------------== 显示当前修订 ==---------------------------------- //\r\n");
	ViewBuilder.Append("function ShowRevisions() {\r\n");
	ViewBuilder.Append("	document.all.WebOffice1.ShowRevisions(1);\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("// 打开本地文件\r\n");
	ViewBuilder.Append("function docOpen() {\r\n");
	ViewBuilder.Append("    try{\r\n");
	ViewBuilder.Append("		var webObj=document.getElementById(\"WebOffice1\");\r\n");
	ViewBuilder.Append("		webObj.LoadOriginalFile(\"open\", \"\");\r\n");
	ViewBuilder.Append("	}catch(e){\r\n");
	ViewBuilder.Append("		alert(\"异常\\r\\nError:\"+e+\"\\r\\nError Code:\"+e.number+\"\\r\\nError Des:\"+e.description);\r\n");
	ViewBuilder.Append("	}\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" event=\"NotifyToolBarClick(iIndex)\" for=\"WebOffice1\">\r\n");
	ViewBuilder.Append("<!--\r\n");
	ViewBuilder.Append("WebOffice1_NotifyToolBarClick(iIndex);\r\n");
	ViewBuilder.Append("//-->\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    function WebOffice1_NotifyToolBarClick(iIndex) {\r\n");
	ViewBuilder.Append("        if (iIndex == 32776) {\r\n");
	ViewBuilder.Append("            SaveDoc();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else if (iIndex == 32777) {\r\n");
	ViewBuilder.Append("            docOpen()\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function AdjustSize() {\r\n");
	ViewBuilder.Append("        if (document.all.WebOffice1) {\r\n");
	ViewBuilder.Append("            document.all.WebOffice1.height = document.body.clientHeight - 20;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    window.onresize = AdjustSize;\r\n");
	ViewBuilder.Append("    /****************************************************\r\n");
	ViewBuilder.Append("    *\r\n");
	ViewBuilder.Append("    *	设置weboffice自带工具栏“新建文档”显示或隐藏\r\n");
	ViewBuilder.Append("    *\r\n");
	ViewBuilder.Append("    /****************************************************/\r\n");
	ViewBuilder.Append("    function bToolBar_New_onclick() {\r\n");
	ViewBuilder.Append("        try {\r\n");
	ViewBuilder.Append("            var webObj = document.getElementById(\"WebOffice1\");\r\n");
	ViewBuilder.Append("            var vCurItem = document.all.WebOffice1.HideMenuItem(0);\r\n");
	ViewBuilder.Append("            //根据vCurItem判断当前按钮是否显示\r\n");
	ViewBuilder.Append("            if (vCurItem & 0x01) {\r\n");
	ViewBuilder.Append("                webObj.HideMenuItem(0x01); //Show it\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                webObj.HideMenuItem(0x01 + 0x8000); //Hide it\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        } catch (e) {\r\n");
	ViewBuilder.Append("            alert(\"异常\\r\\nError:\" + e + \"\\r\\nError Code:\" + e.number + \"\\r\\nError Des:\" + e.description);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    /****************************************************\r\n");
	ViewBuilder.Append("    *\r\n");
	ViewBuilder.Append("    *				显示打印对话框\r\n");
	ViewBuilder.Append("    *\r\n");
	ViewBuilder.Append("    /***************************************************/\r\n");
	ViewBuilder.Append("    function showPrintDialog() {\r\n");
	ViewBuilder.Append("        try {\r\n");
	ViewBuilder.Append("            var webObj = document.getElementById(\"WebOffice1\");\r\n");
	ViewBuilder.Append("            webObj.PrintDoc(1);\r\n");
	ViewBuilder.Append("        } catch (e) {\r\n");
	ViewBuilder.Append("            alert(\"异常\\r\\nError:\" + e + \"\\r\\nError Code:\" + e.number + \"\\r\\nError Des:\" + e.description);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    /****************************************************\r\n");
	ViewBuilder.Append("    *\r\n");
	ViewBuilder.Append("    *					保存文档\r\n");
	ViewBuilder.Append("    *\r\n");
	ViewBuilder.Append("    /****************************************************/\r\n");
	ViewBuilder.Append("    function newSave() {\r\n");
	ViewBuilder.Append("        try {\r\n");
	ViewBuilder.Append("            var webObj = document.getElementById(\"WebOffice1\");\r\n");
	ViewBuilder.Append("            webObj.Save();\r\n");
	ViewBuilder.Append("        } catch (e) {\r\n");
	ViewBuilder.Append("            alert(\"异常\\r\\nError:\" + e + \"\\r\\nError Code:\" + e.number + \"\\r\\nError Des:\" + e.description);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").height(height - $(\".td-nav\").height());\r\n");
	ViewBuilder.Append("            $(\"#tab_frame\").height(height - $(\".td-nav\").height());\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>