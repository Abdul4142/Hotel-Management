<%@ Page Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Addroom.aspx.cs" Inherits="_Default" Title="HomePage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
     <link href="CSS/MainMaster.css" rel="stylesheet" type="text/css" />
        <link href="CSS/TotalStyle.css" rel="stylesheet" type="text/css" />
        <link href="CSS/NewStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <asp:Label ID="Label1" runat="server" Text="Add New Room" ForeColor="#6600FF" 
            style="font-size: xx-large; font-weight: 700"></asp:Label>
        <table style="height: 396px; width: 451px">
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                style="font-size: large" Text="Room NO."></asp:Label>
            </td><td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#3333CC" 
                Text="Floor"></asp:Label>
              </td><td>
                   <asp:DropDownList ID="DropDownList2" runat="server">
                      <asp:ListItem>First Floor</asp:ListItem>
                      <asp:ListItem>Second Floor</asp:ListItem>
                      <asp:ListItem>Third Floor</asp:ListItem>
                      <asp:ListItem>Fourth Floor</asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                  </asp:DropDownList>
              </td>
        </tr>
          <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                Text="Room Type"></asp:Label>
              </td><td>

                  <asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem>Furnished</asp:ListItem>
                      <asp:ListItem>Non Furnished</asp:ListItem>
                  </asp:DropDownList>
                 
              </td>
        </tr>
          <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="No of Bed"></asp:Label>
              </td><td>
                  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
              </td>
        </tr>
          <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#0066FF" 
                Text="SAVE" OnClick="Button1_Click" />
              </td><td>
                  <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#CC3300" 
                      Text="CANCEL" />
              </td>
        </tr>

           
          <tr>
        <td colspan="2">
             <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Lime"  Visible="False"
                Text="Add successfully.."></asp:Label>
              </td>
              <td>
                 
              </td>
        </tr>
        </table>

    <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" EnableModelValidation="True" ForeColor="Black" GridLines="None" Width="444px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:GridView>
    </div>
</asp:Content>



