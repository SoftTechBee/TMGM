<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="rptdwonline.aspx.cs" Inherits="User_rptdwonline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .headStyle {
            color: #fff;
            background-color: #01041b;
            border: none;
            font-weight: 400;
        }
    </style>

    <div class="card-header with-borderr">
        <h3 class="card-title text-danger">Downline Member Detail</h3>
    </div>
    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <div style="overflow: auto; color: #000000;">
                    <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="10" Font-Size="Large" CssClass="table table-striped table-hover"
                        GridLines="Both" Width="100%" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging">
                        <Columns>

                            <asp:TemplateField HeaderStyle-CssClass="headStyle" HeaderText="Sn.">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                                <ItemStyle Width="10%" />
                            </asp:TemplateField>
                            <%-- <asp:boundfield DataField="Level" HeaderText="LevelNo"></asp:boundfield>--%>
                            <asp:BoundField DataField="username" HeaderStyle-CssClass="headStyle" HeaderText="UserName"></asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderStyle-CssClass="headStyle" HeaderText="Name"></asp:BoundField>
                            <asp:BoundField DataField="reffid" HeaderStyle-CssClass="headStyle" HeaderText="Sponser"></asp:BoundField>
                            <asp:BoundField DataField="DateOFJOining" HeaderStyle-CssClass="headStyle" DataFormatString="{0:d}" HeaderText="DOA"></asp:BoundField>
                            <asp:BoundField DataField="Upline" HeaderStyle-CssClass="headStyle" HeaderText="Upline"></asp:BoundField>
                            <%--   <asp:boundfield DataField="side"  HeaderText="Side"></asp:boundfield>--%>
                            <asp:BoundField DataField="joinamount" HeaderStyle-CssClass="headStyle" HeaderText="Investment"></asp:BoundField>
                            <asp:BoundField DataField="Status" HeaderStyle-CssClass="headStyle" HeaderText="AccountStatus"></asp:BoundField>

                        </Columns>


                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

