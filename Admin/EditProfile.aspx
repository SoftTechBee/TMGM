<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Admin_Default" %>

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
            <h5 class=" card-title text-danger">Edit User's Profile</h5>
        </div>
    <div class="card">
        <br />
        <div class="row>">
            <div class="col-lg-12">
                <div class="input-group input-group-xlg" style="margin-bottom: 10px; margin-top: -10px;">
                    <asp:TextBox ID="txtsearchuname" CssClass="form-control" placeholder="Enter User Name" runat="server"></asp:TextBox>
                    <span class="input-group-btn">
                        <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" CssClass="btn btn-info btn-flat ml-3" />
                    </span>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-3">
            <div class="card card-block card-stretch card-height ">
                <div class="card-header with-border">
                    <h5 class=" card-title text-danger">Admission Detail</h5>
                </div>
                <div class="form-horizontal">
                    <div class="card-body">

                        <div class="form-group row">
                            <label class="col-lg-12">UserName</label>
                            <div class="col-lg-12">
                                <asp:Label ID="lbUserName" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-12">Sponser</label>
                            <div class="col-lg-12">
                                <asp:Label ID="lbSponser" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                            <center>
                                <asp:Label runat="server" ID="lbSponserName" Text="" CssClass="label label-info label-success"></asp:Label>
                            </center>

                        </div>

                        <%--<div class="form-group">
                            <label class="col-lg-12">Select Upline</label>
                            <div class="col-lg-12">
                                <asp:Label ID="lbUpline" runat="server" Text="" CssClass="form-control"></asp:Label>
                                <center>
                                    <asp:Label runat="server" ID="lbuplineName" Text="" CssClass="label label-info label-success"></asp:Label>
                                </center>

                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-12">Select Side</label>
                            <div class="col-lg-12">
                                <asp:Label ID="lbside" runat="server" Text="" CssClass="form-control"></asp:Label>
                                <center>
                                    <asp:Label runat="server" ID="lbmsg" Text="" CssClass="label  label-danger"></asp:Label>
                            </div>
                        </div>--%>

                        <div class="form-group row">
                            <label class="col-lg-12">Joining Date</label>
                            <div class="col-lg-12">
                                <asp:Label ID="lbDOJ" runat="server" Text="" CssClass="form-control"></asp:Label>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-12">Account Status</label>
                            <div class="col-lg-12">
                                <asp:Label ID="lbStatus" runat="server" Text="" CssClass="form-control"></asp:Label>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-lg-9">
            <div class="card card-block card-stretch card-height ">
                <div class="card-header with-border">
                    <h5 class=" card-title text-danger">User Details</h5>
                </div>
                <div class="form-horizontal">
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="control-label  col-lg-2">Full Name</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Enter  Full Name"></asp:TextBox>
                            </div>
                            
                        </div>

                        <div class="form-group row">
                            <label class="control-label  col-lg-2">Father/Husband Name</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtFName" Rows="5" runat="server" class="form-control" placeholder="Enter Father Name"></asp:TextBox>
                            </div>
                        </div>

                        <%--<div class="form-group">
                            <label class="control-label  col-lg-2">DateOFBirth</label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtDOB" runat="server" class="form-control" Type="date" placeholder="Enter  DateOFBirth"></asp:TextBox>
                            </div>
                        </div>--%>

                        <div class="form-group row">
                            <label class="control-label  col-lg-2">Address</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtAddress" TextMode="multiline" Columns="50" runat="server" class="form-control" placeholder="Enter Address"></asp:TextBox>
                            </div>
                        </div>


                        <%--<label class="control-label  col-lg-2">Enter PanCard Number </label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="txtpan" runat="server" MaxLength="10" class="form-control" placeholder="Enter PanCard Number"></asp:TextBox>
                        </div>
                        <label class="control-label  col-lg-2">Enter PinCode</label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="txtpincode" runat="server" MaxLength="6" class="form-control" placeholder="Enter PinCode"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="control-label  col-lg-2">Select State </label>
                            <div class="col-lg-4">
                                <asp:DropDownList ID="drpstate" DataTextField="state" DataValueField="state" AutoPostBack="true" OnSelectedIndexChanged="drpstate_SelectedIndexChanged" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                            <label class="control-label  col-lg-2">Select City </label>
                            <div class="col-lg-4">
                                <asp:DropDownList ID="drpCity" DataTextField="City" DataValueField="City" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>--%>

                        <div class="form-group row">
                            <label class="control-label  col-lg-2">Mobile </label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" class="form-control" placeholder="Enter Mobile"></asp:TextBox>
                            </div>
                            
                        </div>

                        <div class="form-group row">
                            <label class="control-label col-lg-2">Email </label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtEmail" runat="server" type="email" class="form-control" placeholder="Enter Email"></asp:TextBox>
                            </div>
                        </div>


                        <%--<div class="form-group">
                            <label class="control-label  col-lg-2">Enter Aadhar Card Number </label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtaadhar" runat="server" class="form-control" placeholder="Enter  Aadhar Card Numbe"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label class="control-label  col-lg-2">Select Marital</label>
                                <div class="col-lg-4">
                                    <asp:RadioButtonList ID="rdMaritalStatus" runat="server" CssClass="form-control iradio_minimal-red" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="0">Married</asp:ListItem>
                                        <asp:ListItem Value="1">Un-Married</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <label class="control-label  col-lg-2">Date Of Anniversary </label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtDOA" runat="server" Type="date" class="form-control" placeholder="Enter  Aadhar Card Numbe"></asp:TextBox>
                                </div>
                            </div>--%>

                        <div class="form-group row">
                            <div class="col-lg-8">
                                <center>
                                    <asp:Button ID="bntsubmit" OnClick="bntsubmit_Click" OnClientClick="return Validate();" runat="server" Text="Save" Width="200px" CssClass=" btn bg-info btn-flat" />
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--<div class="row">
        <div class="col-lg-12">
            <div class="box  box-warning ">
                <div class="box-header with-border">
                    <h1 class=" box-title">Nomnee Detail</h1>
                </div>
                <!----form start---->
                <div class="form-horizontal">
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label  col-lg-2">Nominee Name</label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtNName" runat="server" class="form-control" placeholder="Enter Nominee Name"></asp:TextBox>
                            </div>
                            <label class="control-label  col-lg-2">Nominee Age</label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtNAge" runat="server" max="2" class="form-control" placeholder="Enter Nominee Age"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label  col-lg-2">Nominee Mobile</label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtNMobile" runat="server" class="form-control" placeholder="Enter Nominee Mobile"></asp:TextBox>
                            </div>
                            <label class="control-label  col-lg-2">Relation With Nominee</label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtNRelation" runat="server" class="form-control" placeholder="Enter Nominee Mobile"></asp:TextBox>
                            </div>
                        </div>

                        <div class="box-footer">
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <%-- </div>--%>
</asp:Content>
