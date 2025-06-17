<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="SelfActive.aspx.cs" Inherits="User_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .card {
    border-color: #198754!important;
}
    </style>
    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
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


    <div class="card-header with-border p-3 d-flex justify-content-between">
        <h5 class="card-title text-danger">Packages For ID:
            <asp:Label ID="lbActiveMember" runat="server" CssClass="control-label"></asp:Label></h5>
    </div>
    <div class="card">
        <div class="card-body row">
            <button type="button" class="btn mb-1 col-lg-5 ">
                Your Fund : $
                        <asp:Label ID="txtbalance" CssClass="text-primary" runat="server" Text="0"></asp:Label>
            </button>
            <button type="button" class="btn mb-1 col-lg-5  ml-auto ">
                Current Pack :
                    <asp:Label ID="lbpack" CssClass="text-primary" runat="server" Text="N/A"></asp:Label>
            </button>
        </div>
    </div>

    <div class="row">
        <asp:Repeater ID="rep1" runat="server" OnItemCommand="rep1_ItemCommand">
            <ItemTemplate>
                <div class="col-lg-4 col-sm-6">
                    <div class="card card-block card-stretch card-height blog ">
                        <h4 class="text-center mt-3">
                            <asp:Label ID="lbpackname" runat="server" Text='<%#Eval("name") %>'></asp:Label></h4>
                        <div class="card-body text-center rounded">
                            <div>
                                <h3>
                                    <asp:Label ID="income" runat="server" CssClass="text-success" Text='<%#Eval("income") %>'></asp:Label> % <small
                                        class="font-size-2 text-muted text-white ml-2">UP TO PROFIT</small>
                                </h3>
                            </div>
                            <ul class="list-unstyled mb-0 center-content">
                                <li>
                                    <svg viewBox="0 0 20 20" fill="currentColor" height="15px"
                                        width="15px" class="mr-2">
                                        <path fill-rule="evenodd"
                                            d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                                            clip-rule="evenodd" />
                                    </svg>Investment Amount($)
                                </li>
                                <li>
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" height="15px"
                                        width="15px" class="mr-2">
                                        <path fill-rule="evenodd"%
                                            d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                                            clip-rule="evenodd" />
                                    </svg>Mini : <asp:Label ID="lbmin" runat="server" CssClass="text-success" Text='<%#Eval("DP") %>'></asp:Label>
                                </li>
                                <li>
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" height="15px"
                                        width="15px" class="mr-2">
                                        <path fill-rule="evenodd"
                                            d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                                            clip-rule="evenodd" />
                                    </svg>Maxi : <asp:Label ID="lbmax" CssClass="text-success" runat="server" Text='<%#Eval("GV") %>'></asp:Label>
                                </li>
                              <%--  <li>
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" height="15px"
                                        width="15px" class="mr-2">
                                        <path fill-rule="evenodd"
                                            d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                                            clip-rule="evenodd" />
                                    </svg>Daily Bonus upto
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("income") %>'></asp:Label>$
                                </li>--%>

                            </ul>
                            <asp:Button ID="btnaction" runat="server" Text="Go Now?" CommandArgument='<%#Eval("id") %>' CommandName="Buy" CssClass="btn btn-success mt-5 btn-sm text-uppercase" />
                         <%--   <asp:Button ID="btnRetopup" runat="server" Text="Retopup" CommandArgument='<%#Eval("id") %>' CommandName="Retopup" CssClass="btn btn-warning mt-5 text-uppercase" />--%>

                            <%--<a href="#" data-toggle="modal" data-target=".bd-example-modal-sm" class="btn btn-primary mt-5 text-uppercase">get started</a>
                            --%>
                        </div>
                    </div>
                </div>
                <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Invsetment Amount</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="col-lg-12">
                                    <p>Invset Amount</p>
                                    <asp:TextBox runat="server" ID="txtAmt" Text="" class=" form-control" placeholder="Enter Invset Amount"></asp:TextBox>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <%--<asp:Button ID="btnaction" runat="server" Text="Buy Now"  CommandArgument='<%#Eval("id") %>' CommandName="Buy"     CssClass="btn btn-primary"/>
                                --%>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
    <script>

        function Successclick() {
            swal("Package Buy Successfully!", "You clicked the button!", "success")
        }
    </script>


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

