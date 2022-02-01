<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="rent.aspx.cs" Inherits="rent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp;<br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                style="font-size: large" Text="Add Rent" Font-Size="X-Large"></asp:Label>

    <table style="height: 396px; width: 451px">
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                style="font-size: large" Text="Flat No"></asp:Label>
            </td><td>
                  <asp:DropDownList ID="DropDownList2" runat="server">
                  </asp:DropDownList>
            </td>
        </tr>
         <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                style="font-size: large" Text="Tanent Name"></asp:Label>
            </td><td>
                  <asp:DropDownList ID="DropDownList3" runat="server">
                  </asp:DropDownList>
            </td>
        </tr>

          <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#3333CC" 
                Text="Month"></asp:Label>
              </td><td>
                  <asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem>Jan</asp:ListItem>
                      <asp:ListItem>Feb</asp:ListItem>
                      <asp:ListItem>Mar</asp:ListItem>
                      <asp:ListItem>Apr</asp:ListItem>
                      <asp:ListItem>May</asp:ListItem>
                      <asp:ListItem>Jun</asp:ListItem>
                      <asp:ListItem>Jly</asp:ListItem>
                      <asp:ListItem>Aug</asp:ListItem>
                      <asp:ListItem>Sep</asp:ListItem>
                      <asp:ListItem>Oct</asp:ListItem>
                      <asp:ListItem>Nov</asp:ListItem>
                      <asp:ListItem>Dec</asp:ListItem>
                  </asp:DropDownList>
              </td>
        </tr>
          <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#0000CC" 
                Text="Rent"></asp:Label>
              </td><td>

                  <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 
              </td>
        </tr>
          <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="Maintainence Charge"></asp:Label>
              </td><td>
                  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
              </td>
        </tr>


           <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="Rent Paid Date"></asp:Label>
              </td><td>
                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
              </td>
        </tr> 

            <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#0033CC" 
                Text="Comments"></asp:Label>
              </td><td>
                  <asp:TextBox ID="TextBox4" runat="server" Height="36px" Width="207px"></asp:TextBox>
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
                Text="Rent Add successfully.."></asp:Label>
              </td>
              <td>
                 
              </td>
        </tr>
        </table>
</asp:Content>

