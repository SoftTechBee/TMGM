<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="direct.aspx.cs" Inherits="User_Default" %>

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

    <div class="row">
        <div class="col-lg-12">
            <div class="card-header with-border">
                <h3 class="card-title text-danger">Direct List</h3>
                <asp:Label ID="lbname" runat="server" Text="" Visible="false"></asp:Label>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">
                            <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="20" Font-Size="Large" CssClass="table table-striped table-hover"
                                GridLines="Both" Width="100%" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging">

                                <Columns>

                                    <asp:TemplateField HeaderStyle-CssClass="headStyle" HeaderText="Sn.">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                        <ItemStyle Width="10%" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="username" HeaderStyle-CssClass="headStyle" HeaderText="UserName"></asp:BoundField>
                                    <asp:BoundField DataField="Name" HeaderStyle-CssClass="headStyle" HeaderText="Name"></asp:BoundField>
                                    <asp:BoundField DataField="Mobile" HeaderStyle-CssClass="headStyle" HeaderText="Mobile"></asp:BoundField>
                                    <%--    <asp:boundfield DataField="onside" HeaderText="Side"></asp:boundfield>--%>
                                    <asp:BoundField DataField="reffid" HeaderStyle-CssClass="headStyle" HeaderText="Sponser"></asp:BoundField>
                                    <asp:BoundField DataField="DateOFJOin" HeaderStyle-CssClass="headStyle" DataFormatString="{0:d}" HeaderText="DOA"></asp:BoundField>
                                    <asp:BoundField DataField="joinamount" HeaderStyle-CssClass="headStyle" HeaderText="Investment"></asp:BoundField>
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



