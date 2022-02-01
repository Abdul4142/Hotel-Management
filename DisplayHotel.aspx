<%@ Page Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true"
    CodeFile="DisplayHotel.aspx.cs" Inherits="DisplayHotel" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/MainMaster.css" rel="stylesheet" type="text/css" />
    <link href="CSS/TotalStyle.css" rel="stylesheet" type="text/css" />
    <link href="CSS/NewStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="box-orange" style="background-color: White">
        <h2 class="section">
            <table style="width: 100%" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="center">
                        <b>
                            <asp:Label ID="LabelCityName" runat="server" Text=""></asp:Label>
                        </b>
                    </td>
                </tr>
            </table>
        </h2>
        <div class="content BorderOrange" style="padding-top: 20px; padding-left: 10px">
            <center>
                <table style="width: 90%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:GridView ID="GridViewHotel" runat="server" AutoGenerateColumns="False" ShowHeader="False"
                                OnRowDataBound="GridViewHotel_RowDataBound" DataKeyNames="id" AllowPaging="True"
                                PageSize="1" OnPageIndexChanging="GridViewHotel_PageIndexChanging" OnRowCommand="GridViewHotel_RowCommand"
                                Width="100%" GridLines="None">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table style="width: 100%" class="ContentColor">
                                              
                                                <tr>
                                                    <td>
                                                        <div class="box-blue" style="background-color: White">
                                                            <h2 class="section">
                                                                <b>Hotel Details Address</b>
                                                            </h2>
                                                        </div>
                                                        <div class="content BorderBlue" style="padding-top: 10px; padding-left: 20px">
                                                            <asp:Label ID="LabelAddress" runat="server" Text='<%#Bind("Roomno") %>'></asp:Label>
                                                            <br />
                                                            <asp:Label ID="LabelPhone" runat="server" Text='<%#Bind("floor") %>'></asp:Label>
                                                            <br />
                                                            <asp:Label ID="LabelEmail" runat="server" Text='<%#Bind("furnished") %>'></asp:Label>
                                                            <br />
                                                            <asp:Label ID="LabelState" runat="server" Text='<%#Bind("noofbed") %>'></asp:Label>
                                                            <br />
                                                            <asp:Label ID="LabelCity" runat="server" Text='<%#Bind("address") %>'></asp:Label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </div>
</asp:Content>
