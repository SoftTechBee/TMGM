<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="UnBlockMemberList.aspx.cs" Inherits="Admin_UnBlockMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="alert alert-info alert-dismissible" id="info" runat="server" visible="false">
        <h4><i class="icon fa fa-info"></i>Alert!</h4>
        <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>
    </div>

    <div class="alert alert-warning alert-dismissible" id="warning" runat="server" visible="false">
        <h4><i class="icon fa fa-warning"></i>Alert!</h4>
        <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label>
    </div>

    <div class="alert alert-success alert-dismissible" id="sccess" runat="server" visible="false">
        <h4><i class="icon fa fa-check"></i>Alert!</h4>
        <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>
    </div>

        <div class="card-header with-border">
            <h5 class=" card-title text-danger">Un-Blocked Member Details </h5>
        </div>
    <div class="card">
        <div class="form-horizontal">
            <div class="card-body">
                <div class=" form-group row">
                    <div class="col-lg-12" style="overflow: auto;">
                        <table class="table table-striped table-hover">
                            <headertemplate>
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Sponser Id</th>
                                        <th>User Name</th>
                                        <th>Name</th>
                                        <th>Mobile</th>
                                        <th>Statue</th>
                                        <th>JoiningAmount</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                            </headertemplate>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand1">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Container.ItemIndex+1 %> </td>
                                            <td>
                                                <asp:Label ID="lbsponser" runat="server" Text='<%#Eval("reffid") %>'></asp:Label></td>
                                            <td><%#Eval("username") %></td>
                                            <td><%#Eval("name") %></td>
                                            <td><%#Eval("mobile") %></td>
                                            <td><%#Eval("status") %></td>
                                            <td>
                                                <asp:Label ID="lbAmount" runat="server" Text='<%#Eval("JoinAmount") %>'></asp:Label></td>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" Text="Blocked" CssClass="btn  btn-block btn-success" CommandArgument='<%#Eval("username") %>' CommandName="Click" />
                                            </td>
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


