<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="rptdwonline.aspx.cs" Inherits="Adminmain_rptdwonline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .headStyle {
            color: #fff;
            background-color: #01041b;
            border: none;
            font-weight: 400;
        }
    </style>

    <div class="card-header with-border">
        <h5 class=" card-title text-danger">Downline Team</h5>
    </div>
    <div class="card ">
        <div class="form-horizontal">
            <div class="card-body">
                <div class="form-group row align-items-center">
                    <label class="col-lg-2 col-md-2 col-xs-6 ">Enter Distributor  </label>
                    <div class="col-lg-6 col-md-3 col-xs-6">
                        <asp:TextBox ID="txtuname" runat="server" placeholder="Please Enter User Name For Search" class="form-control"></asp:TextBox>

                    </div>
                    <div class="col-lg-2 col-md-2 col-xs-6 ">

                        <asp:Button ID="btnSeach" runat="server" Text="Search" CssClass="btn btn-block btn-danger" OnClick="btnSeach_Click" />

                    </div>
                </div>
                <%--<div class="form-group row">
                    <label class="col-lg-2 col-md-2 col-xs-6 ">Select Side </label>
                    <div class="col-lg-3 col-md-3 col-xs-6">

                        <asp:DropDownList runat="server" ID="drpside" CssClass="form-control">
                            <asp:ListItem Value="0"> Select</asp:ListItem>
                            <asp:ListItem Value="A">All</asp:ListItem>
                            <asp:ListItem Value="L">Left</asp:ListItem>
                            <asp:ListItem Value="R">Right</asp:ListItem>


                        </asp:DropDownList>


                    </div>
                    <label class="col-lg-2 col-md-2 col-xs-6 ">Select Account Status </label>
                    <div class="col-lg-3 col-md-3 col-xs-6 ">


                        <asp:DropDownList runat="server" ID="drpstatus" CssClass="form-control">
                            <asp:ListItem Value="0"> Select</asp:ListItem>
                            <asp:ListItem Value="3">All</asp:ListItem>
                            <asp:ListItem Value="1">Paid</asp:ListItem>
                            <asp:ListItem Value="2">Un-Paid</asp:ListItem>

                        </asp:DropDownList>


                    </div>--%>


                    <div class="form-group row">
                    <div class="table-responsive">
                        <div class="col-lg-12" style="overflow: auto;">
                            <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="10" Font-Size="Large" CssClass="table table-bordered table-striped table-hover"
                                GridLines="Both" Width="100%" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging">

                                <Columns>


                                    <asp:TemplateField HeaderStyle-CssClass="headStyle" HeaderText="#">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                        <ItemStyle Width="10%" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="username" HeaderStyle-CssClass="headStyle" HeaderText="Distibutor"></asp:BoundField>
                                    <asp:BoundField DataField="Name" HeaderStyle-CssClass="headStyle" HeaderText="Name"></asp:BoundField>
                                    <asp:BoundField DataField="reffid" HeaderStyle-CssClass="headStyle" HeaderText="SponserID"></asp:BoundField>
                                    <asp:BoundField DataField="joinamount" HeaderStyle-CssClass="headStyle" HeaderText="PurchasePackage"></asp:BoundField>
                                    <asp:BoundField DataField="Status" HeaderStyle-CssClass="headStyle" HeaderText="AccountStatus"></asp:BoundField>

                                </Columns>


                            </asp:GridView>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</asp:Content>

