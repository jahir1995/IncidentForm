<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="IncidentForm.Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="text-align:right">
            <asp:Label ID="Label1" runat="server" Text="Search Incident "></asp:Label>
            <asp:TextBox ID="txtsearchinc" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
        </div>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="incidentno">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="reportedbyLabel" runat="server" Text='<%# Eval("reportedby") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dateofreportLabel" runat="server" Text='<%# Eval("dateofreport") %>' />
                    </td>
                    <td>
                        <asp:Label ID="title_roleLabel" runat="server" Text='<%# Eval("title_role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidentnoLabel" runat="server" Text='<%# Eval("incidentno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidenttypeLabel" runat="server" Text='<%# Eval("incidenttype") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dateofincidentLabel" runat="server" Text='<%# Eval("dateofincident") %>' />
                    </td>
                    <td>
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="zipcodeLabel" runat="server" Text='<%# Eval("zipcode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidentdescriptionLabel" runat="server" Text='<%# Eval("incidentdescription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="followupactionLabel" runat="server" Text='<%# Eval("followupaction") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="reportedbyTextBox" runat="server" Text='<%# Bind("reportedby") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dateofreportTextBox" runat="server" Text='<%# Bind("dateofreport") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="title_roleTextBox" runat="server" Text='<%# Bind("title_role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidentnoLabel1" runat="server" Text='<%# Eval("incidentno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="incidenttypeTextBox" runat="server" Text='<%# Bind("incidenttype") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dateofincidentTextBox" runat="server" Text='<%# Bind("dateofincident") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="zipcodeTextBox" runat="server" Text='<%# Bind("zipcode") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="incidentdescriptionTextBox" runat="server" Text='<%# Bind("incidentdescription") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="followupactionTextBox" runat="server" Text='<%# Bind("followupaction") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="reportedbyTextBox" runat="server" Text='<%# Bind("reportedby") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dateofreportTextBox" runat="server" Text='<%# Bind("dateofreport") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="title_roleTextBox" runat="server" Text='<%# Bind("title_role") %>' />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="incidenttypeTextBox" runat="server" Text='<%# Bind("incidenttype") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dateofincidentTextBox" runat="server" Text='<%# Bind("dateofincident") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="zipcodeTextBox" runat="server" Text='<%# Bind("zipcode") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="incidentdescriptionTextBox" runat="server" Text='<%# Bind("incidentdescription") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="followupactionTextBox" runat="server" Text='<%# Bind("followupaction") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="reportedbyLabel" runat="server" Text='<%# Eval("reportedby") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dateofreportLabel" runat="server" Text='<%# Eval("dateofreport") %>' />
                    </td>
                    <td>
                        <asp:Label ID="title_roleLabel" runat="server" Text='<%# Eval("title_role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidentnoLabel" runat="server" Text='<%# Eval("incidentno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidenttypeLabel" runat="server" Text='<%# Eval("incidenttype") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dateofincidentLabel" runat="server" Text='<%# Eval("dateofincident") %>' />
                    </td>
                    <td>
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="zipcodeLabel" runat="server" Text='<%# Eval("zipcode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidentdescriptionLabel" runat="server" Text='<%# Eval("incidentdescription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="followupactionLabel" runat="server" Text='<%# Eval("followupaction") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">reportedby</th>
                                    <th runat="server">dateofreport</th>
                                    <th runat="server">title_role</th>
                                    <th runat="server">incidentno</th>
                                    <th runat="server">incidenttype</th>
                                    <th runat="server">dateofincident</th>
                                    <th runat="server">location</th>
                                    <th runat="server">state</th>
                                    <th runat="server">city</th>
                                    <th runat="server">zipcode</th>
                                    <th runat="server">incidentdescription</th>
                                    <th runat="server">followupaction</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="reportedbyLabel" runat="server" Text='<%# Eval("reportedby") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dateofreportLabel" runat="server" Text='<%# Eval("dateofreport") %>' />
                    </td>
                    <td>
                        <asp:Label ID="title_roleLabel" runat="server" Text='<%# Eval("title_role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidentnoLabel" runat="server" Text='<%# Eval("incidentno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidenttypeLabel" runat="server" Text='<%# Eval("incidenttype") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dateofincidentLabel" runat="server" Text='<%# Eval("dateofincident") %>' />
                    </td>
                    <td>
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="zipcodeLabel" runat="server" Text='<%# Eval("zipcode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="incidentdescriptionLabel" runat="server" Text='<%# Eval("incidentdescription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="followupactionLabel" runat="server" Text='<%# Eval("followupaction") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:incidentmanagementConnectionString %>" SelectCommand="SELECT * FROM [incidentform]"></asp:SqlDataSource>

    </form>

    <a href="Incident.aspx">Go Back</a>
</body>
</html>
