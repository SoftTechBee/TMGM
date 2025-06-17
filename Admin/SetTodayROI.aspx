<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="SetTodayROI.aspx.cs" Inherits="Admin_setnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
             
              <div class="alert alert-info alert-dismissible" id="info" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-info"></i> Alert!</h4>
               <asp:Label ID="lbinfo" runat="server" Text="Already Inserted........."></asp:Label>  
             
              </div>
            
 
           <div class="card">
                            <div class="form-horizontal">
                                <div class="card-body">
                                    <h3>Set Today ROI  </h3>
                                    <div class="form-group row">

               
                                    <div class="col-lg-3"></div>     
                      <div class="col-lg-6"> 
                            <div class="form-group has-success">
                           <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i>Package Type</label>
                        
                            <asp:DropDownList runat="server" ID="drpPacktype"  CssClass="form-control">
                                  <asp:ListItem Value="STANDARD">STANDARD</asp:ListItem>
                                  <asp:ListItem Value="CLASSIC">CLASSIC</asp:ListItem>
                                  <asp:ListItem Value="PREMIUM">PREMIUM</asp:ListItem>
                                
                                        
                                   
                              </asp:DropDownList>
                          </div>
                          <div class="form-group has-success">
                  <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i>Today ROI</label>
                   <asp:TextBox ID="txthead" runat="server"  class="form-control" placeholder="Enter Today ROI"></asp:TextBox>                          
</div>
                            
                        
                          </div>
                          </div>
                        
                      </div>

                                   
                                        
 
                
       <div class="form-group row">
             <div class="col-lg-3"> <div class="form-group has-success"></div>
                 </div>

                   <div class="col-md-6">   
             <asp:Button ID="bntsubmit" runat="server" Text="Save" CssClass="btn btn-block btn-success" OnClick="bntsubmit_Click" />
                           
              </div>
             
         </div>

                  
           
       
              <div class="  form-group row">
        <div class="col-lg-12">
           
                
                      <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

                         <HeaderTemplate>
                              <table class="table table-bordered table-hover table-responsive">
                          <tr><th>#</th>
                              <th>PACKAGES</th>
                              <th>ROI</th>
                              <th>Date</th>
                          </tr>


                         </HeaderTemplate>
                          <ItemTemplate>
                              <tr>
                              <td><%# Container.ItemIndex+1 %></td>
                                      <td>
                                      <asp:Label ID="pack" runat="server" Text='<%#Eval("type") %>'></asp:Label></td>
                                  <td>
                                      <asp:Label ID="lbusername" runat="server" Text='<%#Eval("ROI") %>'></asp:Label> %</td>
                              
                                      <td><asp:Label ID="lbname" runat="server" Text='<%#Eval("DOI") %>'></asp:Label></td>
                                 
                              </tr>
                            
                          </ItemTemplate>
                          <FooterTemplate>
                               </table>
                          </FooterTemplate>
                      </asp:Repeater>
                          
                     
                  </div>
              </div>        
                       
                    </div>
            </div>
                </div>
            
</asp:Content>

