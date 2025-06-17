<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="IncomeToUser.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="alert alert-info alert-dismissible" id="info" runat="server" visible="false">
        <h4><i class="icon fa fa-info"></i>Alert!</h4>
        <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>
    </div>

    <div class="alert alert-warning alert-dismissible" id="warning" runat="server" visible="false">
        <h4><i class="icon fa fa-warning"></i>Alert!</h4>
        <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label>
    </div>

    <div class="alert alert-success alert-dismissible" id="sccess" runat="server" visible="false">
        <h4><i class="icon fa fa-check"></i>Alert!</h4>
        <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>
    </div>


    <script type="text/javascript">
        function Validate() {
            // alert('');
            var isChecked = false;


            if (document.getElementById("ContentPlaceHolder1_drpPackage").value == "Select") {
                document.getElementById("ContentPlaceHolder1_drpPackage").className = "TxtBoxError";
                isChecked = false;
            }
            else {

                document.getElementById("ContentPlaceHolder1_drpPackage").className = "form-control";
                isChecked = true;
            }
            if (document.getElementById("ContentPlaceHolder1_txtOTP").value != "") {
                document.getElementById("ContentPlaceHolder1_txtOTP").className = "form-control";
                isChecked = false;
            }
            else {

                document.getElementById("ContentPlaceHolder1_txtOTP").className = "form-control";
                isChecked = true;
            }
            return isChecked;

        }
    </script>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row">
        <div class="col-lg-12">
            <div class="card-header with-border">
                <h3 class="card-title text-danger">P2P Wallet Transfer</h3>
            </div>
            <div class="card ">
                <div class="card-body">
                    <div class="mb-3 row">
                        <label class="control-label col-sm-4">Available Wallet  </label>
                        <div class="col-sm-6">
                            <h3>$<asp:Label ID="txtbalance" runat="server" Text="0"></asp:Label></h3>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label class="control-label col-sm-4">Member </label>
                        <div class="col-sm-6">
                            <asp:Label ID="lbActiveMember" runat="server" CssClass="control-label"></asp:Label>
                        </div>
                    </div>

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="txtTransid" EventName="TextChanged" />
                            <%--<asp:AsyncPostBackTrigger ControlID="txttransPassword" EventName="TextChanged" />--%>
                        </Triggers>
                        <ContentTemplate>

                            <div class="mb-3 row">
                                <label class="control-label col-sm-4">Enter Transfer Member ID </label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="txtTransid" required="" AutoPostBack="true" OnTextChanged="txtTransid_TextChanged" runat="server" CssClass="form-control" placeholder="Enter Transfer Member"></asp:TextBox>
                                    Name:
                                    <asp:Label ID="lbTransname" runat="server" Text="N/A" CssClass="control-label text-danger"></asp:Label>(Fund:<asp:Label ID="lbincome" runat="server" Text="0.0" CssClass="control-label text-danger"></asp:Label>)
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label class="control-label col-sm-4">Enter Transfer Fund Amount </label>
                                <div class="col-sm-6">

                                    <asp:TextBox ID="txtAMount" required="" runat="server" CssClass="form-control" placeholder="Enter Transfer amount"></asp:TextBox>
                                    <asp:Label ID="lbmsg" runat="server" CssClass="control-label"></asp:Label>
                                </div>
                            </div>

                            <%--<div class="mb-3 row">
                          <label class="control-label col-sm-4">Admin Fee(2%) </label>
                          <div class="col-sm-6">
                             
                          <asp:Textbox ID="txtadmincharge" ReadOnly="true"    required="" runat="server"  CssClass="form-control" placeholder="Admin Fee"></asp:Textbox>
                          </div>
                              </div>
                                         <div class="mb-3 row">
                          <label class="control-label col-sm-4">Final Amount(Paid) </label>
                          <div class="col-sm-6">
                             
                          <asp:Textbox ID="txtfinal"  ReadOnly="true"  required="" runat="server"  CssClass="form-control" placeholder="Final Amount "></asp:Textbox>
                          </div>
                              </div>--%>

                            <div class=" mb-3 row">
                                <label class="control-label  col-lg-4">Enter  Transaction Password<span class="text text-danger ">*</span></label>
                                <div class="col-lg-6">
                                    <asp:TextBox ID="txttransPassword" runat="server" required="" TextMode="Password" class="form-control" placeholder="Enter  Transaction Password"></asp:TextBox>
                                </div>
                            </div>

                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <div class="mb-3 row">
                        <div class=" col-sm-4">
                        </div>
                        <div class=" col-sm-4">
                            <asp:Button ID="btnaction" runat="server" Text="Transfer" OnClientClick="return confirmAction()" OnClick="butsubmit_Click" Width="200px" CssClass=" btn btn-primary btn-flat btn-lg" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script>
        // The function below will start the confirmation dialog
        function confirmAction() {
            let confirmAction = confirm("Are you sure to execute this action?");

            if (confirmAction) {
                alert("Action Successfully executed");
                return true;
            }
            else {
                alert("Action Canceled");
                return false;
            }
        }
    </script>

</asp:Content>

