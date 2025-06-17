<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="WalletRechargeRequest.aspx.cs" Inherits="Admin_WalletRechargeRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
             
                <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
              <div class="alert alert-info alert-dismissible" id="info" runat="server"  visible="false">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-info"></i> Alert!</h4>
               <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>  
             
              </div>
              <div class="alert alert-warning alert-dismissible" id="warning" runat="server"  visible="false">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-warning"></i> Alert!</h4>
               <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label> 
            
              </div>
              <div class="alert alert-success alert-dismissible" id="sccess" runat="server"  visible="false">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
                  <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>  
              </div>
            
         
 
    <div class="card">
                            <div class="form-horizontal">
                                <div class="card-body">
                                    <h3>Wallet Recharge Request  </h3>
                                    <div class="form-group row">
                   
               
                 
                
               
                    
                                   
                <div class="col-lg-12" style="overflow:auto;">
<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
    <HeaderTemplate>
   <table id="example1" class="table table-bordered table-striped table-hover" >
                <thead>
                <tr>
                  <tr>   <th >#</th>
                  <th>UserName</th>
                 
                  <th>Amount</th>
                  <th>Transaction TXID/HASH</th>
                  <th>Payment Mode</th>
                 <th>Status</th>
                 <th>Receipt</th>
                 <th>View</th>
                      
                  <th>Date Of Request</th>
                   
                     <th>Approved</th>
                       <th>Reject</th>
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
            <td>
          <asp:Label ID="lbremark" runat="server" Text='<%#Eval("ClientRemark") %>'></asp:Label> </td>
            <td> <%#Eval("[PaymentMode]") %></td>
             <td> <%#Eval("[Status]") %></td>
            
           <td> <img src='<%#Eval("Receipt") %>' height="50" width="100" /></td>
            <td><a href='<%#Eval("Receipt") %>'><i class="fa fa-eye fa-lg"></i></a></td>
              <td> <%#Eval("DOR") %></td>
             <%-- <td> <asp:TextBox ID="txtapvamt" runat="server" CssClass="form-control" Text='<%#Eval("Amount") %>'></asp:TextBox></td>--%>
            <td>
    <asp:Button ID="Button1"  runat="server" CssClass="btn btn-flat btn-success" Text="Approved" CommandName="Approved"  CommandArgument='<%#Eval("RID")%>'/></td>
         <td>
    <asp:Button ID="Button2"  runat="server" CssClass="btn btn-flat btn-danger" Text="Reject" CommandName="Reject"  CommandArgument='<%#Eval("RID")%>'/></td>
       
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
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

    

<!-- page script -->
      
</asp:Content>




