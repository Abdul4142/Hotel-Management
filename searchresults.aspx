<%@ Page Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="searchresults.aspx.cs" Inherits="searchresults" Title="Search Results" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
     <link href="CSS/MainMaster.css" rel="stylesheet" type="text/css" />
    <link href="CSS/TotalStyle.css" rel="stylesheet" type="text/css" />
    <link href="CSS/NewStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <table>
       <tr>
           <td>
               <asp:Label ID="Label1" runat="server" Text="Select "></asp:Label>
           </td>
           <td>
               <asp:DropDownList ID="drproom" runat="server"></asp:DropDownList>
           </td>
           <td>
               <asp:Button ID="btnsearch" runat="server" Text="Search Details" OnClick="btnsearch_Click" />
           </td>
       </tr>
   </table>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC"
        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        AllowPaging="True" PageSize="4" Width="361px" EnableModelValidation="True" >
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
       
    </asp:GridView>
</asp:Content>