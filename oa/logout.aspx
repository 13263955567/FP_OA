<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Web.Controller.logout" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Web" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link id=\"skinlayercss\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        layer.msg('" + echo(msg) + "', 0, 1);\r\n");
	ViewBuilder.Append("    </");
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
