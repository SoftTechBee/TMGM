<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="PurchaseHistory.aspx.cs" Inherits="User_purchasehistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .headStyle {
            color: #fff;
            background-color: #01041b;
            border: none;
        }
    </style>

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="card-header with-border">
                <h5 class="card-title text-danger">Activation Log</h5>
                <asp:Label ID="lbname" runat="server" Text="" Visible="false"></asp:Label>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <div class="col-lg-12" style="overflow: auto">
                            <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="10" Font-Size="Large" CssClass="table table-striped table-hover"
                                GridLines="Both" Width="100%" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging">

                                <Columns>

                                    <asp:TemplateField HeaderStyle-CssClass="headStyle" HeaderText="Sn.">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                        <ItemStyle Width="10%" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="username" HeaderStyle-CssClass="headStyle" HeaderText="UserName"></asp:BoundField>
                                    <asp:BoundField DataField="Amount" HeaderStyle-CssClass="headStyle" HeaderText="Amount"></asp:BoundField>
                                    <asp:BoundField DataField="Packtype" HeaderStyle-CssClass="headStyle" HeaderText="Packtype"></asp:BoundField>

                                    <asp:BoundField DataField="DOR" DataFormatString="{0:d}" HeaderStyle-CssClass="headStyle" HeaderText="DOR"></asp:BoundField>
                                    <asp:BoundField DataField="roi" HeaderStyle-CssClass="headStyle" HeaderText="DAILY PROFIT UPTO(%)"></asp:BoundField>
                                    <%-- <asp:boundfield DataField="Status" HeaderText="Status"></asp:boundfield>--%>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>



