<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="ProfilePic.aspx.cs" Inherits="User_ProfilePic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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

    

        <div class="alert alert-danger dark alert-dismissible fade show" role="alert" id="danger" runat="server" visible="false">
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
            <button class="btn-close" type="button" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <div class="alert alert-info dark alert-dismissible fade show" role="alert" id="info" runat="server" visible="false">
            <asp:Label ID="lbinfo" runat="server" Text="There is  some thing wrong........."></asp:Label>
            <button class="btn-close" type="button" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <div class="alert alert-warning dark alert-dismissible fade show" role="alert" id="warning" runat="server" visible="false">
            <asp:Label ID="lbwarning" runat="server" Text="There is  some thing wrong........."></asp:Label>
            <button class="btn-close" type="button" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <div class="alert alert-success dark alert-dismissible fade show" id="sccess" runat="server" visible="false">
            <i class="icon fa fa-check"></i>Alert!
                  <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>
            <button type="button" class="btn-close" data-dismiss="alert" aria-hidden="true"></button>
        </div>


        <div class="card-header with-border">
            <h5 class=" card-title text-danger">Avatar</h5>
        </div>
    <div class="card">
        <div class="card-body">
            <div class="form-horizontal">

                <div class="form-group row">
                    <label class="col-lg-6 control-label">Upload Profile Image</label>

                    <asp:FileUpload ID="FilePanCard" runat="server" Style="display: none;" onchange="showimagepreview(this,'imgPancard')" />
                    <div class="col-lg-6 img-chair">
                        <img id="imgPancard" runat="server"
                            onclick="getinputimage('FilePanCard');"
                            style="width: 150px; height: 150px" src="../SoftImg/NoImage.jpeg" alt=" Image" />
                    </div>
                </div>
                <br />

                <div class="box-footer">
                    <center>
                        <asp:Button ID="bntsubmit" OnClick="bntsubmit_Click" OnClientClick="return Validate();" runat="server" Text="Save" Width="200px" CssClass=" btn btn-primary btn-flat btn-lg" />
                    </center>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

