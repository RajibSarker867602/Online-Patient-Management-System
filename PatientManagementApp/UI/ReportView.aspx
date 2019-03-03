<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportView.aspx.cs" Inherits="PatientManagementApp.UI.ReportView" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Report Page</title>
     <%----------------------Menu Bar---------------------%>
  
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="../styles.css" />
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id='cssmenu'>
<ul>
   <li class='active'><a href="DoctorPageUI.aspx"><span>Home</span></a></li>
   <li><a href="PatientRecordsUI.aspx"><span></span>Patient Records</a></li>
    <li><a href="AboutUsUI.aspx"><span></span>About Us</a></li>
    <li style="float:right"><a href="LoginFormUI.aspx"><span>Log Out</span></a></li>
</ul>
</div>
    <div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" OnInit="CrystalReportViewer1_Init" />
    </div>
    </form>
</body>
</html>
