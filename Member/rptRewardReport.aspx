<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="rptRewardReport.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        
            <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
    
     <div class="card">
            <div class="card-header">
              <h3 class="card-title">Reward Report</h3>
                
            </div>
            <!-- /.card-header -->
            <div class="card-body" style="overflow:auto;">
               <!---  <div class="input-group input-group-sm" style="margin-bottom:30px;">
           <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>
               
                    <span class="input-group-btn">
          <asp:Button ID="btnsearch" runat="server" Text="Go!"  OnClick="btnsearch_Click" CssClass="btn btn-info btn-flat btn-lg"  />
                    
                    </span>
              </div>--->
                <table id="example1" class="table table-bordered " style="cellspacing:0;width:100%">
                <thead>
                <tr>
                    <th >#</th>
                  <%--<th>UserName</th>--%>
                  <th>Date</th>
                  <th>Reward Level</th>
                 <th>Reward</th>
                 <th>Paid Status</th>
                   
                  
                  
                </tr>
                </thead>
                <tbody>
<asp:Repeater ID="Repeater1" runat="server" >
   
    <ItemTemplate>
        <tr>
            <td style="font-weight:bold;font-size:medium"> <%# Container.ItemIndex+1 %></td>
             <%--<td style="font-weight:bold;font-size:medium"> <%#Eval("username") %></td>--%>
            <td style="font-weight:bold;font-size:medium"><%#DataBinder.Eval(Container.DataItem, "DOA", "{0:dd/MM/yyyy}")%></td>
             <td style="font-weight:bold;font-size:medium;color:darkslateblue"> <%#Eval("Remark") %></td>
               <td style="font-weight:bold;font-size:medium;color:goldenrod"> <%#Eval("Reward") %></td>
               <td style="font-weight:bold;font-size:medium;color:green"> <%#Eval("Paidstatus") %></td>
             
        </tr>
    </ItemTemplate>

</asp:Repeater>
         </tbody>
               
              </table>  
                
            
               
            </div>
            <!-- /.card-body -->
          </div>
        
       
  

    

<!-- page script -->
      
</asp:Content>




