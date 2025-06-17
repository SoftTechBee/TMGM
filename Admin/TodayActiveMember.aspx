<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TodayActiveMember.aspx.cs" Inherits="Admin_DirectList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="card-header with-border">
                <h5 class=" card-title text-danger">Today Active Members</h5>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-lg-2 col-md-2 col-xs-6 ">Enter UserName </label>
                        <div class="col-lg-8 col-md-3 col-xs-6">
                            <asp:TextBox ID="txtUname" class="form-control" runat="server" placeholder="Enter UserName "></asp:TextBox>
                        </div>

                        <div class="col-lg-2 col-md-2 col-xs-6 ">
                            <asp:Button ID="btnSeach" runat="server" Text="Search" CssClass="btn btn-block btn-danger" OnClick="btnSeach_Click" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-lg-12" style="overflow: auto;">
                            <table id="example1" class="table table-responsive table-striped table-hover " style="cellspacing: 0; width: 100%">
                                <headertemplate>
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Sn.</th>
                                            <th>UserID </th>
                                            <th>Name</th>
                                            <th>Sponser Id</th>
                                            <th>Sponser Name</th>
                                            <th>Mobile</th>
                                            <%--<th>State</th>--%>
                                            <th>JoiningAmount</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                </headertemplate>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Container.ItemIndex+1 %> </td>
                                                <td><%#Eval("username") %></td>
                                                <td><%#Eval("name") %></td>
                                                <td><%#Eval("reffid") %></td>
                                                <td><%#Eval("reffname") %></td>
                                                <td><%#Eval("mobile") %></td>
                                                <%-- <td> <%#Eval("city") %></td>--%>
                                                <td><%#Eval("JoinAmount") %></td>
                                                <td><%#Eval("Status") %></td>
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
    </div>

</asp:Content>



