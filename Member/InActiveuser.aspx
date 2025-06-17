<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="InActiveuser.aspx.cs" Inherits="User_Default" EnableEventValidation="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="card-header with-border">
        <h3 class="card-title text-danger">Inactive Member Details</h3>
    </div>
    <div class="card">
        <div class="card-body">
            <div class="input-group input-group-xlg" style="margin-bottom: 30px;">
                <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>

                <span class="input-group-btn">
                    <asp:Button ID="btnsearch" OnClick="btnsearch_Click1" runat="server" Text="Search" CssClass="btn btn-info btn-flat btn-lg ml-3" />

                </span>
            </div>
            <div class="row">
                <div class="table-responsive">
                    <div class="col-lg-12" style="overflow: auto;">
                        <table class="table table-striped table-hover">
                            <headertemplate>
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Member</th>
                                        <th>Name</th>
                                        <th>Sponser ID</th>
                                        <%--<th>Location ID</th>
                                                <th>Side</th>--%>
                                        <th>Date Of Joining</th>
                                        <%--   <th>Amount</th>--%>
                                        <th>Status</th>
                                        <%--<th>Action</th>--%>
                                    </tr>
                                </thead>
                            </headertemplate>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand1">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Container.ItemIndex+1 %> </td>
                                            <td><%#Eval("UserName") %></td>
                                            <td><%#Eval("Name") %></td>
                                            <td>
                                                <asp:Label ID="lbsponser" runat="server" Text='<%#Eval("ReffID") %>'></asp:Label></td>
                                            <%--<td>
                                                    <asp:Label ID="lbupline" runat="server" Text='<%#Eval("Upline") %>'></asp:Label>
                                                </td>
                                                <td><%#Eval("onSide") %></td>
                                                <td><%#Eval("JoinAmount") %></td>--%>

                                            <td><%#DataBinder.Eval(Container.DataItem, "DateOFJOin", "{0:dd/MM/yyyy}")%></td>
                                            <td><%#Eval("Status") %></td>
                                            <td>
                                              <%--  <asp:Button ID="Button1" runat="server" Text="Activate" CssClass="btn  btn-block btn-primary" CommandArgument='<%#Eval("username") %>' CommandName="Click" />
                                            </td>--%>
                                        </tr>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

