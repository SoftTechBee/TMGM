<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="SupportLIst.aspx.cs" EnableEventValidation="true" Inherits="Admin_SupportLIst" %>

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
                <h5 class=" card-title text-danger">Member Support</h5>
            </div>
            <div class="card ">
                <div class="form-horizontal">
                    <div class="card-body">
                        <div class="form-group row">
                            <div class=" col-sm-offset-4 col-sm-10">
                            </div>
                            <div class="col-sm-2">
                                <asp:Button ID="btnExportToExcel" CssClass="btn btn-block btn-success" Text="ExportToExcel" OnClick="btnExportToExcel_Click" runat="server" />
                            </div>
                        </div>
                    </div>


                    <div class="card-body">
                        <div class="form-group row align-items-center">
                            <label class="col-lg-2 col-md-2 col-xs-6 ">Enter UserName </label>
                            <div class="col-lg-8 col-md-3 col-xs-6">
                                <asp:TextBox ID="txtUname" class="form-control" runat="server" placeholder="Enter UserName "></asp:TextBox>
                            </div>

                            <div class="col-lg-2 col-md-2 col-xs-6 ">
                                <asp:Button ID="btnSeach" runat="server" Text="Search" CssClass="btn btn-block btn-danger" OnClick="btnSeach_Click" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="table-responsive">
                                <div class="col-lg-12" style="overflow: auto">

                                    <table class="table table-striped table-hover ">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Sn.</th>
                                                <th>Date</th>
                                                <th>Member</th>
                                                <th>Subject</th>
                                                <th>Your Message</th>
                                                <th>Response</th>
                                                <th>New Responsce</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>

                                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Container.ItemIndex+1 %> </td>

                                                    <td><%#DataBinder.Eval(Container.DataItem, "DOI", "{0:dd/MM/yyyy}")%></td>
                                                    <td class="text-info"><%#Eval("username") %></td>
                                                    <td class="text-info"><%#Eval("subject") %></td>
                                                    <td class="text-info"><%#Eval("message") %></td>
                                                    <td class="text-success"><%#Eval("Response") %></td>
                                                    <td>
                                                        <asp:TextBox ID="txtResposnce" CssClass="form-control" runat="server" Text=''></asp:TextBox></td>
                                                    <td>
                                                        <asp:Button ID="Button1" runat="server" Text="Approved" CssClass="btn  btn-block  btn-warning" CommandArgument='<%#Eval("sid") %>' CommandName="Click" />
                                                    </td>
                                                </tr>

                                            </ItemTemplate>

                                        </asp:Repeater>

                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

