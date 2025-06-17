<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="rptmemberProfileAccess.aspx.cs" Inherits="Admin_rptmemberProfileAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


        <div class="alert alert-success alert-dismissible fade show" role="alert" id="sccess" runat="server" visible="false">
            <i class="uil uil-check me-2"></i>
            <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
            </button>
        </div>
        <div class="alert alert-danger alert-dismissible fade show" role="alert" id="danger" runat="server" visible="false">
            <i class="uil uil-exclamation-octagon me-2"></i>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
            </button>
        </div>
        <div class="alert alert-warning alert-dismissible fade show" role="alert" id="warning" runat="server" visible="false">
            <i class="uil uil-exclamation-triangle me-2"></i>
            <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
            </button>
        </div>
        <div class="alert alert-info alert-dismissible fade show mb-0" role="alert" id="info" runat="server" visible="false">
            <i class="uil uil-question-circle me-2"></i>
            <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
            </button>
        </div>

        <div class="row">
            <div class="col-12">
                    <div class="card-header with-border">
                    <h5 class=" card-title text-danger">Total Members</h5>
                </div>
                <div class="card">
                    <div class="form-horizontal">
                        <div class="card-body">

                            <div class=" form-group row text-center align-items-center">
                                <div class="col-lg-3 col-md-3 col-xs-6 ">
                                    <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>
                                </div>

                                <label class="control-label  col-lg-1 col-md-1 col-xs-1 ">From</label>
                                <div class="col-lg-2 col-md-2 col-xs-5 ">
                                    <div class='input-group date' id='datetimepicker6'>
                                        <asp:TextBox ID="txtfromdate" class="form-control" type="date" runat="server" placeholder="Select Form  Date "></asp:TextBox>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>

                                <label class="control-label col-lg-1 col-md-1 col-xs-1 ">To</label>
                                <div class="col-lg-2 col-md-2 col-xs-5 ">
                                    <div class='input-group date' id='datetimepicker7'>
                                        <asp:TextBox ID="txttodate" class="form-control" type="date" runat="server" placeholder="Select TO  Date "></asp:TextBox>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-2 col-xs-6">
                                    <asp:Button ID="btnSeach" runat="server" Text="Search" CssClass="btn btn-block btn-success" OnClick="btnsearch_Click" />
                                </div>
                            </div>
                            <br />

                            <div class="form-group row">
                                <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">

                                    <table id="example1" class="table table-striped table-hover ">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Sn.</th>
                                                <th>WithdrawStatus</th>
                                                <%--<th>BoostingStatus</th>
                                                <th>P2PStatus</th>--%>
                                                <th>Sponser </th>
                                                <th>UserName</th>
                                                <th>Name</th>
                                                <th>Mobile</th>
                                                <th>Email</th>
                                                <th>Password</th>
                                                <th>DateOfJoining</th>
                                                <th>Go to His Panel</th>
                                                <th>Change Password </th>
                                                <th>Change Tran Password </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%# Container.ItemIndex+1 %></td>
                                                        <td>
                                                            <asp:Button ID="btnwithdraw" runat="server" Text='<%# Withstatus(Eval("Withdrawstatus"))%>'
                                                                CssClass="btn  btn-block  btn-success"
                                                                CommandArgument='<%#Eval("username") %>'
                                                                CommandName="Withdraw" />
                                                        </td>
                                                        <%--<td>
                                                            <asp:Button ID="Button2" runat="server" Text='<%# Boostingstatus(Eval("BoostingStatus"))%>'
                                                                CssClass="btn  btn-block  btn-info"
                                                                CommandArgument='<%#Eval("username") %>'
                                                                CommandName="Bossting" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="Button3" runat="server" Text='<%# P2Pstatus(Eval("P2PStatus"))%>'
                                                                CssClass="btn  btn-block  btn-info"
                                                                CommandArgument='<%#Eval("username") %>'
                                                                CommandName="P2P" />
                                                        </td>--%>
                                                        <td><%#Eval("reffid") %></td>
                                                        <td><%#Eval("username") %></td>
                                                        <td><%#Eval("name") %></td>
                                                        <td><%#Eval("MObile") %></td>
                                                        <td><%#Eval("email") %></td>
                                                        <td><%#Eval("Password") %></td>
                                                        <td><%#DataBinder.Eval(Container.DataItem, "dateofjoining", "{0:dd/MM/yyyy}")%></td>

                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" Height="50px" Width="100px" Text="Go!" CssClass="btn  btn-block  btn-warning" CommandArgument='<%#Eval("username") %>' CommandName="View" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="Button11" runat="server" Height="50px" Width="140px" Text="Password!" CssClass="btn  btn-block  btn-success" CommandArgument='<%#Eval("username") %>' CommandName="Pass" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="Button111" runat="server" Height="50px" Width="170px" Text="Tran-Password!" CssClass="btn  btn-block  btn-danger" CommandArgument='<%#Eval("username") %>' CommandName="Transpass" />
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
            </div>
        </div>
</asp:Content>

