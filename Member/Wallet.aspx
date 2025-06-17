<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="Wallet.aspx.cs" Inherits="Admin_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="card-header with-border">
                <h5 class="card-title text-danger">Wallet History</h5>
            </div>
            <div class="card">
                <%--<div class="card-body" style="overflow: auto;">
                            <div class="input-group input-group-sm" style="margin-bottom: 30px;">
                                <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>
                                <span class="input-group-btn">
                                    <asp:Button ID="btnsearch" runat="server" Text="Go!" OnClick="btnsearch_Click" CssClass="btn btn-info btn-flat btn-lg" />
                                </span>
                            </div>--%>
                <div class="table-responsive">
                    <table id="example1" class="table table-striped table-hover " style="cellspacing: 0; width: 100%">
                        <thead class="thead-dark">
                            <tr>
                                <th>Sn.</th>
                                <th>Member</th>
                                <th>Date</th>
                                <th>Particular</th>
                                <th>Credit</th>
                                <th>Debit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server">

                                <ItemTemplate>
                                    <tr>
                                        <td><%# Container.ItemIndex+1 %></td>
                                        <td><%#Eval("username") %></td>
                                        <td><%#DataBinder.Eval(Container.DataItem, "date", "{0:dd/MM/yyyy}")%></td>
                                        <td><%#Eval("Remark") %></td>
                                        <td><%#Eval("Debit") %></td>
                                        <td><%#Eval("Credit") %></td>
                                    </tr>
                                </ItemTemplate>

                            </asp:Repeater>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th>Total</th>
                                <th>
                                    <asp:Label ID="lbcredit" runat="server" Text=""></asp:Label>
                                </th>
                                <th>
                                    <asp:Label ID="lbdebit" runat="server" Text=""></asp:Label>
                                </th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


