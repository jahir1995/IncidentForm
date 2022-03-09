<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="IncidentForm.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        #GridView1 {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:14px;
            text-align:center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <h3>Submitted Incident's</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="incidentno" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="reportedby" HeaderText="reportedby" SortExpression="reportedby" />
                <asp:BoundField DataField="dateofreport" HeaderText="dateofreport" SortExpression="dateofreport" />
                <asp:BoundField DataField="title_role" HeaderText="title_role" SortExpression="title_role" />
                <asp:BoundField DataField="incidentno" HeaderText="incidentno" InsertVisible="False" ReadOnly="True" SortExpression="incidentno" />
                <asp:BoundField DataField="incidenttype" HeaderText="incidenttype" SortExpression="incidenttype" />
                <asp:BoundField DataField="dateofincident" HeaderText="dateofincident" SortExpression="dateofincident" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="zipcode" HeaderText="zipcode" SortExpression="zipcode" />
                <asp:BoundField DataField="incidentdescription" HeaderText="incidentdescription" SortExpression="incidentdescription" />
                <asp:BoundField DataField="followupaction" HeaderText="followupaction" SortExpression="followupaction" />
                <asp:CommandField ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:incidentmanagementConnectionString %>" SelectCommand="SELECT * FROM [incidentform]" UpdateCommand="update incidentform set reportedby=@reportedby, dateofreport=@dateofreport, title_role=@title_role, incidenttype=@incidenttype, dateofincident=@dateofincident, location=@location, state=@state, city=@city, zipcode=@zipcode, incidentdescription=@incidentdescription, followupaction=@followupaction where incidentno=@incidentno"></asp:SqlDataSource>
            </form>
            <a href="Incident.aspx">Go Back</a>
</body>
</html>
