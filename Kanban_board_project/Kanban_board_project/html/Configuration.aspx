<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Configuration.aspx.cs" Inherits="Kanban_board_project.html.Configuration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%-- <div style="width:700px; margin-left:auto; margin-right:auto; margin-top:auto">--%>
        <center>
        <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <ext:ResourceManager ID="ResourceManager1" runat="server" />
            <br />
     <ext:Panel ID="Panel"
        runat="server"         
        Height="200" 
        Width="500"
        Layout="AccordionLayout"
        Title="-o-"
         TitleAlign="Center">
              <Items>
                  
                  <ext:Panel ID="Panel1"
                        runat="server"         
                        Height="200" 
                        Width="500">
                      <Items>
                          <ext:Button ID="Button1" runat="server" Text="Button #1">

                          </ext:Button>
                      </Items>

                  </ext:Panel>
                  <ext:Panel ID="Panel2"
                        runat="server"         
                        Height="200" 
                        Width="500">
                      <Items>
                          <ext:Button ID="Button2" runat="server" Text="Button #1" Hidden="true">

                          </ext:Button>
                      </Items>

                  </ext:Panel>
                  <ext:Panel ID="Panel3"
                        runat="server"         
                        Height="200" 
                        Width="500">
                      <Items>
                          <ext:Button ID="Button3" runat="server" Text="Button #1" Hidden="true">

                          </ext:Button>
                      </Items>

                  </ext:Panel>
                  <ext:Panel ID="Panel4"
                        runat="server"         
                        Height="200" 
                        Width="500">
                      <Items>
                          <ext:Button ID="Button4" runat="server" Text="Button #1" Hidden="true">

                          </ext:Button>
                      </Items>

                  </ext:Panel>
                  <ext:Panel ID="Panel5"
                        runat="server"         
                        Height="200" 
                        Width="500">
                      <Items>
                          <ext:Button ID="Button5" runat="server" Text="Button #1" Hidden="true">

                          </ext:Button>
                      </Items>

                  </ext:Panel>
              </Items>
    </ext:Panel>
    </div>
    </center>
    </form>
    <script">


    </script>

</body>
</html>
