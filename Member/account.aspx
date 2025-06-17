<%@ Page Title="" Language="C#" MasterPageFile="~/member/MasterPage.master" AutoEventWireup="true" CodeFile="account.aspx.cs" Inherits="Admin_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .headStyle {
            color: #fff;
            background-color: #01041b;
            border:none;
        }
    </style>

            <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
                <h4><i class="icon fa fa-ban"></i>Alert!</h4>
                <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">Income Summary</h5>
                        </div>

                        <div class="card-body" style="overflow: auto;">

                            <asp:GridView ID="grdData" runat="server"
                                AutoGenerateColumns="False" CellPadding="10" PageSize="10" Font-Size="Large" CssClass="table table-bordered table-striped table-hover"
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
                                    <asp:BoundField DataField="Debit" HeaderStyle-CssClass="headStyle" HeaderText="Debit"></asp:BoundField>
                                </Columns>

                            </asp:GridView>

                        </div>
                    </div>
                </div>
            </div>

</asp:Content>


