<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationFormUI.aspx.cs" Inherits="PatientManagementApp.UI.RegistrationFormUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            width: 164px;
        }
        .auto-style3 {
            width: 97px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="nav-justified">
        <tr>
            <td class="auto-style1" style="width: 438px">
                <p>
                </p>
            </td>
            <td class="text-center" style="width: 201px; text-decoration: underline">
                <p>
                    <strong>Registration</strong></p>
            </td>
            <td class="auto-style2">
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td class="auto-style3">
                <p>
                    <asp:LinkButton ID="loginButton" runat="server" ForeColor="Blue" OnClick="loginButton_Click">Log In</asp:LinkButton>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 438px">
                <p>
                    User Type:</p>
            </td>
            <td style="width: 201px">
                <p>
                <asp:DropDownList ID="userTypeDDList" runat="server" Width="180px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Assistance</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                </asp:DropDownList>
                </p>
            </td>
            <td class="auto-style2">
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td class="auto-style3">
                <p>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 438px">
                <p>
                    User Name:</p>
            </td>
            <td style="width: 201px">
                <p>
                <asp:TextBox ID="userNameTextBox" runat="server" required data-value-missing="Required" Width="180px"></asp:TextBox>
                </p>
            </td>
            <td class="auto-style2">
            </td>
            <td>
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td class="auto-style3">
                <p>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 438px">
                <p>
                    Password:</p>
            </td>
            <td style="width: 201px">
                <p>
                <asp:TextBox ID="passwordTextBox" runat="server" required data-value-missing="Required" Width="180px"></asp:TextBox>
                </p>
            </td>
            <td class="auto-style2">
            </td>
            <td>
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td class="auto-style3">
                <p>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 438px">
                <p>
                    Confirm Password:</p>
            </td>
            <td style="width: 201px">
                <p>
                <asp:TextBox ID="confirmTextBox" runat="server" required data-value-missing="Required" Width="180px"></asp:TextBox>
                </p>
            </td>
            <td class="auto-style2">
                <p>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTextBox" ControlToValidate="confirmTextBox" ErrorMessage="Password does not match." ForeColor="Red"></asp:CompareValidator>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td class="auto-style3">
                <p>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 438px">
                <p>
                </p>
            </td>
            <td style="width: 201px">
                <p>
                <asp:Button ID="submitButton" runat="server" ForeColor="White" OnClick="submitButton_Click" Text="Submit" Width="180px" BackColor="#33CC33" />
                </p>
            </td>
            <td class="auto-style2">
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td class="auto-style3">
                <p>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 438px">
                <p>
                </p>
            </td>
            <td style="width: 201px">
                <p>
                <asp:Button ID="newButton" runat="server" ForeColor="White"  Text="New" Width="180px" OnClick="newButton_Click" BackColor="#3399FF" />
                </p>
            </td>
            <td class="auto-style2">
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td>
                <p>
                </p>
            </td>
            <td class="auto-style3">
                <p>
                </p>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
