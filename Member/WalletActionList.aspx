<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="WalletActionList.aspx.cs" Inherits="Admin_WalletApprovedList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
               
                <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
              
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
              <div class="alert alert-info alert-dismissible" id="info" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-info"></i> Alert!</h4>
               <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>  
             
              </div>
              <div class="alert alert-warning alert-dismissible" id="warning" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-warning"></i> Alert!</h4>
               <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label> 
            
              </div>
              <div class="alert alert-success alert-dismissible" id="sccess" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
                  <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>  
              </div>
            
         
 
    <div class="card">
                            <div class="form-horizontal">
                                <div class="card-body">
                                    <h5>Transaction Review  </h5>
                             

  
               
                    
                
               
                   <div class=" form-group row">   
                                   
                <div class="col-lg-12" style="overflow:auto;">
<asp:Repeater ID="Repeater1" runat="server" >
    <HeaderTemplate>
   <table id="example1" class="table table-bordered table-striped table-hover" >
                <thead>
                <tr>
                  <tr>   <th >#</th>
                  <th>UserName</th>
                 
                  <th>Amount</th>
                 <th>Status</th>
                 <th>Payment Mode</th>
                 <th>Transaction TXID/HASH</th>
                     <%-- <th>Daily ROI</th>
                      <th>PlanType</th>--%>
                  <th>Date Of Request</th>
                  <th>Date Of Action</th>
                   
                     
                </tr>
                </thead>
                <tbody>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td> <%#Container.ItemIndex+1 %> </td>           
            
             <td>
          <asp:Label ID="lbname" runat="server" Text='<%#Eval("UserName") %>'></asp:Label> </td>
               <td>
          <asp:Label ID="lbamount" runat="server" Text='<%#Eval("Amount") %>'></asp:Label> </td>
         
             <td> <%#Eval("[Status]") %></td>
             <td> <%#Eval("[PaymentMode]") %></td>
             <td> <%#Eval("[ClientRemark]") %></td>
           <%--  <td> <%#Eval("[Receipt]") %></td>
             <td> <%#Eval("[remark]") %></td>--%>
         <%--  <td> <img src='<%#Eval("Receipt") %>' height="50" width="100" /></td>
            <td><a href='<%#Eval("Receipt") %>'><i class="fa fa-eye fa-lg"></i></a></td>--%>
          <td><%#DataBinder.Eval(Container.DataItem, "DOR", "{0:MM/dd/yyyy}")%></td>
          <td><%#DataBinder.Eval(Container.DataItem, "DOD", "{0:MM/dd/yyyy}")%></td>
          
   
            </tr>
    </ItemTemplate>
<FooterTemplate>

     </tbody>
               
              </table>
</FooterTemplate>
</asp:Repeater>
             </div> 
                
            </div>
               
            </div>
            <!-- /.box-body -->
         
          <!-- /.box -->
        </div>
        <!-- /.col -->
   </div>
 

    

<!-- page script -->
      
</asp:Content>




