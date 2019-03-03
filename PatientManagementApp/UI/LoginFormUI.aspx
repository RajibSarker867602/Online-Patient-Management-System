<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginFormUI.aspx.cs" Inherits="PatientManagementApp.UI.LoginFormUI" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
    
  <meta charset="UTF-8">
  <title>User Login</title>
  
    <link rel="stylesheet" href="../css/style.css" />

  
    <style type="text/css">
        .auto-style2 {
            width: 178%;
            height: 132%;
            position: absolute;
            top: 0;
            left: 0;
            z-index: -1;
            overflow: hidden;
        }
    </style>

  
</head>

<body>
    <form id="loginForm" runat="server">

  <div>
      <a href="RegistrationFormUI.aspx">Create New User Account</a>
</div>


  <h1 id="litheader">User Access</h1>
        

  <div class="inset">
    
      <p>
          <asp:DropDownList ID="userTypeDDList" runat="server" Height="16px" Width="258px">
              <asp:ListItem Selected="True">---User Type---</asp:ListItem>
              <asp:ListItem>Assistance</asp:ListItem>
              <asp:ListItem>Doctor</asp:ListItem>
              
          </asp:DropDownList>
      </p>
    <p>
      <asp:TextBox ID="userNameTextBox" runat="server" placeholder="User Name"></asp:TextBox>
    </p>
    <p>
      <asp:TextBox ID="passwordTextBox" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
    </p>
   
   
  </div>
  <p class="p-container">
    <asp:Button runat="server" ID="loginButton" Text="Log In" value="Authorize" OnClick="loginButton_Click"  />
  </p>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>


        </form>

</body>

</html>






<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>--%>
