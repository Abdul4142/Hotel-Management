<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="viewfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="CSS/MainMaster.css" rel="stylesheet" type="text/css" />
    <link href="CSS/TotalStyle.css" rel="stylesheet" type="text/css" />
    <link href="CSS/NewStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
       AllowPaging="True" PageSize="4" >
       
    </asp:GridView>
</asp:Content>

