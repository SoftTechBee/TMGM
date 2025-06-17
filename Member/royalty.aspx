<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="royalty.aspx.cs" Inherits="User_Default" %>

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
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Royalty Status</h5>
                    <asp:Label ID="lbname" runat="server" Text="" Visible="false"></asp:Label>
                </div>

                <div class="card-body">
                    <div style="overflow: auto; color: #000000;">
                        <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="10" Font-Size="Large" CssClass="table table-bordered table-striped table-hover"
                            GridLines="Both" Width="100%" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging">

                            <Columns>

                                <asp:TemplateField HeaderStyle-CssClass="headStyle" HeaderText="Sn.">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                    <ItemStyle Width="10%" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="username" HeaderStyle-CssClass="headStyle" HeaderText="UserID"></asp:BoundField>
                                <asp:BoundField DataField="royalty" HeaderStyle-CssClass="headStyle" HeaderText="Rank"></asp:BoundField>
                                <asp:BoundField DataField="remark" HeaderStyle-CssClass="headStyle" HeaderText="Status"></asp:BoundField>
                                <asp:BoundField DataField="reward" HeaderStyle-CssClass="headStyle" HeaderText="Reward"></asp:BoundField>
                                <asp:BoundField DataField="DOA" HeaderStyle-CssClass="headStyle" DataFormatString="{0:d}" HeaderText="DateOfAction"></asp:BoundField>
                               <%-- <asp:BoundField DataField="AdminCharge" HeaderStyle-CssClass="headStyle" HeaderText="AdminCharge"></asp:BoundField>
                                <asp:BoundField DataField="Payout" HeaderStyle-CssClass="headStyle" HeaderText="Payout Transfer"></asp:BoundField>

                                <asp:BoundField DataField="Wallet" HeaderStyle-CssClass="headStyle" HeaderText="Wallet Address"></asp:BoundField>
                                <asp:BoundField DataField="DOR" HeaderStyle-CssClass="headStyle" DataFormatString="{0:d}" HeaderText="DateOfAction"></asp:BoundField>
                                <asp:BoundField DataField="Status" HeaderStyle-CssClass="headStyle" HeaderText="Status"></asp:BoundField>--%>

                            </Columns>


                        </asp:GridView>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>



