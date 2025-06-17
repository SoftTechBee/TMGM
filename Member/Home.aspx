<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

  

    <!-- content -->
    <%--<div class="container">--%>
       
        
        <input type="text" name="link" id="myInput" runat="server" value="" class="d-none">
          <div class="row">


              <h4>Updated News :</h4>
                      <div class="col-xl-12 col-md-12 col-sm-12 col-12">
              <div class="card mb-4 ">

                  <div class="card-body text-center row">

                      
                          <div class="row">
                              <div class="col-12  text-center">
                                  <marquee onmouseover="this.stop()" onmouseout="this.start()">
                            <h6>

                                <asp:Label ID="lbhead" Font-Bold="true" Font-Size="Larger" Font-Underline="true" runat="server" Text='<%#Eval("tittle")%>'></asp:Label>
                                :
                            <asp:Label ID="lbnews" Font-Bold="true" Font-Size="Larger" runat="server"  Text='<%#Eval("news")%>'>
                            </asp:Label></h6>

                        </marquee>

                              </div>
                          </div>
                      </div>
                  </div>
              </div>
                   
     <article class="fa3" >
        <section class="fs3">
            <%--<div data-an="d" class="t-0 nyc w-1">NOW YOU CAN</div>--%>
            <div class="df-b in-h menu mb-4">
                <div data-an="out" class="w-7 sect s-logo">
                 <center>   <a class="logo" href="/en/">
                        <img width="200" height="60" alt="img" src="assets/images/logo.png"/>
                    </a></center>
                </div>
               
              
                
            </div>
        </section>
        
    
    
       
         
    </article>
             <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                 <div class="card mb-4">
                  <div class="card-body text-center row  m-4">

                                  <h6 class="">
                                       <asp:Label ID="lbreffsidLeft"  runat="server" Text="0"></asp:Label>      
                               </h6>

                                  <span class="badge  text-warning"> <a onclick="script: myFunction();" class="btn btn-soft-light border border-warning">
                                
                                   
                                     
                                  Copy Refferal Link &nbsp <svg xmlns="http://www.w3.org/2000/svg" class="svg-stroke" width="24" height="24"
                                          viewBox="0 0 24 24" stroke="currentColor" fill="none"
                                          stroke-linecap="round" stroke-linejoin="round">
                                          <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                          <rect x="10" y="10" width="10" height="10" rx="2" />
                                          <path d="M4 4h10v10h-10z" />
                                      </svg>
                                </a></span>
                              </div>
                      </div>
              </div>    
              <div class="col-xl-6 col-md-6 col-sm-12 col-12">
             
         
									<div class="card mb-4">
                      <div class="card-body text-center">
                         <%-- <div class="mx-auto my-3">
                              <img src="<%=SessionData.Get<string>("profilepic") %>" alt="Avatar Image" class="rounded-circle" width="100px" />
                          </div>--%>
                          <h4 class="mb-1 card-title"><%=SessionData.Get<string>("newuser") %></h4>
                          <span class="pb-1"><%=SessionData.Get<string>("name") %></span>

                           <hr />

                          <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                  
                                  <span class="fs-14">Sponsor ID</span>
                              </div>
                              <div>
                                  <h5 class="mb-0">
                                      <asp:Label ID="lbSponsorId" CssClass="text-warning" runat="server" Text="0"></asp:Label></h5>
                              </div>
                          </div>
                       
               
                          <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                

                                  <span class="fs-14">Mobile No</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbContact" CssClass="text-warning" runat="server" Text="0"></asp:Label></h6>
                              </div>
                          </div>
                     

                          <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                
                                  <span class="fs-14">Activation Date</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbdoa" CssClass="text-warning" runat="server" Text="0"></asp:Label></h6>
                              </div>

                          </div>
                        <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                

                                  <span class="fs-14">Join Amount</span>
                              </div>
                              <div>
                                  <h6 class="mb-0 text-warning">
                                   $ <asp:Label ID="lbjoinamount"  runat="server" Text="0.00"></asp:Label></h6>
                              </div>
                          </div>
                   <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                            
                                  <span class="fs-14">Status</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbstatus" CssClass="text-warning" runat="server" Text="0"></asp:Label></h6>
                              </div>

                          </div>
                    <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                
                                  <span class="fs-14">Current Reward</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbRewardstaus" CssClass="text-warning" runat="server" Text="0"></asp:Label></h6>
                              </div>

                          </div>
 <div class="d-flex justify-content-between mb-2 align-items-center">
                              <div>
                                
                                  <span class="fs-14">Current Royalty</span>
                              </div>
                              <div>
                                  <h6 class="mb-0">
                                      <asp:Label ID="lbRoyaltystaus" CssClass="text-warning" runat="server" Text="0"></asp:Label></h6>
                              </div>

                          </div>

                    
                   </div>
                  </div>
                   </div>
                  <div class="col-xl-6 col-md-6 col-sm-12 col-12">
             
         
									<div class="card mb-4">
                    <div class="card-header d-flex justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title">Income Summary</h4>
                        </div>

                    </div>
                    <div class="card-body ">
                        <div class="table-responsive">
                            <table class="table table-spacing mb-0 ">
                                <tbody>
                                    
                                  
                                    <tr class="white-space-no-wrap">
                                        <td>
                                            <h6 class="mb-0 text-uppercase text-secondary">Profit on Invesment</h6>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lbroi" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%> 
                                        </td>
                                       <%-- <td class="pl-0 py-3">
                                            <a href="rptROIIncome.aspx" class="  badge badge-primary ">View</a>
                                        </td>--%>
                                    </tr>
                                  
                                    <tr class="white-space-no-wrap">
                                        <td>
                                            <h6 class="mb-0 text-uppercase text-secondary">Level Income</h6>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lblebelincome" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%> 
                                        </td>
                                    <%--    <td class="pl-0 py-3">
                                            <a href="rptLevelIncome.aspx" class="  badge badge-primary ">View</a>
                                        </td>--%>
                                    </tr>
                                  
                                  
                                 
                                    <tr class="white-space-no-wrap">
                                        <td>
                                            <h6 class="mb-0 text-uppercase text-secondary">Reward Income</h6>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lbRewardincome" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%>
                                        </td>
                                      <%--  <td class="pl-0 py-3">
                                            <a href="rptRewardIncome.aspx" class="  badge badge-primary ">View</a>
                                        </td>--%>
                                    </tr>
                                    
                                    <tr class="white-space-no-wrap">
                                        <td>
                                            <h6 class="mb-0 text-uppercase text-secondary">Royalty Income</h6>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lbRoyaltyincome" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%>
                                        </td>
                                       <%-- <td class="pl-0 py-3">
                                            <a href="account.aspx" class="  badge badge-primary ">View</a>
                                        </td>--%>
                                    </tr>
                              <tr class="white-space-no-wrap">
                                        <td>
                                            <h6 class="mb-0 text-uppercase text-secondary">Total Income</h6>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lbtotalincome" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%>
                                        </td>
                                       <%-- <td class="pl-0 py-3">
                                            <a href="account.aspx" class="  badge badge-primary ">View</a>
                                        </td>--%>
                                    </tr>
                                </tbody>
                            </table>

                        </div>

                    </div>
                </div>
            </div>
                 <!-- Row start -->
       <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Total Team</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="rptdwonline.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbteam" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("User")%></span>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Total Direct</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="direct.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbdirectTeam" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("User")%></span>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Active Team</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="rptdwonline.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="totalactiveteam" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("User")%></span>
                        </div>

                    </div>
                </div>
            </div>
            
      <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">InActive Team</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="rptdwonline.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbinactiveteam" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("User")%></span>
                        </div>

                    </div>
                </div>
            </div>
            
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Fund Deposit</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="Wallet.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbdeposit" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></span>
                        </div>

                    </div>
                </div>
            </div>
  <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Available Fund</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="Wallet.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbAvailabledeposit" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></span>
                        </div>

                    </div>
                </div>
            </div>
        <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">My Invesment</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="PurchaseHistory.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbinvest" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></span>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Income Balance</h5>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="account.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbbalnce" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></span>
                        </div>

                    </div>
                </div>
            </div>
          



            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Direct Business</h5>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="direct.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbdirectbus" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></span>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Team Business</h5>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="rptdwonline.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbteambuss" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></span>
                        </div>

                    </div>
                </div>
            </div>



            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Success Withdraw</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="WithdrawRequestlist.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbsuccesswithdraw" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></span>
                        </div>

                    </div>
                </div>
            </div>
   <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 1px solid #d77748;">
                    <div class="card-header">
                        <h5 class="card-title">Pending Withdraw</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="WithdrawRequestlist.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <span class="fw-bold">
                                <asp:Label ID="lbPendingwithdraw" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></span>
                        </div>

                    </div>
                </div>
            </div>


      
              
								</div>

   

      </div>

  

   <br>
         

   
      


  

     <h4>Leg Business</h4>
        <div class="row">
            <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <div class="card mb-4">
                <div class="card-header">
                    <h5 class="card-title">Power Leg Business</h5>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h4 class="fw-bold text-warning">  <asp:Label ID="lbstronggb" runat="server" Text="0.00"></asp:Label> <%=SessionData.Get<string>("Currency")%></h4>
                       
                    </div>
                 
                </div>
            </div>
        </div>
      <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <div class="card mb-4">
                <div class="card-header">
                    <h5 class="card-title">Weaker Leg Business</h5>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h4 class="fw-bold text-warning">  <asp:Label ID="lbweakergb" runat="server" Text="0.00"></asp:Label> <%=SessionData.Get<string>("Currency")%></h4>
                       
                    </div>
                 
                </div>
            </div>
        </div>
                    <div class="col-lg-12 col-md-12 col-xl-12">
            <div class="card card-block card-stretch card-height">

                <div class="card-header d-flex justify-content-between ">
                    <div class="header-title">
                        <h4 class="card-title">Capping Status</h4>
                    </div>
                 
                </div>
                
                <div class="card-body ">
                    <div class="table-responsive" style="overflow:auto">
                        <table class="table table-striped mb-0 table-borderless">
                            <thead class="">
                                <tr>
                                    <th>Investment</th>
                                    <th>Max Capping</th>
                                    <th>Received Income</th>
                                
                                     <th>Remaining</th>

                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    

                                  
                                    <td class=" fw-bold">
                                        $ <asp:Label ID="lbInvestmentamt" CssClass="text-warning" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                   <td class=" fw-bold">
                                        $ <asp:Label ID="lbmaxincome" CssClass="text-warning" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                  <td class=" fw-bold">
                                        $ <asp:Label ID="lbincome" CssClass="text-warning" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                 
                                    <td class=" fw-bold">
                                       $ <asp:Label ID="lbLeftinocme" CssClass="text-warning" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                    
                                   
                                </tr>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
              </div>
     <hr />
            <br />
    

    <%--</div>--%>


    
        <asp:HiddenField ID="hndside" ClientIDMode="Static" runat="server" />

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script type="text/javascript">
        function myFunction() {

            var copyText = document.getElementById('ContentPlaceHolder1_myInput');

            copyText.select();
            copyText.setSelectionRange(0, 99999); /*For mobile devices*/
            /* Copy the text inside the text field */
            document.execCommand("copy");
            /* Alert the copied text */

            Swal.fire(
                'Refferal Link :',
                copyText.value,
                'success'
            )

            //alert("Copied the text: " + copyText.value);

        }
    </script>


    <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
   <script>

        function Processclick() {
            swal({
                title: "Processing.......!",
                text: "Note: Do Not press back or close the app? It will close in few seconds.",
                imageUrl: "../SoftImg/refresh.gif",
                timer: 20000,
                showConfirmButton: false
            });
        }
        function Successclick(msg) {
            swal("Success!", msg, "success")
        }
        function Warningclick(msg) {
            swal("Warning!", msg, "warning")
        }
    </script>
      <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" />
       <style type="text/css">
        .toggle.ios, .toggle-on.ios, .toggle-off.ios {
            border-radius: 20px;
            width: 110px;
        }

            .toggle.ios .toggle-handle {
                border-radius: 20px;
                width: 40px;
            }
    </style>

    <style>
        .btn-primary {
            background-color: #7367f0 !important;
            color: #fff;
        }

        .btn-danger {
            background-color: #d34c4d !important;
            color: #fff;
        }

        .btn1 {
            --bs-btn-padding-x: 0.25rem !important;
            --bs-btn-padding-y: -0.4rem !important;
        }

        .pad1 {
            padding: 0.1rem 1rem !important;
        }


        .recent-activity-wrapper-invoice {
            height: 816px  !important;
        }

        @media only screen and (max-width: 61.9375rem) {
            .ref {
                width: 30px !important;
            }
        }
    </style>

       <style>
        /*.custom-card1 {
            background: linear-gradient(200deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card2 {
            background: linear-gradient(160deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card3 {
            background: linear-gradient(200deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card4 {
            background: linear-gradient(160deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }*/

        .custom-card5 {
    background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgb(3 12 9 / 88%) 35%, rgb(0 0 0 / 38%) 100%);
            /*box-shadow: 4px 4px 6px 0px rgb(173 173 173 / 75%);*/
            border-radius: 15px;
            border:1px solid white!important;
        }
    </style>
     <style>
  .rotate-hover {
    display: inline-block;
    transition: transform 0.5s ease;
  }

  .rotate-hover:hover {
    animation: rotate-once 0.6s ease forwards;
  }

  @keyframes rotate-once {
    from { transform: rotate(0deg); }
    to { transform: rotate(360deg); }
  }
</style>
   <script type="text/javascript">
       function myFunction() {
           
           var copyText = document.getElementById('ctl00_ContentPlaceHolder1_myInput');
           if (copyText)
           {
               
               // Select the text inside the input field
               copyText.select();
               copyText.setSelectionRange(0, 99999);
               // For mobile devices

               // Use the Clipboard API to copy text
               navigator.clipboard.writeText(copyText.value).then(function ()
               {
                   swal("Copied", "Copied: " + copyText.value, "success");
               }).catch(function (error)
               {
                   swal("Oops", "Failed to copy text: " + error, "error");
               });
           }
           else
           {
               swal("Oops", "Input element not found!", "error");
           }
       }
   </script>
 <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">

</asp:Content>

