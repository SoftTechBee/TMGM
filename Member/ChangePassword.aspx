<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="User_ChangePassword" %>

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

    <div class="card-header with-border">
        <h5 class="card-title text-danger">Security Password</h5>
    </div>
    <div class="card card-primary">
        <div class="card-body">
            <div class="form-horizontal">
                <div class="row">
                    <div class="mb-3 col-md-6">
                        <label for="firstName" class="form-label">Current Password*</label>
                        <asp:TextBox ID="txtoldpass" runat="server" required="" placeholder="Enter Current Password" OnTextChanged="txtoldpass_TextChanged" AutoPostBack="true" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3 col-md-6">
                        <label for="firstName" class="form-label">New Password</label>
                        <asp:TextBox ID="txtnew" runat="server" required="" placeholder="Enter New Password" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3 col-md-6">
                        <label for="firstName" class="form-label">Confirm Password</label>
                        <asp:TextBox ID="txtconfirm" runat="server" required="" placeholder="Enter Confirm Password" CssClass="form-control"></asp:TextBox>
                    </div>
                    <%--<div class="mb-3 col-md-6">
                        <label for="firstName" class="form-label">New Trans Password</label>
                        <asp:TextBox ID="txttransnew" runat="server" required="" placeholder="Enter New Trans Password" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3 col-md-6">
                        <label for="firstName" class="form-label">Trans Confirm Password</label>
                        <asp:TextBox ID="txttransconfirm" runat="server" required="" placeholder="Enter Trans Confirm Password" CssClass="form-control"></asp:TextBox>
                    </div>--%>
                </div>

            </div>
            <div class="card-footer">
                <div class=" text-center col-sm-3">
                    <asp:Button ID="btnaction" runat="server" Text="Change" OnClick="Button1_Click" CssClass="btn btn-block btn-primary btn-block" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

