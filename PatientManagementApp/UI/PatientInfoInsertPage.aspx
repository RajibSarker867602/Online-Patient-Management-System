<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientInfoInsertPage.aspx.cs" Inherits="PatientManagementApp.UI.PatientInfoInsertPage" %>

<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    

	<!-- Meta tags -->
	<title>Appoint My Doctor Form a Simple Appointment form Responsive Widget :: w3layouts</title>
	<meta name="keywords" content="Appoint My Doctor Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="../css2/style.css" />
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Josefin+Sans:300,400,400i,700" rel="stylesheet">
    <%----------------------Menu Bar---------------------%>
  
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="../styles.css" />
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>



    <%------------------------------jquery ui----------------------------------%>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="http://resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
      $("#dateTextBox").datepicker();
  } );
  </script>

</head>
<body>
    <form id="dksdkj" runat="server">
	<div class="w3ls-banner">
	<div class="heading">
<div id='cssmenu'>
<ul>
   <li class='active'><a href="PatientInfoInsertPage.aspx"><span>Patient Entry</span></a></li>
    <li><a href="AppointmentReportPageUI.aspx"><span>Appointment Report</span></a></li>
   <li><a href="AssistanceAboutPageUI.aspx"><span>About Us</span></a></li>
    <li style="float:right"><a href="LoginFormUI.aspx"><span>Log Out</span></a></li>
</ul>
</div>
		<h1>Appoint My Doctor</h1>
	</div>
        
		<div class="container">
			<div class="heading">
				<h2>Please Enter Patients Details</h2>
				<p>Fill the form below and submit your query we will contact you as soon as possible.</p>
			</div>
			<div class="agile-form">
				
					<ul class="field-list">
						<li>
							<label class="form-label"> 
								Patient Name 
							</label>
							<div class="form-input">
								<asp:TextBox ID="patientNameTextBox" runat="server" required data-value-missing="Required" placeholder="Enter Patients Name"></asp:TextBox>
							</div>
						</li>
                        <li>
							<label class="form-label"> 
								Mobile Number 
							</label>
							<div class="form-input">
								<asp:TextBox ID="mobileNumberTextBox" runat="server" required data-value-missing="Required" placeholder="Enter Patients Mobile Number"></asp:TextBox>
							</div>
						</li>
						<li>
							<label class="form-label">
							   Gender
							</label>
							<div class="form-input">
								<asp:DropDownList ID="genderDDList" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#3333FF">
                                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other&#39;s</asp:ListItem>

								</asp:DropDownList>
							</div>
						</li>
						<li> 
							<label class="form-label">
							   Date
							</label>
							<div class="form-input">
								<asp:TextBox ID="dateTextBox" runat="server" required data-value-missing="Required" placeholder="Enter the appointment Date" OnTextChanged="dateTextBox_TextChanged" AutoPostBack="true"></asp:TextBox>
							</div>
						</li>
                        <li> 
							<label class="form-label">
							   Serial
							</label>
							<div class="form-input">
								<asp:TextBox ID="serialTextBox" runat="server" required data-value-missing="Required" placeholder="Serial will be display here." ReadOnly="True"></asp:TextBox>
							</div>
						</li>
					</ul>
					<asp:Button ID="saveButton" runat="server" Text="Save" value="Book Appointment" Width="186px" OnClick="saveButton_Click" />
			</div>
		</div>
	</div>
        </form>
</body>
</html>
