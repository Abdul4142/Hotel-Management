<%@ Page Language="C#"  MasterPageFile="~/MainMaster.master"  AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="User Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="CSS/MainMaster.css" rel="stylesheet" type="text/css" />
    <link href="CSS/TotalStyle.css" rel="stylesheet" type="text/css" />
    <link href="CSS/NewStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <br />
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="txtfeedname" runat="server" Style="z-index: 100; left: 472px; position: absolute;
        top: 328px" Width="229px" TabIndex="4"></asp:TextBox>
    <span style="font-size: 14pt">&nbsp; </span>
    <asp:Button ID="Button1" runat="server" Font-Size="Medium" OnClick="Button1_Click"
        Style="z-index: 101; left: 472px; position: absolute; top: 591px" Text="submit" ForeColor="DimGray" TabIndex="7" />
    &nbsp;<span style="font-size: 14pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
    <asp:Label ID="Label1" runat="server" BackColor="White" Font-Bold="False" Font-Size="Large"
        ForeColor="DimGray" Style="z-index: 102; left: 338px; position: absolute;
        top: 331px; text-align: left" Text="Name" Width="89px"></asp:Label>
    <asp:Label ID="Label4" runat="server" BackColor="IndianRed" Font-Bold="False" Font-Size="Large"
        Height="22px" Style="z-index: 113; left: 337px; vertical-align: middle; position: absolute;
        top: 270px; text-align: center" Text=" Please Fill The Following Details:&#13;&#10;"
        Width="449px"></asp:Label>
    <br />
    <br />
   
    <br />
    <br />
    <br />
    <br />
    
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Large" Style="z-index: 106; left: 338px;
        position: absolute; top: 403px; text-align: left" Text="Email Id" Width="85px" ForeColor="DimGray"></asp:Label>
    <asp:TextBox ID="txtfeedemail" runat="server" Style="z-index: 107; left: 473px; position: absolute;
        top: 408px" Width="230px" TabIndex="5"></asp:TextBox>
    
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Size="Large" Style="z-index: 109; left: 338px;
        position: absolute; top: 498px" Text="Feedback" ForeColor="DimGray"></asp:Label>
    <asp:TextBox ID="txtfeedback" runat="server" Font-Size="Small" Height="73px" Style="z-index: 110;
        left: 472px; position: absolute; top: 483px" TextMode="MultiLine" Width="237px" TabIndex="6"></asp:TextBox>
    <br />
    <br />
    <br />
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

