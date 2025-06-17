<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="LevelTreeView.aspx.cs" Inherits="Admin_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-body">
        <!-- Container-fluid starts-->
        <div class="container-fluid dashboard-default-sec">

            <!------Msgbox End---->

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
            <link href="https://ajax.googleapis.com/ajax/static/modules/gviz/1.0/orgchart/orgchart.css" rel="stylesheet" />
            <script type="text/javascript">

                function NewWindow(mypage, myname, w, h, scroll) {
                    var winl = (screen.width - w) / 2;
                    var wint = (screen.height - h) / 2;
                    winprops = 'height=' + h + ',width=' + w + ',resizable, top=' + wint + ',left=' + winl + ',scrollbars=' + scroll + ','
                    win = window.open(mypage, myname, winprops)
                    if (parseInt(navigator.appVersion) >= 4) { win.window.focus(); }
                }
            </script>
            <link href="../Mycss/Tree.css" rel="stylesheet" />
            <section class="content">

                <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h4><i class="icon fa fa-ban"></i>Alert!</h4>
                    <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Tree View</h3>

                            </div>
                            <!-- /.box-header -->
                            <div class="box-body" style="overflow: auto;">
                                - <%-- <div class="input-group input-group-sm" style="margin-bottom:30px;">
           <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>
               
                    <span class="input-group-btn">
          <asp:Button ID="btnsearch" runat="server" Text="Go!"  OnClick="btnsearch_Click"  CssClass="btn btn-info btn-flat btn-lg"  />
                    
                    </span>
              </div>--%>
                                <!------------------------------Tree View Start---------------------------->

                                <div lign="Left" style="overflow-x: scroll;">
                                    <table border="0" bordercolor="#A2C0FC" cellpadding="1" cellspacing="0"
                                        width="900" height="500" style="color: black!important">
                                        <tbody>
                                            <tr>
                                                <td valign="top" align="center">

                                                    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

                                                    <script type="text/javascript">
                                                        google.load("visualization", "1", { packages: ["orgchart"] });
                                                        google.setOnLoadCallback(drawChart);
                                                        function drawChart() {
                                                            $.ajax({
                                                                type: "POST",
                                                                url: "LevelTreeView.aspx/FunTreeView",
                                                                data: '{}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (r) {
                                                                    //  alert(r.d);

                                                                    var maindata = eval(r.d);
                                                                    //  alert(maindata[0].UserName);
                                                                    var data = new google.visualization.DataTable();
                                                                    data.addColumn('string', 'Entity');
                                                                    data.addColumn('string', 'ParentEntity');
                                                                    data.addColumn('string', 'ToolTip');
                                                                    data.addColumn('string', 'ImageName');
                                                                    data.addColumn('string', 'UserName');

                                                                    if (maindata.length > 0) {
                                                                        for (var i = 0; i < maindata.length; i++) {
                                                                            var UserName = maindata[i].UserName;
                                                                            var memberName = maindata[i].Name;
                                                                            var parentId = maindata[i].ParentID;
                                                                            var memberId = maindata[i].MemberID;
                                                                            var RankName = maindata[i].RankName;
                                                                            var RankPer = maindata[i].RankPercentage;
                                                                            var ImageName = maindata[i].ProfilePic;
                                                                            var status = maindata[i].Status
                                                                            var side = maindata[i].side

                                                                            if (ImageName != '../SoftImg/NoImage.jpeg') {
                                                                                ImageName = ImageName;
                                                                            }

                                                                            else {
                                                                                ImageName = '../SoftImg/NoImage.jpeg';
                                                                            }


                                                                            var color = '#F01B0A';
                                                                            if (status == "Active") {
                                                                                color = '#076E25';

                                                                            }
                                                                            data.addRows([[{
                                                                                v: memberId,
                                                                                ///f: '<div ><a href="LevelTreeView.aspx?upline=' + UserName + '"><img src ="../photos/G.png" alt="' + UserName + '" height="25" width="30" data-toggle="tooltip" title="' + memberName + '" /><br/><span>' + UserName + '<span/><br/><span>' + memberName + '<span/><br/><span>' + RankName + '<span/><br/><span>' + RankPer + '<span/></a></div>'
                                                                                f: '<div class="col-sm-6 col-md-3"><div class="doc-profile"><img class="rounded-circle img-fluid avatar-80" src=' + ImageName + ' alt="' + UserName + '" height="50" width="50" data-toggle="tooltip" title="' + memberName + '" /></div><div class="iq-doc-info mt-3"><h4>' + UserName + '</h4><p class="mb-0" >' + memberName + '</p><p class="mb-0" >Status:' + status + '</p></div><a href="LevelTreeView.aspx?upline=' + UserName + '" class="btn btn-primary">View</a></div></div></div >'

                                                                            }, parentId, memberName, ImageName, UserName]]);


                                                                        }
                                                                    }
                                                                    var chart = new google.visualization.OrgChart($("#chart")[0]);
                                                                    chart.draw(data, { allowHtml: true, size: 'large' });
                                                                },
                                                                failure: function (r) {
                                                                    alert(r.d);
                                                                },
                                                                error: function (r) {
                                                                    // alert('hi');
                                                                    alert(r.d);
                                                                }
                                                            });
                                                        }
                                                    </script>

                                                    <div id="chart">
                                                    </div>

                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>




                                <!-------------------------END --------------->


                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
        </div>
    </div>


    <!-- page script -->

</asp:Content>


