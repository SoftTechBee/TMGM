using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;
using System.Data.SqlClient;
using TripleITConnection;
using TripleITTransaction;
public partial class User_ProfilePic : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    clsSMS objsms = new clsSMS();
    clsValidation objValidation = new clsValidation();
    static string Password = "", id = "", dateofjoining = "", Profilepic = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (SessionData.Get<string>("Newuser") == null)
            {
                Response.Redirect("logout.aspx");
            }
            else
            {
                String UserName = SessionData.Get<string>("Newuser");
              
                imgPancard.Src= SessionData.Get<string>("profilepic");

            }
        }
            
        
    }
 
    protected void bntsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string imgPath = "";
            if (FilePanCard.HasFile)
            {
                string UploadedImageType = FilePanCard.PostedFile.ContentType.ToString().ToLower();
                string UploadedImageFileName = FilePanCard.PostedFile.FileName;

                //Create an image object from the uploaded file
                System.Drawing.Image UploadedImage = System.Drawing.Image.FromStream(FilePanCard.PostedFile.InputStream);

                string ThumbnailImage = System.IO.Path.GetFileName(FilePanCard.PostedFile.FileName);
                string extenion = System.IO.Path.GetExtension(FilePanCard.PostedFile.FileName);
                string imgurl = SessionData.Get<string>("Newuser") + "profilepic";
                imgurl += ThumbnailImage;
                imgPath = "../SoftImg/Profile/" + imgurl;
                FilePanCard.SaveAs(Server.MapPath(imgPath.Trim()));




                string sql = "update register set profilepic='" + imgPath + "' where username='" + SessionData.Get<string>("Newuser") + "' ";
                int a = objcon.ExecuteSqlQuery(sql);

                if (a > 0)
                {
                    SessionData.Put("profilepic", imgPath);

                    lbinfo.Text = "Profile Image Updated successfully";
                    info.Visible = true;
                
                    imgPancard.Src = SessionData.Get<string>("profilepic");
                }
                else if (a == -1)
                {

                    lbinfo.Text = "Profile Image already Updated successfully";
                    info.Visible = true;
                }
                else
                {

                    lbinfo.Text = "Profile Image has not Updated successfully";
                    info.Visible = true;
                }
            }
        }
        catch (Exception ex)
        { }
    }
    public void Clear()
    {
       


    }
    protected void btncencel_Click(object sender, EventArgs e)
    {
        Clear();

    }
   
}