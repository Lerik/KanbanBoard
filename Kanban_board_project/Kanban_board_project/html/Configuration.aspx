<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Configuration.aspx.cs" Inherits="Kanban_board_project.html.Configuration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Kanban Boards Project</title>

<link href="style.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
    </script>
</head>

<body>
<div class="style_2"><span class="style3"><a href="http://www.zonnebank-studio-vergelijk.nl" title="Zonnebank Zonnestudio"><strong>Zonnebank zonnestudio</strong></a></span></div>
<div id="wrap">
<div id="topbar">
<h1 id="sitename"><a href="index.aspx" target="_blank"><img src="images/multimedia/logo.png" width=250 height=65/></a></h1>
  <div id="menus">
  <ul id="topmenu">
<li><a href="Logout.aspx">Cerrar Sesión</a>
</li>
</ul>
</div>
</div>

<div id="content">
<div id="mainpage">
<p>

            <link rel="stylesheet" href="login_files/formoid1/formoid-default.css" type="text/css" />
<script type="text/javascript" src="login_files/formoid1/jquery.min.js"></script>
<form id="Form2" class="formoid-default" style="background-color:#FFFFFF;font-size:14px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;width:480px" title="My Formoid form" runat=server>
	
    <div class="element-text" ><h2 class="title">Configuración</h2></div>

        <%-- <div style="width:700px; margin-left:auto; margin-right:auto; margin-top:auto">--%>
        <center>
        <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <ext:ResourceManager ID="ResourceManager1" runat="server" />

     <ext:Panel ID="Panel1"
        runat="server"         
        Height="200" 
        Width="500"
        Layout="AccordionLayout"
        Title="-o-"
         TitleAlign="Center">
              
    </ext:Panel>
    </div>
    </center>

</form>
<script type="text/javascript" src="login_files/formoid1/formoid-default.js"></script>
</p>
</div>
    
</div>
</body>
</html>



















