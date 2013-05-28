<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarioXboard.aspx.cs" Inherits="Kanban_board_project.html.usuarioXboard" %>

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
	
    <asp:Label ID="LblErrorViewer" runat="server" Font-Italic="True" 
            ForeColor="#FF9900"></asp:Label>
    <div class="element-text" ><h2 class="title">Agregar Viewers</h2></div>

    <div>

    <p align="center">
        <asp:Label ID="Label2" runat="server" Text="Correo"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtnombre" runat="server" Width="171px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Agregar" style="height: 26px" />
&nbsp;&nbsp;&nbsp;
        </p>
    <p align="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KanbanConnectionString %>" 
            
            
            SelectCommand="SELECT USUARIOS.IDUSUARIO AS imagen, USUARIOS.NOMBRE, USUARIOS.PROFECION, ROLE.ROLE 
FROM USUARIOSxBOARD INNER JOIN USUARIOS ON USUARIOSxBOARD.IDUSUARIO = USUARIOS.IDUSUARIO
  INNER JOIN ROLE ON USUARIOSxBOARD.ROLE = ROLE.IDROLE 
INNER JOIN BOARDS  ON USUARIOSxBOARD.IDBOARD = BOARDS.IDBOARD  
WHERE USUARIOSxBOARD.ROLE = 2 AND USUARIOSxBOARD.IDBOARD = @idb">
            <SelectParameters>
                <asp:SessionParameter Name="idb" SessionField="boardid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            DataKeyNames="imagen" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="">
                    imagen:
                    
                        <asp:image ID="IMAGENLabel" runat="server"  Width='100px' Height='100px' align="center" ImageUrl='<%# "~/html/Handler1.ashx?id="+Eval("imagen") %>' />
                    
                    <br />
                    NOMBRE:
                    <asp:Label ID="NOMBRELabel" runat="server" Text='<%# Eval("NOMBRE") %>' />
                    <br />
                    PROFECION:
                    <asp:Label ID="PROFECIONLabel" runat="server" Text='<%# Eval("PROFECION") %>' />
                    <br />
                    ROLE:
                    <asp:Label ID="ROLELabel" runat="server" Text='<%# Eval("ROLE") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">
                    imagen:
                    <asp:Label ID="imagenLabel1" runat="server" Text='<%# Eval("imagen") %>' />
                    <br />
                    NOMBRE:
                    <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
                    <br />
                    PROFECION:
                    <asp:TextBox ID="PROFECIONTextBox" runat="server" 
                        Text='<%# Bind("PROFECION") %>' />
                    <br />
                    ROLE:
                    <asp:TextBox ID="ROLETextBox" runat="server" Text='<%# Bind("ROLE") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Actualizar" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancelar" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" 
                    style="">
                    <tr>
                        <td>
                            No se han devuelto datos.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">
                    NOMBRE:
                    <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
                    <br />
                    PROFECION:
                    <asp:TextBox ID="PROFECIONTextBox" runat="server" 
                        Text='<%# Bind("PROFECION") %>' />
                    <br />
                    ROLE:
                    <asp:TextBox ID="ROLETextBox" runat="server" Text='<%# Bind("ROLE") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insertar" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Borrar" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">
                    imagen:
                    
                        <asp:image ID="IMAGENLabel" runat="server"  Width='100px' Height='100px' align="center" ImageUrl='<%# "~/html/Handler1.ashx?id="+Eval("imagen") %>' />
                   
                    <br />
                    NOMBRE:
                    <asp:Label ID="NOMBRELabel" runat="server" Text='<%# Eval("NOMBRE") %>' />
                    <br />
                    PROFECION:
                    <asp:Label ID="PROFECIONLabel" runat="server" Text='<%# Eval("PROFECION") %>' />
                    <br />
                    ROLE:
                    <asp:Label ID="ROLELabel" runat="server" Text='<%# Eval("ROLE") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr ID="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </p>
            
    </div>

</form>
<script type="text/javascript" src="login_files/formoid1/formoid-default.js"></script>
</p>
</div>
    
</div>
</body>
</html>


















