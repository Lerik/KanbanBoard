<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yourKanban.aspx.cs" Inherits="Kanban_board_project.html.yourKanban" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>
        var notifyDrop = function (source, e, data) {
            var targetCt = Ext.getCmp(this.el.dom.id),
                targetPanel = targetCt.items.get(0),
                sourceCt = data.panel.ownerCt;

            sourceCt.add(targetPanel);
            targetCt.add(data.panel);

            Ext.defer(function () {
                targetPanel.doLayout();
                data.panel.doLayout();
            }, 1);
        };

        var startDrag = function () {
            Ext.select(".dropable").addCls("x-drop-marker");
            Ext.select(".draggable").hide();
            this.panelProxy.moveOnDrag = false;
        };

        var endDrag = function () {
            Ext.select(".dropable").removeCls("x-drop-marker");
            Ext.select(".draggable").show();
            Ext.panel.DD.prototype.endDrag.apply(this, arguments);
        };
    </script>
    <style>
        .invite {
            background-color : #99bbe8 !important;
            
            border-style:none;
        }
        .x-drop-marker {
            background-color : silver;
            border-color:black;
        }

    </style>

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
<li><a href="register.aspx">Registrarse</a>
</li>
</ul>
</div>
</div>

<div id="content">
<div id="mainpage">
    <form id="form1" runat="server">
    <div>
    
        <ext:ResourceManager ID="ResourceManager1" runat="server" />
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <div   align="right" id="div1">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Configuracion" />
        </div>

        <ext:Panel ID="Panel1" runat="server" Height="300" Title="Title" TitleAlign="Center" AutoScroll="true">
            <LayoutConfig>
                <ext:HBoxLayoutConfig Align="Stretch" />
            </LayoutConfig>
            <Items>
                
            </Items>
        </ext:Panel>

        <ext:DropTarget ID="DropTarget1" 
            runat="server" 
            Target="${.dropable}" 
            Group="panelDD" 
            OverClass="invite">
            <NotifyDrop Fn="notifyDrop" />
            <NotifyOut Handler="this.el.removeCls('invite');" />
            <NotifyOver Handler="Ext.select('.dropable').removeCls('invite'); this.el.addCls('invite');" />
        </ext:DropTarget>
    </div>
    </form>
</div>
    
</div>
</body>
</html>
