<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentReportPageUI.aspx.cs" Inherits="PatientManagementApp.UI.AppointmentReportPageUI" %>

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

    <style type="text/css">
        .auto-style1 {
            display: inline-block;
            width: 98%;
        }
    </style>

</head>
<body>
    <form id="dksdkj" runat="server">
	<div class="w3ls-banner">
	<div class="heading">
<div id='cssmenu'>
<ul>
   <li><a href="PatientInfoInsertPage.aspx"><span>Patient Entry</span></a></li>
    <li class='active'><a href="AppointmentReportPageUI.aspx"><span>Appointment Report </span></a></li>
    <li><a href="AssistanceAboutPageUI.aspx"><span>About Us</span></a></li>
    <li style="float:right"><a href="LoginFormUI.aspx"><span>Log Out</span></a></li>
</ul>
</div>
		<h1>Appointment Information</h1>
	</div>
        <div>
        </div>
		<div class="container">
			<div class="heading">
				<h2>Please Enter Patients Details</h2>
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
								<asp:DropDownList ID="patientDDList" runat="server" AutoPostBack="True" ForeColor="#0066FF" OnSelectedIndexChanged="patientDDList_SelectedIndexChanged"></asp:DropDownList>
							</div>
						</li>	
                        <li>
							<div class="auto-style1" >
								<asp:GridView ID="messageGridView" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="557px">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Patient Name">
                                            <ItemTemplate>
                                                <asp:Label ID="patientName" runat="server" Text='<%#Bind("Patient_Name")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mobile No">
                                            <ItemTemplate>
                                                <asp:Label ID="mobileNo" runat="server" Text='<%#Bind("Mobile_Number")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Serial">
                                            <ItemTemplate>
                                                <asp:Label ID="serialNo" runat="server" Text='<%#Bind("Serial_No")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Appointment Date">
                                            <ItemTemplate>
                                                <asp:Label ID="appointMentDate" runat="server" Text='<%#Bind("Date")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="Gray" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
							</div>
						</li>					
					</ul>				
			</div>
		</div>
	</div>
        </form>
</body>
</html>

