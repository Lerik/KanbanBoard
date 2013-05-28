<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="drawKanban.aspx.cs" Inherits="Kanban_board_project.html.drawKanban" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Kanban Boards Project</title>
<link rel="shortcut icon" href="images/webicon.jpg" />
<link href="style.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
    </script>
</head>

<body>
<div class="style_2"><span class="style3"></span></div>
<div id="wrap">
<div id="topbar">
<h1 id="sitename"><a href="index.aspx" target="_blank"><img src="images/multimedia/logo.png" width=250 height=65/></a></h1>
  <div id="menus">
  <ul id="topmenu">
<li><a href="Dashboard.aspx">Dashboard</a>
</li>
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

<form id="form1" runat="server">
    <div>
    
        <ext:ResourceManager ID="ResourceManager1" runat="server" />
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <div   align="right" id="div1">
            <asp:Button ID="Button2" runat="server" Text="Configuracion" 
                PostBackUrl="~/html/Configuration.aspx" onclick="Button2_Click" />
        </div>

        <ext:Panel ID="Panel1" runat="server" Height="300"  Title="Title" TitleAlign="Center" AutoScroll="true">
            <LayoutConfig>
                <ext:HBoxLayoutConfig Align="Stretch" />
            </LayoutConfig>
            <Items>
            </Items>
            
        <Plugins>
            <ext:BoxReorderer ID="BoxReorderer1" runat="server" />
        </Plugins>
            
        </ext:Panel>
    </form>

    <script type="text/javascript" src="login_files/formoid1/formoid-default.js"></script>

</p>
</div>
    
</div>
</body>
</html>





















