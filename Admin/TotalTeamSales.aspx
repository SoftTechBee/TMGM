<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TotalTeamSales.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="card ">
                <div class="card-body">
                    <h3>Total Team Sales</h3>
                <div class=" form-group row">
                    <div class="col-lg-9 col-md-9 col-xs-9 ">
                        <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>
                    </div>

                   
                    <div class="col-md-3 col-xs-3 col-lg-3">
                        <asp:Button ID="btnSeach" runat="server" Text="Search" Height="40px" Width="120px" CssClass="btn btn-block btn-success" OnClick="btnsearch_Click" />
                    </div>
                </div>

                    <div class="form-group row" style="overflow: auto;">
                        <div class="col-lg-12">

                                 <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Sn.</th>
                                        <%--<th>Sponsor Id</th>--%>
                                        <th>Username</th>
                                        <th>Amount</th>

                                        <%--<th>Name</th>--%>
                                        <%--<th>Mobile</th>--%>
                                        <%--<th>Status</th>--%>
                                        <th>Package</th>
                                        <%--<th>Blocked Status</th>--%>
                                        <th>Date</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">

                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Container.ItemIndex+1 %> </td>
                                                <%--<td>
                                                    <asp:Label ID="lbsponser" runat="server" Text='<%#Eval("reffid") %>'></asp:Label></td>--%>
                                                <td><%#Eval("username") %></td>
                                                <td>$<%#Eval("Amount") %></td>

                                                <%--<td><%#Eval("name") %></td>--%>
                                                <%--<td><%#Eval("mobile") %></td>--%>
                                                <%--<td><%#Eval("status") %></td>--%>
                                                <td><%#Eval("PackType") %></td>
                                                <%--<td><%#Eval("loginstatus") %></td>--%>
                                                <td><%#DataBinder.Eval(Container.DataItem, "DOR", "{0:dd/MM/yyyy}")%></td>
                                            </tr>

                                        </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                                <%--<tfoot>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th>Total</th>
                                        <th>
                                            <asp:Label ID="lbtotal" CssClass="text  text-bold text-bold" runat="server" Text=""></asp:Label></th>

                                    </tr>
                                </tfoot>--%>
                            </table>

                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>

