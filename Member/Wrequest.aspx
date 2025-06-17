<%@ Page Title="" Language="C#" MasterPageFile="~/member/MasterPage.master" AutoEventWireup="true" CodeFile="Wrequest.aspx.cs" Inherits="User_withdrrawPlan1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.6.1-rc.2/web3.min.js"
     integrity="sha512-KURAVUCRxZKDemghhiNqTnYzVPUtO3GYznBZRWRBT2GJJ5PmePAxfO7QMGCM8xUJ0QfrUYJDrtRJM4L4NOtfow=="
     crossorigin="anonymous" referrerpolicy="no-referrer"></script>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script>



      function Button() {
          $('#btninvest').prop('disabled', false);

      }
      


      async function Withdraw() {
          try {
          let amount = document.getElementById('<%= txtAmt.ClientID %>').value; // ✅ Correct way to get ASP.NET TextBox
              var AddressValue = document.getElementById('<%= address1.ClientID %>').value;
              var incomeValue = document.getElementById('<%= hndbalance.ClientID %>').value;
              console.log(incomeValue); // Or use it however you need
              console.log(AddressValue); // Or use it however you need
          var Username = $("#<%= hndusername.ClientID %>").val();
              var paymentMode = document.getElementById("selectedPayment").innerText;

              var incomeType = "INCOME";
              console.log(paymentMode); // Or use it however you need
              console.log(incomeType); // Or use it however you need
              if (parseInt(incomeValue) >= parseInt(amount) && parseInt(amount) >= 5) {
                  console.log(', Username : ' + Username, ', amount : ' + amount, ', incomeValue : ' + incomeValue, ', AddressValue : ' + AddressValue, ', paymentMode : ' + paymentMode, ', incomeType : ' + incomeType);


              $('#btninvest').prop('disabled', true);

                  btninvest.value = "Submiting...";  // Text change karein

            


              $.ajax({
                  type: "POST",
                  url: "Wrequest.aspx/Withdraw",
                  data: "{'Username':'" + Username + "','Amount':'" + amount + "' ,'Type':'" + paymentMode + "' ,'Wallet':'" + AddressValue + "' ,'incomeType':'" + incomeType + "'}",

                  contentType: "application/json; charset=utf-8",
                  dataType: "json",

                  success: function (data) {


                      var data = eval(data.d);
                     
                      if (data == "Success") {
                          swal('', 'Congratulations!!! Your Withdrawal Request has been created, Please wait for approval now.', 'success');
                          $('#btninvest').prop('disabled', true);
                          btninvest.value = "Request Sent To Admin...";  // Text change karein
                      }
                      else if (data == "Already") {

                          swal("Oops...!", "Your previous Withdrawal Request is Pending. Please wait for approval or contact Customer Support.!.", "warning")
                          $('#btninvest').prop('disabled', false);
                          btninvest.value = "Submit For Withdraw";  // Text change karein

                      }

                      else {
                          $('#btninvest').prop('disabled', false);
                          btninvest.value = "Submit For Withdraw";  // Text change karein

                          swal("Oops...!", "Something went wrong! Try Again", "error")
                      }
                     
                  },
                  error: function (msg) {
                     

                      msg = "There is an error";
                      alert(msg);
                   
                      $('#btninvest').prop('disabled', false);

                  }
              });
              }
              else
          {
              alert('Invalid Amount? Minimum Amount 10 USDT');
          }
          } catch (error) {
              if (error.code === 4001) { }
              console.log(error);
          }
                    

      }


     
        // selectPayment
      function selectPayment(Address) {
          var addressLine1 = $("#<%= address1.ClientID %>").val();
          //alert(addressLine1)
        // Button ka text change karega selected wallet ke hisaab se
          document.getElementById("selectedPayment").innerText = Address;


          // Wallet ke basis par balance update karna
          if (Address === "USDT.BEP20") {
              document.getElementById("lbWalletAddress").value = addressLine1;
          } else if (Address === "USDT.TRC20") {
              document.getElementById("lbWalletAddress").value = addressLine2;
          }
      }
     // calculateDeduction
      function calculateDeduction() {
         
          var incomeValue = document.getElementById('<%= hndbalance.ClientID %>').value;
          console.log(incomeValue); // Or use it however you need
          let AddressValue = document.getElementById("lbWalletAddress").value.trim(); // Value fetch karke trim karein
          console.log(AddressValue); // Or use it however you need

          if (incomeValue !== "0" && AddressValue !== "0") {

           
              let amount = document.getElementById('<%= txtAmt.ClientID %>').value; // ✅ Correct way to get ASP.NET TextBox
              /*  alert(amount)*/
             
              if (parseInt(incomeValue) >= parseInt(amount) ) {
                  
                     let AdminCharge = (amount * 0.05); // 5% deduction
                      let PayOut = amount - AdminCharge; //  PayOut
                      document.getElementById('<%= txtadmincharge.ClientID %>').value = AdminCharge.toFixed(2);
                      document.getElementById('<%= txtTotal.ClientID %>').value = PayOut.toFixed(2);
                  
                  $('#btninvest').prop('disabled', false);
              }
              else {
                  alert("insufficient Balance");
                  document.getElementById('<%= txtadmincharge.ClientID %>').value = "";
                  document.getElementById('<%= txtTotal.ClientID %>').value = "";
                  document.getElementById('<%= txtAmt.ClientID %>').value = "";
              }
          }
          else {
              alert("Income or Address values are null.");
              document.getElementById('<%= txtadmincharge.ClientID %>').value = "";
              document.getElementById('<%= txtTotal.ClientID %>').value = "";
              document.getElementById('<%= txtAmt.ClientID %>').value = "";

          }
      }


    
  </script>
    
    <!------Msgbox End---->
        <!-- Content -->
           
            <div class="card-body mb-3">

                <div class="alert alert-warning  " role="alert" id="warning" runat="server" visible="false">
                    <i data-feather="bell"></i>
                    <p>
                        <asp:Label ID="lbwarning" runat="server" Text=""></asp:Label></p>
                </div>

                <div class="alert alert-primary " role="alert" id="info" runat="server" visible="false">
                    <i data-feather="bell"></i>
                    <p>
                        <asp:Label ID="lbinfo" runat="server" Text=""></asp:Label></p>
                </div>

                <div class="alert alert-success  " role="alert" id="sccess" runat="server" visible="false">
                    <i data-feather="bell"></i>
                    <p>
                        <asp:Label ID="lbsuccess" runat="server" Text=""></asp:Label></p>
                </div>

                <div class="alert alert-danger " role="alert" id="danger" runat="server" visible="false">
                    <i data-feather="bell"></i>
                    <p>
                        <asp:Label ID="lbdanger" runat="server" Text=""></asp:Label></p>
                </div>

            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header with-border">
                            <div class="card-title">
                                <h3 class="text text-bold ">Withdraw Income </h3>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-horizontal">
                                  <div class="form-group row">

                                            <div class=" col-sm-offset-4 col-sm-10">
                                            </div>
                                            <div class="  col-sm-2">
                                                <div id="divwalletclick" runat="server" visible="false">
                                                    Wallet Add?
                   <a class="text-success" href="cryptoWallet.aspx"><b>Click</b></a>
                                                </div>
                                           
                                            </div>
                                        </div>
                                 
                                
                               <div class="row align-items-center mb-2">
                                    <label class="control-label col-lg-2">Payment Mode</label>

                                    <div class="col-lg-3">
                                    <div class="basic-dropdown">
	                            <div class="dropdown">
		                              <button type="button"   id="selectedPayment" class="btn btn-sm dropdown-toggle btn-secondary" data-bs-toggle="dropdown">
               Payment Mode
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="javascript:void(0);" onclick="selectPayment('USDT.BEP20')">USDT.BEP-20</a>
                <%--<a class="dropdown-item" href="javascript:void(0);" onclick="selectPayment('USDT.TRC20')">USDT.TRC-20</a>--%>
            </div>
	                            </div>
                                            </div>
                                            </div>

                                     <label class="control-label col-lg-2 ">Wallet Address</label>
                                    <div class="col-lg-5">
                                        <input type="text" id="lbWalletAddress" class="form-control" readonly value="0">

                                    </div>
                                       </div>
                                <div class="row align-items-center mb-2">
                                    
                                   

                                     <label class="control-label col-lg-2 ">Available Income</label>
                                    <div class="col-lg-5">
                                       <asp:TextBox ID="lbincome" runat="server" CssClass="form-control" ReadOnly="true" />

                                    </div>
                                       </div>
                                <div class="row align-items-center mb-2">

                               
                                    <label class="control-label col-lg-2">Withdaw Amount </label>

                                     <div class="col-lg-10">
                                        <asp:TextBox ID="txtAmt" Text="" required="" oninput="calculateDeduction()"  runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="row align-items-center mb-2">
                                    <label class="control-label col-lg-2 ">Deduction 5%</label>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtadmincharge" Text="" required="" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <label class="control-label col-lg-2 ">Final Payout</label>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtTotal" Text="" required="" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                              

                                    


                                  


                         
                                <hr />

                                <div class="row align-items-center mb-2">
                                    <div class="col-sm-offset-4 col-lg-4">
                                    </div>
                                    <div class="col-sm-offset-4 col-lg-4">
                                         <input id="btninvest" disabled  type="button" class="btn btn-success btn-flat" onclick="script:Withdraw();"  value="Submit For Withdraw"/>
                                        <%--<asp:Button ID="btnaction" runat="server" Text="Submit For Withdraw" OnClick="butsubmit_Click" CssClass="btn btn-block  btn-success btn-lg" />--%>
                                    </div>
                                </div>

                               <hr />
                                        <div class="row">
    <label class="control-label text-success col-lg-12">Terms & Conditions</label>
    <br />
    <label class="control-label text-secondary col-lg-12">
        1) Admin is not responsible if the provided wallet address is incorrect.
    </label>
    <label class="control-label text-secondary col-lg-12">
        2) Withdrawals are open 24/7.
    </label>
    <label class="control-label text-secondary col-lg-12">
        3) Withdrawal available in USDT (BEP20).
    </label>
    <label class="control-label text-secondary col-lg-12">
        4) A 5% admin charge applies on capital withdrawal.
    </label>
    <label class="control-label text-secondary col-lg-12">
        5) Minimum withdrawal amount is 10 USDT.
    </label>
   
</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                   <asp:HiddenField runat="server" ID="hndusername" />
                   <asp:HiddenField runat="server" ID="hndwallet1" />
                   <asp:HiddenField runat="server" ID="address1" />
                   <asp:HiddenField runat="server" ID="hndrid" />
                   <asp:HiddenField runat="server" ID="hndamount" />
                   <asp:HiddenField runat="server" ID="hndAdminCharge" />
                   <asp:HiddenField runat="server" ID="hndType" />
                   <asp:HiddenField runat="server" ID="hndbalance" />
                   
        

    <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
                <link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
 

</asp:Content>

