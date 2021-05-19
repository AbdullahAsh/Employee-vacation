<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp_vac.aspx.cs" Inherits="Vacation.Emp_vac" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 158px;
        }
        .auto-style3 {
            width: 151px;
        }
        .auto-style4 {
            width: 151px;
            height: 23px;
        }
        .auto-style5 {
            width: 158px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 151px;
            height: 26px;
        }
        .auto-style8 {
            width: 158px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <h1>Employee Vacation Request Form</h1>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">Submission Date:</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" OnLoad="Label1_Load" Text="Date"></asp:Label>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">Employee Name:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" OnLoad="TextBox1_Load"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*This field is required" Font-Bold="True" Font-Italic="True" Font-Overline="False" ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Title:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="*This field is required" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Department:</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="154px">
                        <asp:ListItem Value="Choose any"></asp:ListItem>
                        <asp:ListItem>CyberSecurity Engineer</asp:ListItem>
                        <asp:ListItem>Full Stack Developer</asp:ListItem>
                        <asp:ListItem>Machine Learning Enginner</asp:ListItem>
                        <asp:ListItem>Dot Net Developer</asp:ListItem>
                        <asp:ListItem>Java Developer</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*This field is required" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Vacation Dates From:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" CssClass="auto-style5"></asp:TextBox>
                </td>
                <td class="auto-style6">
                 <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="*Date cannot be less than current date" ControlToValidate="TextBox3" Display="Dynamic" Operator="GreaterThanEqual" Type="Date" SetFocusOnError="True">*Date cannot be less than current date</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="*This field is required" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Vacation Dates To:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" CultureInvariantValues="True" Display="Dynamic" ErrorMessage="*Error" Operator="GreaterThanEqual" SetFocusOnError="True" Type="Date">*Error</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*This field is required" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Returning:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CultureInvariantValues="True" Display="Dynamic" ErrorMessage="*Error" Operator="GreaterThanEqual" SetFocusOnError="True" Type="Date">*Error</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="*This field is required" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Total Numbers Of Days Requested:</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Notes:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Outset" Height="39px" Text="Submit Form" Width="86px" />
        </p>
    </form>
</body>
</html>