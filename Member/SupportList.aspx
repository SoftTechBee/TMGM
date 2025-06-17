<%@ Page Title="" Language="C#" MasterPageFile="~/member/MasterPage.master" AutoEventWireup="true" CodeFile="SupportList.aspx.cs" Inherits="User_SupportList1" %>

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

    <div class="card-header with-borderr">
        <h3 class="card-title text-danger">Ticket List</h3>
    </div>
    <div class="card">
        <div class="card-body">
            <div class="form-horizontal">
                <div class="form-group row align-items-center">
                    <label class="col-lg-2 col-md-2 col-xs-6 ">Select Form  Date </label>
                    <div class="ccol-lg-3 col-md-3 col-xs-6">
                        <asp:TextBox ID="txtfromdate" class="form-control" required="" type="date" runat="server" placeholder="DD-MM-YYYY"></asp:TextBox>
                    </div>
                    <label class="col-lg-2 col-md-2 col-xs-6 ">Select TO  Date </label>
                    <div class="col-lg-3 col-md-3 col-xs-6 ">
                        <asp:TextBox ID="txttodate" class="form-control" required="" type="date" runat="server" placeholder="DD-MM-YYYY"></asp:TextBox>
                    </div>

                    <div class="col-lg-2 col-md-2 col-xs-6 ">
                        <asp:Button ID="btnSeach" runat="server" Text="Search" CssClass="btn btn-block btn-primary" OnClick="btnSeach_Click" />
                    </div>
                </div>
                <br />

                <div class="form-group row">
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">
                        <div class="table-responsive">
                            <table class="table table-centered table-nowrap table-striped table-hover">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Date</th>
                                        <th>Subject</th>
                                        <th>Your Message</th>
                                        <th>Response</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Container.ItemIndex+1 %></td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "DOI", "{0:dd/MM/yyyy}")%></td>
                                                <td class="text-info"><%#Eval("subject") %></td>
                                                <td class="text-info"><%#Eval("message") %></td>
                                                <td class="text-success"><%#Eval("Response") %></td>
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



