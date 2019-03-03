<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUsUI.aspx.cs" Inherits="PatientManagementApp.UI.AboutUsUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
     <%----------------------Menu Bar---------------------%>
  
   <meta charset='utf-8' />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1" />
   <link rel="stylesheet" href="../styles.css" />
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
    <style>
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
         }
        .auto-style1 {
            text-align: center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id='cssmenu'>
<ul>
   <li><a href="DoctorPageUI.aspx"><span>Doctor Page</span></a></li>
    <li ><a href="PatientRecordsUI.aspx"><span>Patient Records</span></a></li>
   <li class='active'><a href="AboutUsUI.aspx"><span>About Us</span></a></li>
    <li style="float:right"><a href="LoginFormUI.aspx"><span>Log Out</span></a></li>
</ul>
</div>
    <div>
    <h1 style="text-align:center">Patient Management APP</h1>
        <h3 style="text-align:center">Submission Date: 06/05/2018</h3>
        <h4 style="text-align:center">Email: RajibSarker320@gmail.com</h4>
    </div>
        <div class="auto-style1">
            <img src="../AImg/DSC_0028.JPG" alt="Rajib Sarker" width="300" height="200" />
            <h2><b>Rajib Sarker</b></h2>
            <h3>Chandpur Polytechnic Institute</h3>
            <h3>Diploma In Engineering</h3>
            <h3>Computer Technology</h3>
        </div>
    </form>
</body>
</html>
