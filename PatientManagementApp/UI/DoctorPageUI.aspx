<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorPageUI.aspx.cs" Inherits="PatientManagementApp.UI.DoctorPage" %>

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
      $("#searchDateTextBox").datepicker();
  } );
  </script>

</head>
<body>
    <form id="dksdkj" runat="server">
	<div class="w3ls-banner">
	<div class="heading">
<div id='cssmenu'>
<ul>
   <li class='active'><a href="DoctorPageUI.aspx"><span>Home</span></a></li>
   <li><a href="PatientRecordsUI.aspx"><span></span>Patient Records</a></li>
    <li><a href="AboutUsUI.aspx"><span></span>About Us</a></li>
    <li style="float:right"><a href="LoginFormUI.aspx"><span>Log Out</span></a></li>
</ul>
</div>
		<h1>Doctor's Best Treatment</h1>
	</div>
        <div>
        </div>
		<div class="container">
			<div class="heading">
				<h2>Please Enter Details</h2>
				<p>Fill the form below.</p>
			</div>
			<div class="agile-form">
				
					<ul class="field-list">
						<li>
							<label class="form-label"> 
								Search 
							</label>
							<div class="form-input">
								<asp:TextBox ID="searchDateTextBox" runat="server" required data-value-missing="Required" placeholder="Enter Search Date" AutoPostBack="True" OnTextChanged="searchDateTextBox_TextChanged"></asp:TextBox>
							</div>
						</li>
                        <li>
							<label class="form-label"> 
								Patient List 
							</label>
							<div class="form-input">
								<asp:DropDownList ID="patientDDList" runat="server" required data-value-missing="Required" AutoPostBack="True" ForeColor="#0066FF" OnSelectedIndexChanged="patientDDList_SelectedIndexChanged"></asp:DropDownList>
							</div>
						</li>	
                        <li>
							<label class="form-label"> 
								Serial No 
							</label>
							<div class="form-input">
                                <asp:Label ID="serialNoLabel" runat="server" Text="Patient Serial No Will Be Show Here."></asp:Label>
							</div>
						</li>  
                        <li>
							<label class="form-label"> 
								Patient Name 
							</label>
							<div class="form-input">
                                <asp:Label ID="patientNameLabel" runat="server" Text="Patient Name Will Be Show Here."></asp:Label>
							</div>
						</li> 
                        <li>
							<label class="form-label"> 
								Patient Age 
							</label>
							<div class="form-input">
								<asp:TextBox ID="patientAgeTextbox" runat="server" required data-value-missing="Required" placeholder="Enter Patient Age"></asp:TextBox>
							</div>
						</li>     
                        <li>
							<label class="form-label"> 
								Disease 
							</label>
							<div class="form-input">
								<asp:TextBox ID="diseaseTextBox" runat="server" required data-value-missing="Required" placeholder="Enter Patient Disease"></asp:TextBox>
							</div>
						</li> 
                        <li>
							<label class="form-label"> 
								Medicine 
							</label>
							<div class="form-input">
								<asp:TextBox ID="medicineTextBox" runat="server" required data-value-missing="Required" placeholder="Enter Medicine Here" TextMode="MultiLine"></asp:TextBox>
							</div>
						</li>   
                        <asp:Button ID="saveButton" runat="server" Text="Save" value="Book Appointment" Width="186px" OnClick="saveButton_Click"/>
                           <li>
						</li>                                            			
					</ul>	
			</div>
		</div>
	</div>
        </form>
</body>
</html>
