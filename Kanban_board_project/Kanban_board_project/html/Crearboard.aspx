<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crearboard.aspx.cs" Inherits="Kanban_board_project.html.Crearboard" %>



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
<form id="Form2" class="formoid-default" style="background-color:#FFFFFF;font-size:14px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;width:480px" runat=server>
	
<asp:Label ID="LblErrorBoard" runat="server" Font-Italic="True" ForeColor="#FF6600"></asp:Label>
    <div class="element-text" ><h2 class="title">Crear un Tablero para tu Proyecto</h2></div>

    <div>   

 <p align="center">
        <br />
        <label class="title" id="lbluser">Nombre del proyecto</label>
        
    &nbsp;
        <input type="text" name="input" id="board" required="required" runat="server" /></div>
    <div class="element-submit" >
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Crear"/>
    </div>
    </p>
     
    </div>

</form>
<script type="text/javascript" src="login_files/formoid1/formoid-default.js"></script>
</p>
</div>
    
</div>
</body>
</html>
















