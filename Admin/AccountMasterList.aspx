<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AccountMasterList.aspx.cs" Inherits="Admin_AccountMasterList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="card-header with-border">
        <h5 class=" card-title text-danger">Fund Wallet Master List</h5>
    </div>
    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <div style="overflow: auto;">
                    <table id="example1" class="table table-striped table-hover " style="cellspacing: 0; width: 100%">
                        <thead class="thead-dark">
                            <tr>
                                <th>Sn.</th>
                                <th>Member</th>
                                <th>Date</th>
                                <th>Discription</th>
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
                                        <td><%#DataBinder.Eval(Container.DataItem, "Date", "{0:dd/MM/yyyy}")%></td>
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


