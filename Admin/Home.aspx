<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">

            <div class="row mb-4">
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span class="">Total Deposit ($)</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-warning" style="font-size: 20px"></i>
                            <asp:Label ID="lbTotalDeposite" CssClass="text-success" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Total withdrawal ($)</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-warning" style="font-size: 20px"></i>
                            <asp:Label ID="lbTotalWithdrawal" CssClass="text-secondary" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Company Balance ($)</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-warning" style="font-size: 20px"></i>
                            <asp:Label ID="lbCompanyNetBalance" CssClass="text-warning" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Pending withdrawal ($)</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-warning" style="font-size: 20px"></i>
                            <asp:Label ID="lbpendingwithdraw" CssClass="text-info" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Total Member</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3">
                            <asp:Label ID="lbTotalMember" CssClass="text-secondary" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Active Member</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3">
                            <asp:Label ID="lbpaidmember" CssClass="text-success" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Inactive Member</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3">
                            <asp:Label ID="lbfreemember" CssClass="text-info" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span class="">Today Joining</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3">
                            <asp:Label ID="lbTodayJoin" CssClass="text-warning" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>



            </div>
            <div class="row mb-4">
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span class="">Today Active</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3">
                            <asp:Label ID="lbtodayactive" CssClass="text-success" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Profit ROI Income</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-secondary" style="font-size: 20px"></i>
                            <asp:Label ID="lbroi" CssClass="text-secondary" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>ROI Level Income</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-warning" style="font-size: 20px"></i>
                            <asp:Label ID="lbdirectincome" CssClass="text-warning" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Royalty Income</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-info" style="font-size: 20px"></i>
                            <asp:Label ID="lbroyalty" CssClass="text-info" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Award & Reward</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-secondary" style="font-size: 20px"></i>
                              <a href="rptRewardReport.aspx" class="text-success"><asp:Label ID="lbreward" runat="server" Text="0"></asp:Label></a></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Super Network Bonus</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-secondary" style="font-size: 20px"></i>
                            <asp:Label ID="lbsnlevel" CssClass="text-secondary" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span class="">Loyalty Bonus</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-success" style="font-size: 20px"></i>
                            <asp:Label ID="lbloyalty" CssClass="text-success" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Renewal Bonus</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-info" style="font-size: 20px"></i>
                            <asp:Label ID="lbrenewable" CssClass="text-info" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>--%>
              <%--  <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Compound Interest</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-warning" style="font-size: 20px"></i>
                            <asp:Label ID="lbregional" CssClass="text-warning" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>--%>
               <%-- <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Total Team Business</span>
                            <i title="Good Day" data-toggle="tooltip"
                                class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3"><i class="ti-money text-success" style="font-size: 20px"></i>
                            <asp:Label ID="lbteambusiness" CssClass="text-success" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;"
                                aria-valuenow="42" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>


            <%--           <div class="row">
               <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Total BTW Reserve</span>
                          <i title="Good Day" data-toggle="tooltip"
                                                   class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h4 class="mb-3">BTW 5,000,000,000</h4>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 100%;"
                                 aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>
  
               <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Total Reserved BTW</span>
                          <i title="Good Day" data-toggle="tooltip"
                                                   class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3">BTW <asp:Label ID="Label1" CssClass="text-warning" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 100%;"
                                 aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>
               <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Total Accumulated BTW</span>
                          <i title="Good Day" data-toggle="tooltip"
                                                   class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3">BTW <asp:Label ID="Label2" CssClass="text-warning" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 100%;"
                                 aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>
               <div class="col-lg-3 col-md-6 col-sm-12 mb-2">
                    <div class="card card-body">
                        <p class="d-flex justify-content-between mb-2">
                            <span>Remaining BTW</span>
                         <i title="Good Day" data-toggle="tooltip"
                                                   class="hide-show-toggler-item ti-face-smile"></i>
                        </p>
                        <h2 class="mb-3">BTW <asp:Label ID="Label3" CssClass="text-warning" runat="server" Text="0"></asp:Label></h2>
                        <div class="progress" style="height: 5px">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%;"
                                 aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>
           
            </div>--%>
        </div>
    </div>
</asp:Content>

