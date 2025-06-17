<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordChanged.aspx.cs" Inherits="Member_PasswordChanged" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

	<title>Password Reset Link Here!</title>
	
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <!-- Favicon -->
  <link rel="shortcut icon" href="../assets/images/favicon.png" />
  <link rel="stylesheet" href="../assets/css/backend-plugin.min.css">
  <link rel="stylesheet" href="../assets/css/backendf700.css?v=1.0.1">
  <link rel="stylesheet" href="../assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
  <link rel="stylesheet" href="../assets/vendor/remixicon/fonts/remixicon.css">
  
  <link rel="stylesheet" href="../assets/vendor/tui-calendar/tui-calendar/dist/tui-calendar.css">
  <link rel="stylesheet" href="../assets/vendor/tui-calendar/tui-date-picker/dist/tui-date-picker.css">
  <link rel="stylesheet" href="../assets/vendor/tui-calendar/tui-time-picker/dist/tui-time-picker.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>
    <form id="form1" runat="server">
         <!------Msgbox End---->
     <div class="card-body">
              <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
              
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
              <div class="alert alert-info alert-dismissible" id="info" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-info"></i> Alert!</h4>
               <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>  
             
              </div>
              <div class="alert alert-warning alert-dismissible" id="warning" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-warning"></i> Alert!</h4>
               <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label> 
            
              </div>
              <div class="alert alert-success alert-dismissible" id="sccess" runat="server" visible="false" >
              
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
                  <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>  
              </div>
            </div>
    <!-----Alert End----->

         <div class="wrapper"    style="background: url(../assets/images/background.png); background-attachment: fixed; background-size: cover;">
      <section class="login-content">
         <div class="container">
            <div class="row align-items-center justify-content-center height-self-center">
               <div class="col-lg-8">
                  <div class="card auth-card">
                     <div class="card-body p-0">
                        <div class="d-flex align-items-center auth-content">
                           <div class="col-lg-6  content-left">
                              <div class="p-3">
                                 <img src="../assets/images/login/mail.png" class="img-fluid" width="80" alt="" />
                                 <h3 class="mt-3 mb-0 ">Password Reset Here !</h3>
                                  <p class="cnf-mail mb-1">My Dear User! <asp:Label runat="server" CssClass="text-danger" id="lbname" ></asp:Label>.</p>
                                 <div>
                                     <br />
                                    <div class="row">
                                       <div class="col-lg-12">
                                          <div class="floating-label form-group">
                                               <asp:TextBox runat="server" ID="lbActiveMember" ReadOnly="true" class="floating-input form-control"  placeholder=""></asp:TextBox>
                                          
                                             <label>Your Username</label>
                                          </div>
                                       </div>
                                       <div class="col-lg-12">
                                          <div class="floating-label form-group">
                                                <asp:TextBox runat="server" ID="txtnew"  class="floating-input form-control" placeholder=""></asp:TextBox>
                                           
                                             <label>New Password</label>
                                          </div>
                                       </div>
                                        <div class="col-lg-12">
                                          <div class="floating-label form-group">
                                                <asp:TextBox runat="server" ID="txtconfirm"  class="floating-input form-control" placeholder=""></asp:TextBox>
                                           
                                             <label>Confirm Password</label>
                                          </div>
                                       </div>
                                       
                                    </div>
                                      
                                   
                                    
                                 </div>
                                 <div class="d-inline-block w-100">
                                       <asp:Button runat="server" ID="btnLogin" Visible="true"  class="btn btn-primary mt-3"   Text="Change!"  OnClick="Button1_Click" />
                                   
                                 </div>
                                    <a href="../login.aspx">Back To Login!</a>

                              </div>
                           </div>
                           <div class="col-lg-6 content-right">
                              <img src="../assets/images/logo.png" class="img-fluid image-right" alt="">
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
  </div>

       <!-- Content -->
        <br />
        <br />
        <br />
			 
      
          
    </form>
	 <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="../assets/js/backend-bundle.min.js"></script>
  
  <!-- Table Treeview JavaScript -->
  <script src="../assets/js/table-treeview.js"></script>
  
  <!-- Chart Custom JavaScript -->
  <script src="../assets/js/customizer.js"></script>
  
  <!-- Chart Custom JavaScript -->
  <script async src="../assets/js/chart-custom.js"></script>
  <script src="../assets/js/charts/01f700.js?v=1.0.1"></script>
  <script src="../assets/js/charts/02f700.js?v=1.0.1"></script>
  <!-- Chart Custom JavaScript -->
  <script async src="../assets/js/slider.js"></script>
  
  <!-- app JavaScript -->
  <script src="../assets/js/appf700.js?v=1.0.1"></script>
</body>
</html>
