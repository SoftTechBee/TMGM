<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="rptrewardincome.aspx.cs" Inherits="User_rptCashBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .headStyle {
            color: #fff;
            background-color: #01041b;
            border: none;
            font-weight: 400;
        }
    </style>

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="row">
        <div class="col-lg-12">
           <h4 class="card-title text-success">Reward Income</h4>

                    <hr />
            <div class="card">
                <div class="card-body">
               
                    <div class=" form-horizontal">
                        <div class="form-group row align-items-center">
                            <label class="col-lg-2 col-md-2 col-xs-6 col-sm-6">Select From  Date </label>
                            <div class="ccol-lg-3 col-md-3 col-xs-6 col-sm-6">

                                <div class='input-group date' id='datetimepicker6'>
                                    <asp:TextBox ID="txtfromdate" class="form-control" required="" type="date" runat="server" placeholder="DD-MM-YYYY"></asp:TextBox>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>

                            </div>
                            <label class="col-lg-2 col-md-2 col-xs-6 col-sm-6">Select TO  Date </label>
                            <div class="col-lg-3 col-md-3 col-xs-6 col-sm-6">


                                <div class='input-group date' id='datetimepicker7'>
                                    <asp:TextBox ID="txttodate" class="form-control" required="" type="date" runat="server" placeholder="DD-MM-YYYY"></asp:TextBox>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>

                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-xs-6 col-sm-6">

                                <asp:Button ID="btnSeach" runat="server" Text="Search" CssClass="btn btn-info btn-flat btn-sm ml-3" OnClick="btnSeach_Click" />

                            </div>
                        </div>

                       <div class="form-group mt-4">
    <div class="table-responsive border rounded shadow-sm">
        <asp:GridView ID="grdData" runat="server"
            AutoGenerateColumns="False"
            AllowPaging="True"
            PageSize="10"
            ShowFooter="true"
            Font-Size="Medium"
            CssClass="table table-dark  table-bordered  mb-0 text-center align-middle"
            GridLines="None"
            OnPageIndexChanging="grdData_PageIndexChanging">

            <HeaderStyle CssClass="bg-info text-dark fw-bold" />
            <RowStyle CssClass="align-middle" />
            <FooterStyle CssClass="table-secondary text-dark fw-bold" />

            <Columns>
                <asp:TemplateField HeaderText="Sn.">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                    <ItemStyle Width="5%" />
                </asp:TemplateField>

                <%--<asp:BoundField DataField="username" HeaderText="👤 UserName" />--%>
                <asp:BoundField DataField="date" HeaderText="📅 Date" DataFormatString="{0:dd/MM/yyyy}"  />
                <asp:BoundField DataField="Remark" HeaderText="📝 Particular"  />
                <asp:BoundField DataField="Credit" HeaderText="💰 Income " ItemStyle-HorizontalAlign="Right"  />
            </Columns>
        </asp:GridView>
    </div>
</div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

