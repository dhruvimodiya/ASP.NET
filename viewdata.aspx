<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewdata.aspx.cs" Inherits="cmms.viewdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="index.css">
    <style type="text/css">
        #form1 {
            height: 413px;
        }
    </style>
</head>
<body style="height: 526px">
     <nav>
    <div class="menu">
      <div class="logo">
        <a href="#">CodingLab</a>
      </div>
      <ul>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="complain.aspx">Complain Request</a></li>
        <li><a href="logout.aspx">Logout</a></li>
        <li><a href="viewdata.aspx"><% Response.Write(Session["email"]); %></a></li>
      </ul>
    </div>
  </nav>
    <br><br><br> <br><br><br>
    <form id="form1" runat="server">
        <div>
         
        </div>
        <center>
        <asp:GridView ID="GridView1" runat="server" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="200px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="126px" DataKeyNames="id" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" RowCancelingEdit ="GridView1_RowCancelingEdit">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Complain_ID" SortExpression="int" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="varchar(50)" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="varchar" />
                <asp:BoundField DataField="device" HeaderText="Device" SortExpression="varchar(50)" />
                <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
                <asp:BoundField DataField="problem" HeaderText="When did your problem start?" SortExpression="varchar(150)" />
                <asp:BoundField DataField="problemoc" HeaderText="What were you doing when the problem occurred?" SortExpression="varchar(150)" />
                <asp:BoundField DataField="date" HeaderText="Date" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                <ControlStyle BackColor="Black" ForeColor="White" Height="50px" Width="90px" />
                <FooterStyle Font-Size="Medium" ForeColor="White" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle BackColor="Black" ForeColor="White" Height="50px" Width="90px" />
                <FooterStyle BackColor="#990000" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            </center>
    </form>
</body>
</html>
