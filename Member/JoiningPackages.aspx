<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="JoiningPackages.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
          <!-- Container-fluid starts-->
         
    <div class="box-body">

                <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
                <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
            </div>
            <div class="alert alert-info alert-dismissible" id="info" runat="server" visible="false">
                <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>

            </div>
            <div class="alert alert-warning alert-dismissible" id="warning" runat="server" visible="false">
                <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label>

            </div>
            <div class="alert alert-success alert-dismissible" id="sccess" runat="server" visible="false">
                <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>
            </div>


            </div>
            
           
   
     

                               
                

    <div class="card" >
       
      <div class="card-body">
                        <h5 class="page-title"> Investment Here </h5>
          <hr />
                            <div class="form-horizontal" >
                             
                            <div class="form-group row">
                          <label class="control-label col-lg-3">Available Fund Wallet  </label>
                          <div class="col-lg-3">
                      <h5> $  <asp:Label ID="txtbalance"  runat="server"  CssClass="text-primary"></asp:Label></h5>
            
         
                          </div>
                                  <label class="control-label col-sm-3">Member ID </label>
                          <div class="col-sm-3">
                             
                          <asp:TextBox ID="lbActiveMember" ReadOnly="true"  runat="server"  CssClass="text-primary form-control"></asp:TextBox>
                          </div>
                                </div>
                       
                                  <div class="form-group row">
                          <label class="control-label col-sm-3">Package Name </label>
                          <div class="col-sm-3">
                             
                         <asp:TextBox ID="lbpackname" ReadOnly="true" runat="server"  Text="N/A" CssClass="form-control"></asp:TextBox>
                         
                          </div>
                                       <label class="control-label col-lg-3 ">Profit Upto(%) </label>     

                        <div class="col-lg-3">
                         <asp:TextBox ID="lbincome" ReadOnly="true" runat="server"  Text="0" CssClass="form-control"></asp:TextBox>
                         </div>

                          </div> 
                                       <div class="form-group row">
                          
                            <label class="control-label col-lg-3 ">Minimum Invest  </label>     

                        <div class="col-lg-3">
                         <asp:TextBox ID="lbmin" ReadOnly="true" runat="server"  Text="0"  CssClass="form-control"></asp:TextBox>
                         </div>

                             <label class="control-label col-lg-3 ">Maximum Invest </label>     

                        <div class="col-lg-3">
                         <asp:TextBox ID="lbmax" ReadOnly="true" runat="server"  Text="0" CssClass="form-control"></asp:TextBox>
                         </div>
                          </div>
                                <div class="form-group row">
                          

                            <label class="control-label col-lg-3 ">Enter Invest Amount  </label>     

                        <div class="col-lg-9">
                         <asp:TextBox ID="txtamt" runat="server" required="" placeholder="Enter Invest Amount ($)"  CssClass="form-control"></asp:TextBox>
                         </div>


                            
                          </div>  
                                 <%--<div class="form-group row">
                          
                          <div class="col-sm-6">
                                    <img src="~/SoftImg/NoImage.jpeg" id="ImgQR"  runat="server" style="width:50%; border:solid 2px black;" />
                             </div>
                                  
                         <asp:HiddenField runat="server" ID="hndqr" />
                   </div>--%>
                     <div class="form-group row" style="padding-top:20px;">
                             <div class="col-lg-5">
                                 </div>
                              <!-- TO DO List -->
         <div class=" col-lg-6">

   <asp:Button ID="btnaction" runat="server" Text="Invest Now"  OnClientClick="return confirmAction();" OnClick="butsubmit_Click" CssClass="btn btn-block  btn-primary btn-sm"/>
               

                  </div>
            
          
            <!-- /.box-body -->
            
          </div>
          <!-- /.box -->
                    
                    
             </div>
             
          

</div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


  <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
        <script>

            function Successclick() {
                swal("Package Buy Successfully!", "You clicked the button!", "success")
            }


        // The function below will start the confirmation dialog
            function confirmAction() {
                var btn = document.getElementById('<%= btnaction.ClientID %>');
              
                let confirmAction = confirm("Are you sure to investment?");

                if (confirmAction) {
                    //alert("Action Successfully executed");
                    // Disable the button and change text
                    
                    btn.value = "Processing...";

                    return true;
                }
                else {
                    alert("Investment Canceled");
                    return false;
                }
            }
        </script>

</asp:Content>

