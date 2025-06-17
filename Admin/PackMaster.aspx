<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="PackMaster.aspx.cs" Inherits="Admin_PackMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <script>
function getinputimage(id) {
            document.getElementById("ContentPlaceHolder1_" + id).click();
                    }
                    function showimagepreview(input, inputimg) {
                        var fileInput = input;
                        var filePath = fileInput.value;
                        var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
                        if (!allowedExtensions.exec(filePath)) {
                            alert('Please upload file having extensions .jpeg/.jpg/.png/.gif only.');
                            $('#ContentPlaceHolder1_' + inputimg).attr('src', '../SoftImg/NoImage.jpeg');
                            return false;
                        } else {

                            //Image preview
                            if (fileInput.files && fileInput.files[0]) {
                                var reader = new FileReader();
                                reader.onload = function (e) {
                                    //document.getElementById('imagePreview').innerHTML = '<img src="' + e.target.result + '"/>';
                                    $('#ContentPlaceHolder1_' + inputimg).attr('src', e.target.result);
                                };
                                reader.readAsDataURL(fileInput.files[0]);
                            }
                            else {
                                $('#ContentPlaceHolder1_' + inputimg).attr('src', '../SoftImg/NoImage.jpeg');
                            }
                        }
                    }
            </script>
     

             
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
                                    <h4 class="card-title">TopUp Package Master </h4>
                 <!----form start---->
                           
             <hr />
                    
                         <div class="form-group row">
                           
               
                                        
                  <label class="control-label  col-lg-2">Package Name </label>
                                <div class="col-lg-4">     
            
                        
                            <asp:DropDownList runat="server" ID="drpPacktype"  CssClass="form-control">
                                  <asp:ListItem Value="-1">SELECT PACKAGE</asp:ListItem>
                                  <asp:ListItem Value="STANDARD">STANDARD</asp:ListItem>
                                  <asp:ListItem Value="CLASSIC">CLASSIC</asp:ListItem>
                                  <asp:ListItem Value="PREMIUM">PREMIUM</asp:ListItem>
                                
                                        
                                   
                              </asp:DropDownList> 
                        
                         </div>
                         <label class="control-label  col-lg-2">Profit Upto(%) </label>
                                <div class="col-lg-4">     
                 <asp:TextBox ID="txtdtbincome" runat="server" placeholder="Enter Daily Profit Upto  "  class="form-control" ></asp:TextBox> 
                        
                         </div> 
                         </div> 
                                      <div class="form-group row">
                           
               <%--<label class="control-label  col-lg-2">Minimum Investment </label>
                                <div class="col-lg-4">     
                 <asp:TextBox ID="txtmin" runat="server" placeholder="Enter Minimum Investment "  class="form-control" ></asp:TextBox> 
                        
                         </div> --%>
                                        
                  <label class="control-label  col-lg-2"> Investment Amount Minimum </label>
                                <div class="col-lg-4">     
                 <asp:TextBox ID="txtmini" runat="server" placeholder="Enter Amount Investment "  class="form-control" ></asp:TextBox> 
                        
                         </div>
                                          <label class="control-label  col-lg-2"> Investment Amount Maximum </label>
                                <div class="col-lg-4">     
                 <asp:TextBox ID="txtmax" runat="server" placeholder="Enter Amount Investment "  class="form-control" ></asp:TextBox> 
                        
                         </div>
                         
                         </div> 
                                     <%--<div class="form-group row">
                           
               
                               <label class="control-label  col-lg-2">DTB Income(%)</label>
                                <div class="col-lg-4">     
                 <asp:TextBox ID="txtdtbincome" runat="server" placeholder="Enter DUALTEAM TURNOVER BONUS INCOME"  class="form-control" ></asp:TextBox> 
                        
                         </div>
                                         <label class="control-label  col-lg-2">Require Rank</label>
                                <div class="col-lg-4">     
                 <asp:TextBox ID="txtrequiredrank" runat="server" placeholder="Enter Require Rank "  class="form-control" ></asp:TextBox> 
                        
                         </div>
                </div>--%>
                      <div class=" form-group row">


                        <div class="col-lg-6">
                        <label class="control-label ">Upload Package Image <span class="text text-danger ">*</span> </label>

                <asp:FileUpload ID="FilePanCard" runat="server" style="display:none;" onchange="showimagepreview(this,'imgPancard')" />

                        </div>
                        <div class="col-lg-6">

                             <img id="imgPancard"  runat="server" 
                                                        onclick="getinputimage('FilePanCard');"
                                                        style="width:150px; height:150px" src="../SoftImg/NoImage.jpeg" alt=" Image" />
                                               

                        </div>

                    </div>
                  <div class="form-group row">
                           
                 
                             <div class="col-lg-12">
                     <center>
                 <asp:Button ID="bntsubmit" OnClick="bntsubmit_Click"  runat="server" Text="Save"  CssClass=" btn btn-success btn-flat btn-lg"  />  
               
                    
                      </center>                    
                </div>
                
                 </div>
                                    <h4 class="card-title">TopUp Package List </h4>

                                    <hr />
                                <div class=" form-group row">
                                     <div class="col-lg-12" style="overflow:auto">
                                      <asp:gridview ID="grdData" runat="server"  OnRowCommand="grdData_RowCommand"

AutoGenerateColumns="False" CellPadding="20" PageSize="10"  Font-Size="small" CssClass="table table-bordered table-striped table-hover"

          GridLines="Both" Width="100%" AllowPaging="True"

            OnPageIndexChanging="grdData_PageIndexChanging"  >
           
            <columns>
             

<asp:TemplateField HeaderText="#">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
                <ItemStyle Width="5%" />
</asp:TemplateField>
                        
               
             
                 <asp:boundfield DataField="Name" HeaderText="Packages Name"></asp:boundfield>
                   <asp:boundfield DataField="Income" HeaderText="PROFIT UPTO(%)"></asp:boundfield>

                 <asp:boundfield DataField="DP" HeaderText="Minimum Invest"></asp:boundfield>
                 <asp:boundfield DataField="GV" HeaderText="Maximum Invest"></asp:boundfield>
                
                
                <asp:TemplateField HeaderText="Img">
                <ItemTemplate>
              
            <a href='<%#Eval("ImgUrl") %>'><img src='<%#Eval("ImgUrl") %>' height="50" width="100" /></a>  </ItemTemplate>
                  </asp:TemplateField>  <asp:TemplateField HeaderText="Remove">
                <ItemTemplate>
                <asp:Button runat="server" ID="btnupdate"  Text="Remove" CssClass="btn btn-block btn-danger"  CommandArgument='<%#Eval("id") %>' CommandName="Remove"/>
    </ItemTemplate>
                  </asp:TemplateField>
                </columns>
          
           
        </asp:gridview>
                  </div>
            
                                </div>
             
          
                       
            </div>

        </div>
                </div>
             <br /> 
             <br /> 
             <br /> 
         <asp:HiddenField ID="hndlid" runat="server" />

</asp:Content>

