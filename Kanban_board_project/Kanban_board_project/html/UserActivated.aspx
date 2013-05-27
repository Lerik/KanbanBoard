<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserActivated.aspx.cs" Inherits="Kanban_board_project.html.UserActivated" %>

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
<div class="style_2"><span class="style3"></span></div>
<div id="wrap">
<div id="topbar">
<h1 id="sitename"><a href="index.aspx" target="_blank"><img src="images/multimedia/logo.png" width=250 height=65/></a></h1>
  <div id="menus">
  <ul id="topmenu">
<li><a href="register.aspx">Registrarse</a>
</li>
</ul>
</div>
</div>

<div id="content">
<div id="mainpage">
<p>

            <link rel="stylesheet" href="login_files/formoid1/formoid-default.css" type="text/css" />
<script type="text/javascript" src="login_files/formoid1/jquery.min.js"></script>
<form id="Form1" class="formoid-default" style="background-color:#FFFFFF;font-size:14px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;width:480px" title="My Formoid form" method="post" runat=server>
	
    <div class="element-text" ><h2 class="title"><asp:Label ID="Label2" runat="server" Text="Activación Completa"></asp:Label></h2></div>

    <asp:Label ID="Label1" runat="server" Text="Usted ha activado su suscripción exitosamente. Ahora puede comenzar a trabajar en sus proyectos de una manera mas organizada
    para asegurar la finalización del mismo en el tiempo que usted estipuló."></asp:Label>
    
    <div class="element-submit" >
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Ir a mi Dashboard" />
    </div>

</form>
<script type="text/javascript" src="login_files/formoid1/formoid-default.js"></script>
</p>
</div>
    
</div>
</body>
</html>

