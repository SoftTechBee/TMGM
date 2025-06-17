<%@ Page Title="" Language="C#" MasterPageFile="~/member/MasterPage.master" AutoEventWireup="true"
    CodeFile="Wrequest.aspx.cs" Inherits="User_withdrrawPlan1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style type="text/css">
        #ContentPlaceHolder1_bntsubmit {
            border-radius: 25px;
        }

        #ContentPlaceHolder1_btncencel {
            border-radius: 25px;
        }
    </style>

    <style>
        .TxtBoxError {
            border: 1px solid red;
            width: 250px;
            height: 30px;
        }
    </style>
    <script type="text/javascript">
        function Validate() {

            var isChecked = false;

            //if (document.getElementById("ContentPlaceHolder1_drpAmt").value == "Select") {
            //    document.getElementById("ContentPlaceHolder1_drpAmt").className = "TxtBoxError";

            //}
            //else {

            //    document.getElementById("ContentPlaceHolder1_drpAmt").className = "form-control";
            //    isChecked = true;
            //}
            if (document.getElementById("ContentPlaceHolder1_DrpPaymentMode").value == "Select") {
                document.getElementById("ContentPlaceHolder1_DrpPaymentMode").className = "TxtBoxError";

            }
            else {

                document.getElementById("ContentPlaceHolder1_DrpPaymentMode").className = "form-control";
                isChecked = true;
            }

            return isChecked;
        }
    </script>
    <!------Msgbox End---->
  

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-flex align-items-center justify-content-between">
                        <h4 class="mb-0">Withdraw Income</h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="paymenttype" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="txtAmt" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="btnaction" EventName="Click" />
                </Triggers>

                <ContentTemplate>

                    <!-- Alret-->
                    <div class="alert alert-success alert-dismissible fade show" role="alert" id="sccess"
                        runat="server" visible="false">
                        <i class="uil uil-check me-2"></i>
                        <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................">
                        </asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                        </button>
                    </div>

                    <div class="alert alert-danger alert-dismissible fade show" role="alert" id="day"
                        runat="server" visible="false">
                        <i class="uil uil-exclamation-octagon me-2"></i>
                        <asp:Label ID="lbday" runat="server" Text="There is  some thing wrong.........">
                        </asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                        </button>
                    </div>

                    <div class="alert alert-danger alert-dismissible fade show" role="alert" id="danger"
                        runat="server" visible="false">
                        <i class="uil uil-exclamation-octagon me-2"></i>
                        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong.........">
                        </asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                        </button>
                    </div>

                    <div class="alert alert-warning alert-dismissible fade show" role="alert" id="warning"
                        runat="server" visible="false">
                        <i class="uil uil-exclamation-triangle me-2"></i>
                        <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                        </button>
                    </div>

                    <div class="alert alert-info alert-dismissible fade show mb-0" role="alert" id="info"
                        runat="server" visible="false">
                        <i class="uil uil-question-circle me-2"></i>
                        <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                        </button>
                    </div>

                    <!-- end Alert title -->

                    <div class="row">
                        <div class="col-12">
                            <div class="card">
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
                                               <%-- <div id="divbankclick" runat="server" visible="false">
                                                    Bank Detail?
                   <a class="text-success" href="Bank.aspx"><b>Click</b></a>
                                                </div>--%>
                                            </div>
                                        </div>
                                        <div class=" row">
                                            <label class="control-label col-lg-4">Available Withdraw Income </label>
                                            <div class="col-lg-3">
                                                <h2>
                                                    $ <asp:Label  runat="server" ID="lbbalance"
                                                        Text="0">
                                                    </asp:Label>
                                                   
                                                </h2>
                                            </div>

                                        </div>
                                        <hr />

                                        <div class=" form-group row">
                                            <label class="control-label col-lg-2">Payment Mode</label>
                                            <div class="col-lg-10">
                                                <asp:DropDownList runat="server" AutoPostBack="true"
                                                    OnTextChanged="paymenttype_TextChanged" CssClass="form-control"
                                                    ID="paymenttype" RepeatDirection="Horizontal" Placeholder="Select a Payment Mode">
                                                    <asp:ListItem Value="0">Select a Payment Mode</asp:ListItem>
                                                    <asp:ListItem Value="USDT-TRC20">USDT-TRC20</asp:ListItem>
                                                  <%--  <asp:ListItem Value="USDT-BEP20">USDT-BEP20</asp:ListItem>--%>
                                                  <%--  <asp:ListItem Value="INR">INR</asp:ListItem>--%>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row" id="divwallet" runat="server" visible="false">
                                            <label class="control-label col-lg-2">Your Wallet </label>
                                            <div class="col-lg-10">
                                                <asp:Label ID="lbWallet" required="" runat="server"
                                                    CssClass="form-control"></asp:Label>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <label class="control-label col-lg-2">Enter Withdaw Amount </label>
                                            <div class="col-lg-10">
                                                <asp:TextBox ID="txtAmt" required="" OnTextChanged="txtAmt_TextChanged"
                                                    AutoPostBack="true" runat="server"
                                                    placeholder="Enter Withdrawal Amount" CssClass="form-control">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                        <br />

                                        <div class="row">
                                            <label class="control-label col-lg-2 text-center">Withdrawal Fee 5% </label>
                                            <div class="col-lg-3">
                                                <asp:TextBox ID="txtadmincharge" Text="0" required="" ReadOnly="true" runat="server" CssClass="form-control">
                                                </asp:TextBox>
                                            </div>

                                            <%--<label class="control-label col-lg-2 text-center">HHC 5% </label>
                                                <div class="col-lg-2">
                                                    <asp:TextBox ID="txtTDS" Text="" required="" ReadOnly="true"
                                                        runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>--%>

                                            <label class="control-label col-lg-2 text-center">Payout </label>
                                            <div class="col-lg-3">
                                                <asp:TextBox ID="txtTotal" Text="0" required="" ReadOnly="true"
                                                    runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br />





                                        <div class=" row">
                                            <label class="control-label  col-lg-2">
                                                Transaction Password<span
                                                    class="text text-danger ">*</span></label>
                                            <div class="col-lg-10">
                                                <asp:TextBox ID="txttransPassword" runat="server" required=""
                                                    AutoPostBack="true" OnTextChanged="txttransPassword_TextChanged"
                                                    class="form-control"
                                                    placeholder="Enter  Transaction Password"></asp:TextBox>
                                            </div>
                                        </div>

                                      
                                        <br />
                                        <div class="row">
                                            <div class="col-sm-offset-3 col-lg-4">
                                            </div>
                                            <div class="col-sm-offset-3 col-lg-4">
                                                <asp:Button ID="btnaction" runat="server" Text="Withdraw"
                                                    OnClick="butsubmit_Click"
                                                    CssClass="btn btn-block  btn-success btn-lg" />
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

                                        <!-- /.box -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
            </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            
  <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
        <script>

            function Successclick() {
                swal("Request sent to Admin! successfully!", "You clicked the button!", "success")
            }
        </script>
</asp:Content>
