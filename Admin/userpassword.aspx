<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="userpassword.aspx.cs" Inherits="Admin_userpassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

        <style>
        .headStyle {
            color: #fff;
            background-color: #01041b;
            border: none;
            font-weight: 400;
        }
    </style>

    <div class="row">
        <div class="col-lg-12">
                <div class="card-header with-border">
                    <h5 class=" card-title text-danger">User Passwords</h5>
                </div>
            <div class="card">
                <div class="form-horizontal">
                    <div class="card-body">

                        <div class="input-group input-group-xlg" style="margin-bottom: 30px;">
                            <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button ID="btnsearch" OnClick="btnsearch_Click" runat="server" Text="Search" CssClass="btn btn-info btn-flat btn-lg ml-3" />
                            </span>
                        </div>

                        <asp:GridView ID="GridView1" OnPageIndexChanging="GridView1_PageIndexChanging" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="10" Font-Size="Large" CssClass="table table-striped table-hover"
                            GridLines="Both" Width="100%" AllowPaging="True">

                            <Columns>

                                <asp:TemplateField HeaderStyle-CssClass="headStyle"  HeaderText="Sn.">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                    <ItemStyle Width="10%" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="username" HeaderStyle-CssClass="headStyle"  HeaderText="UserName"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderStyle-CssClass="headStyle"  HeaderText="Name"></asp:BoundField>
                                <asp:BoundField DataField="mobile" HeaderStyle-CssClass="headStyle"  HeaderText="Mobile"></asp:BoundField>
                                <asp:BoundField DataField="password" HeaderStyle-CssClass="headStyle"  HeaderText="Password"></asp:BoundField>
                                <asp:BoundField DataField="transpassword" HeaderStyle-CssClass="headStyle"  HeaderText="Trans Password"></asp:BoundField>

                            </Columns>


                        </asp:GridView>

                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

