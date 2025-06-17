<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="rptlevelincome.aspx.cs" Inherits="User_rptLevelIncome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .headStyle {
            color: #fff;
            background-color: #01041b;
            border: none;
            font-weight: 400;
        }
    </style>

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="card-header with-border">
        <h3 class="card-title text-danger">Royalty Income</h3>
    </div>
    <div class="card">
        <div class="card-body">
            <div class=" form-horizontal align-items-center">
                <div class=" row">
                    <label class="col-lg-2 col-md-2 col-xs-6 col-sm-6">Select Form  Date </label>
                    <div class="col-lg-3 col-md-3 col-xs-6 col-sm-6">
                        <div class='input-group date' id='datetimepicker6'>
                            <asp:TextBox ID="txtfromdate" class="form-control" required="" type="date" runat="server" placeholder="DD-MM-YYYY"></asp:TextBox>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>

                    <label class="col-lg-2 col-md-2 col-xs-6 col-sm-6">Select TO  Date </label>
                    <div class="col-lg-3 col-md-3 col-xs-6 col-sm-6">
                        <div class='input-group date' id='datetimepicker7'>
                            <asp:TextBox ID="txttodate" class="form-control" required="" type="date" runat="server" placeholder="DD-MM-YYYY"></asp:TextBox>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-2 col-xs-6 col-sm-6">
                        <asp:Button ID="btnSeach" runat="server" Text="Search" CssClass="btn btn-info btn-flat btn-lg ml-3" OnClick="btnSeach_Click" />
                    </div>
                </div>

                <div class="form-group mt-5">
                    <div class="table-responsive">
                        <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">

                            <asp:GridView ID="grdData" runat="server"
                                AutoGenerateColumns="False" CellPadding="10" PageSize="10" Font-Size="Large" CssClass="table table-striped table-hover"
                                GridLines="Both" Width="100%" AllowPaging="True"
                                OnPageIndexChanging="grdData_PageIndexChanging" ShowFooter="true">

                                <Columns>

                                    <asp:TemplateField HeaderStyle-CssClass="headStyle" HeaderText="Sn.">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                        <ItemStyle Width="10%" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="username" HeaderStyle-CssClass="headStyle" HeaderText="UserName"></asp:BoundField>
                                    <asp:BoundField DataField="date" DataFormatString="{0:d}" HeaderStyle-CssClass="headStyle" HeaderText="Date"></asp:BoundField>
                                    <asp:BoundField DataField="Remark" HeaderStyle-CssClass="headStyle" HeaderText="Particular"></asp:BoundField>
                                    <asp:BoundField DataField="Credit" HeaderStyle-CssClass="headStyle" HeaderText="Credit"></asp:BoundField>

                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

