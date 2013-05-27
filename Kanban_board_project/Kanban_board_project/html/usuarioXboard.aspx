<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarioXboard.aspx.cs" Inherits="Kanban_board_project.html.usuarioXboard" %>

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
<form id="Form2" class="formoid-default" style="background-color:#FFFFFF;font-size:14px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;width:480px" title="My Formoid form" runat=server>
	
    <div class="element-text" ><h2 class="title">Agregar Viewers</h2></div>

    <div>
    

    <p align="center">
        <asp:Label ID="Label2" runat="server" Text="Correo"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtnombre" runat="server" Width="171px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Enviar" style="height: 26px" />
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="continuar" 
            PostBackUrl="~/html/drawKanban.aspx" />
    </p>
    <p align="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KanbanConnectionString %>" 
            
            
            
            SelectCommand="SELECT USUARIOS.IDUSUARIO AS imagen, USUARIOS.NOMBRE, USUARIOS.PROFECION, ROLE.ROLE FROM USUARIOSxBOARD INNER JOIN USUARIOS ON USUARIOSxBOARD.IDUSUARIO = USUARIOS.IDUSUARIO INNER JOIN ROLE ON USUARIOSxBOARD.ROLE = ROLE.IDROLE AND USUARIOSxBOARD.ROLE = 1">
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            DataKeyNames="imagen" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td id="Td1" runat="server" style="">
                    imagen:
                    <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="imagen" Mode="ReadOnly" />
                    <br />
                    NOMBRE:
                    <asp:DynamicControl ID="DynamicControl2" runat="server" DataField="NOMBRE" Mode="ReadOnly" />
                    <br />
                    PROFECION:
                    <asp:DynamicControl ID="DynamicControl3" runat="server" DataField="PROFECION" Mode="ReadOnly" />
                    <br />
                    ROLE:
                    <asp:DynamicControl ID="DynamicControl4" runat="server" DataField="ROLE" Mode="ReadOnly" />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td id="Td2" runat="server" style="">
                    imagen:
                    <asp:DynamicControl ID="DynamicControl5" runat="server" DataField="imagen" Mode="ReadOnly" />
                    <br />
                    NOMBRE:
                    <asp:DynamicControl ID="DynamicControl6" runat="server" DataField="NOMBRE" Mode="Edit" />
                    <br />
                    PROFECION:
                    <asp:DynamicControl ID="DynamicControl7" runat="server" DataField="PROFECION" Mode="Edit" />
                    <br />
                    ROLE:
                    <asp:DynamicControl ID="DynamicControl8" runat="server" DataField="ROLE" Mode="Edit" />
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
                <table id="Table1" runat="server" 
                    style="">
                    <tr>
                        <td>
                            No se han devuelto datos.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td id="Td3" runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td id="Td4" runat="server" style="">
                    NOMBRE:
                    <asp:DynamicControl ID="DynamicControl9" runat="server" DataField="NOMBRE" Mode="Insert" 
                        ValidationGroup="Insert" />
                    <br />
                    PROFECION:
                    <asp:DynamicControl ID="DynamicControl10" runat="server" DataField="PROFECION" Mode="Insert" 
                        ValidationGroup="Insert" />
                    <br />
                    ROLE:
                    <asp:DynamicControl ID="DynamicControl11" runat="server" DataField="ROLE" Mode="Insert" 
                        ValidationGroup="Insert" />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insertar" ValidationGroup="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Borrar" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td id="Td5" runat="server" style="">
                    imagen:
                    <asp:DynamicControl ID="DynamicControl12" runat="server" DataField="imagen" Mode="ReadOnly" />
                    <br />
                    NOMBRE:
                    <asp:DynamicControl ID="DynamicControl13" runat="server" DataField="NOMBRE" Mode="ReadOnly" />
                    <br />
                    PROFECION:
                    <asp:DynamicControl ID="DynamicControl14" runat="server" DataField="PROFECION" Mode="ReadOnly" />
                    <br />
                    ROLE:
                    <asp:DynamicControl ID="DynamicControl15" runat="server" DataField="ROLE" Mode="ReadOnly" />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td6" runat="server">
                            <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr ID="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr2" runat="server">
                        <td id="Td7" runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td id="Td8" runat="server" style="">
                    imagen:
                    <asp:DynamicControl ID="DynamicControl16" runat="server" DataField="imagen" Mode="ReadOnly" />
                    <br />
                    NOMBRE:
                    <asp:DynamicControl ID="DynamicControl17" runat="server" DataField="NOMBRE" Mode="ReadOnly" />
                    <br />
                    PROFECION:
                    <asp:DynamicControl ID="DynamicControl18" runat="server" DataField="PROFECION" Mode="ReadOnly" />
                    <br />
                    ROLE:
                    <asp:DynamicControl ID="DynamicControl19" runat="server" DataField="ROLE" Mode="ReadOnly" />
                    <br />
                </td>
            </SelectedItemTemplate>
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





















<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    </form>
</body>
</html>