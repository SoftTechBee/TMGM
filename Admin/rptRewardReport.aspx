<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="rptRewardReport.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- jQuery 3 -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="../../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
   
        <section class="content">
        
            <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
              
              
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
             <div class="panel">
                            <div class="form-horizontal">
                                <div class="panel-body">
      <div class="row">
        <div class="col-xs-12">
     <div class="box">
            <div class="box-header">
              <h4>Reward  Report</h4>
                
            </div>
         <hr />
            <!-- /.box-header -->
                              </div>
                            <div class=" form-group row">
                   <div class="col-lg-3 col-md-3 col-xs-6 ">

                     <asp:TextBox ID="txtsearch" Text="" CssClass="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>
          
                </div>
    <div class="ccol-lg-3 col-md-3 col-xs-6 ">
      
            <div class='input-group date' id='datetimepicker6'>
                <asp:TextBox ID="txtfromdate" class="form-control"  type="date" runat="server" placeholder="Select Form  Date " ></asp:TextBox>
                 <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
      
    </div>
             
    <div class="col-lg-3 col-md-3 col-xs-6 ">
     
           
            <div class='input-group date' id='datetimepicker7'>
                 <asp:TextBox ID="txttodate" class="form-control"  type="date" runat="server" placeholder="Select TO  Date " ></asp:TextBox>
               <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
          
        </div>
    </div>
                 <div class="col-md-2 col-xs-6 col-lg-3">
      
            <asp:Button ID="btnSeach" runat="server" Text="Search" Height="40px" Width="150px" CssClass="btn btn-block btn-success"   OnClick="btnsearch_Click"/>

      </div>
</div>
                <div style="overflow:auto;">
                <table id="example1" class="table table-bordered table-striped table-hover " style="cellspacing:0;width:100%">
                <thead>
                <tr>
                    <th >#</th>
                  <th>UserName</th>
                  <th>Name</th>
                  <th>Date</th>
                  <th>Reward Level</th>
                 <th>Reward</th>
                 <th>Paid Status</th>
                 <th>Paid NOW</th>
                   
                  
                  
                </tr>
                </thead>
                <tbody>
<asp:Repeater ID="Repeater1" runat="server"  OnItemCommand="Repeater1_ItemCommand">
   
    <ItemTemplate>
        <tr>
            <td> <%# Container.ItemIndex+1 %></td>
             <td> <%#Eval("username") %></td>
             <td> <%#Eval("name") %></td>
            <td><%#DataBinder.Eval(Container.DataItem, "DOA", "{0:dd/MM/yyyy}")%></td>
             <td> <%#Eval("Remark") %></td>
               <td> <%#Eval("Reward") %></td>
               <td> <%#Eval("paidstatus") %></td>
               <td> <asp:Button ID="btnpaid" runat="server" CssClass="btn btn-flat btn-success" Text="Paid" CommandArgument='<%#Eval("rid") %>' CommandName="Paid" /></td>
             
        </tr>
    </ItemTemplate>

</asp:Repeater>
         </tbody>
               
              </table>  
                
            </div>
               
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      </div>
      </div>
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

    

<!-- page script -->
      
</asp:Content>




