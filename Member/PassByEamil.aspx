<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="PassByEamil.aspx.cs" Inherits="User_ChangePassword" %>

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
        <h3 class="card-title text-danger">Change Password By Mail</h3>
    </div>
    <div class="card card-primary">
        <div class="card-body">
            <div class="form-horizontal">
                <div class="row">
                    <div class="mb-3 col-md-6">
                        <label class="mb-1"><strong>Email Address</strong></label>
                        <asp:TextBox ID="txtmail" required="" runat="server" class="form-control  " placeholder="Enter Register Eamil Address"></asp:TextBox>
                    </div>

                </div>

            </div>
            <div class="card-footer">

                <div class=" text-center col-sm-3">
                    <asp:Button ID="btnaction" runat="server" Text="Send Mail" OnClick="Button1_Click" CssClass="btn btn-block btn-primary btn-block" />
                </div>

            </div>
        </div>
    </div>

</asp:Content>

