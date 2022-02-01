<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="AddCustomer.aspx.cs" Inherits="tenant" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/MainMaster.css" rel="stylesheet" type="text/css" />
    <link href="CSS/TotalStyle.css" rel="stylesheet" type="text/css" />
    <link href="CSS/NewStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
     <br />
    <br />
    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                style="font-size: large" Text="Add New Customer" Font-Size="X-Large"></asp:Label>
     <table style="height: 396px; width: 451px">

         <tr>
        <td>
            <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                style="font-size: large" Text="Room No"></asp:Label>
            </td><td>
                <asp:DropDownList ID="drproom" runat="server" Height="16px" Width="118px"></asp:DropDownList>
            </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                style="font-size: large" Text="Name"></asp:Label>
            </td><td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#3333CC" 
                Text="Address"></asp:Label>
              </td><td>
                  <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
              </td>
        </tr>
          <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                Text="Mobile"></asp:Label>
              </td><td>

                  <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 
              </td>
        </tr>
        
      
           <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="Is Married"></asp:Label>
              </td><td>
                   <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g1" Text="Yes" />
                   <asp:RadioButton ID="RadioButton2" runat="server" Checked="True" GroupName="g1" Text="No" />
              </td>
        </tr>  <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="Total Members"></asp:Label>
              </td><td>
                  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
              </td>
        </tr>  <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="Initial Deposit"></asp:Label>
              </td><td>
                  <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
              </td>
        </tr>  <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="Daily Rent"></asp:Label>
              </td><td>
                  <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
              </td>
        </tr>

          <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="Booking From Date "></asp:Label>
              </td><td>
                  <asp:TextBox ID="txtfrom" runat="server"></asp:TextBox>
              </td>
        </tr>

          <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="Booking To Date"></asp:Label>
              </td><td>
                  <asp:TextBox ID="txttodate" runat="server"></asp:TextBox>
              </td>
        </tr>

          <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#0066FF" 
                Text="Book Room" OnClick="Button1_Click"  />
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
       <asp:GridView ID="GridView1" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="445px">
           <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
           <EditRowStyle BackColor="#999999" />
           <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
           <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
       </asp:GridView>
   </div>
    </asp:Content>


