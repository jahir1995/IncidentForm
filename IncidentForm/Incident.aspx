<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Incident.aspx.cs" Inherits="IncidentForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
     
    

    <script>
        $(function ()
        {
            $("#txtdate").datepicker(
                {
                    dateFormat: 'dd/mm/yy', 
                    changeMonth: true,
                    changeYear: true
                }
            );
            $("#txtincdate").datepicker(
                {
                    dateFormat: 'dd/mm/yy',
                    //changeMonth: true,
                    //changeYear: true
                }
            ).datepicker('setDate','0');


        });
    </script>
    
    <style type="text/css">
        .auto-style2 {
            width: 230px;
        }
       .container {
           padding:30px 10px;
       }
        h2 {
            text-align: center;
            background-color: #2E4E69;
            padding: 10px;
            color: white;
        }
        .form_items {
            text-align: right;
        }
        .form_btns {
            padding: 10px;
        }
        a {
            text-decoration:none;
            margin:15px 10px 10px 10px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        
    <div class="container">
    <table width="100%" class="table table-striped">
        <tr>
            <td class="form_items">REPORTED BY:</td>
            <td>
                <asp:TextBox ID="txtreport" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="txtreport" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="form_items">DATE OF REPORT:</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="txtdate" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="form_items">TITLE / ROLE:</td>
            <td>
                <asp:TextBox ID="txtrole" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="txtrole" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="form_items">INCIDENT NO:</td>
            <td>
                <asp:TextBox ID="txtincno" runat="server" Width="210px" Enabled="False" EnableViewState="False"></asp:TextBox>
            </td>
        </tr>
    </table>
        <div>
            <h2>INCIDENT INFORMATION</h2>
        </div>

    
    <table width="100%" class="table table-striped">
        <tr>
            <td class="form_items">INCIDENT TYPE:</td>
            <td>
                <asp:DropDownList ID="ddlinctype" runat="server" Width="210px">
                    <asp:ListItem>Selcet Incident Type</asp:ListItem>
                    <asp:ListItem>Accident</asp:ListItem>
                    <asp:ListItem>Problem</asp:ListItem>
                    <asp:ListItem>Report</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlinctype" ErrorMessage="Required Field" ForeColor="Red" InitialValue="Select Incident Type" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="form_items">DATE OF INCIDENT:</td>
            <td>
                <asp:TextBox ID="txtincdate" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtincdate">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="form_items">LOCATION:</td>
            <td colspan="5">
                <asp:TextBox ID="txtlocation" runat="server" Width="88%" Height="25px" CssClass="auto-style3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="txtlocation" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="form_items">STATE:</td>
            <td>
                <asp:DropDownList ID="ddlstate" runat="server" Width="210px" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                    <asp:ListItem>Select State</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Andra Pradesh</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlcity" ErrorMessage="Required Field" ForeColor="Red" InitialValue="Select City" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td class="form_items">CITY:</td>
            <td>
                <asp:DropDownList ID="ddlcity" runat="server" Width="210px" AutoPostBack="True">
                    <asp:ListItem>Select City</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlstate" ErrorMessage="Required Field" ForeColor="Red" InitialValue="Select State" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td class="form_items">ZIP CODE:</td>
            <td>
                <asp:TextBox ID="txtzipcode" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="txtzipcode" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
        <br />
        <div>
        <asp:Label ID="Label1" runat="server" Text="INCIDENT DESCRIPTION" ForeColor="RoyalBlue"></asp:Label><br />
        <asp:TextBox ID="txtIncDes" runat="server" Width="100%" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtIncDes" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="FOLLOW-UP ACTION" ForeColor="RoyalBlue"></asp:Label>
        <br />
            <asp:TextBox ID="txtFlwAct" runat="server" Width="100%" TextMode="MultiLine" OnTextChanged="txtFlwAct_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtFlwAct" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Submit"  BorderStyle="Solid" OnClick="Button1_Click" class="btn btn-success"/>
            <a href="Show.aspx">Show</a>
            <a href="Search.aspx">Search</a>
        </div>
        </div>
    </form>
</body>
</html>
