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
public partial class Admin_PackMaster : System.Web.UI.Page
{
    clsDashboard objdash = new clsDashboard();
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    clsValidation objValidation = new clsValidation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            loadList();
        }
        //if (IsPostBack && FileUploadChaque.PostedFile != null)
        //{
        //    if (FileUploadChaque.PostedFile.ContentLength > 1000000)
        //    {
        //        Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
        //    }

        //    else if (FileUploadChaque.PostedFile.FileName.Length < 1000000)
        //    {
        //        if (FileUploadChaque.HasFile)
        //        {
        //            if (!objValidation.IsExtenstion(FileUploadChaque, "Image"))
        //            {
        //                string UploadedImageType = FileUploadChaque.PostedFile.ContentType.ToString().ToLower();
        //                string UploadedImageFileName = FileUploadChaque.PostedFile.FileName;

        //                //Create an image object from the uploaded file
        //                System.Drawing.Image UploadedImage = System.Drawing.Image.FromStream(FileUploadChaque.PostedFile.InputStream);

        //                string ThumbnailImage = System.IO.Path.GetFileName(FileUploadChaque.PostedFile.FileName);
        //                string extenion = System.IO.Path.GetExtension(FileUploadChaque.PostedFile.FileName);
        //                string imgurl = SessionData.Get<string>("Newuser") + "product";
        //                imgurl += ThumbnailImage;
        //                string imgPath = "../SoftImg/Product/" + imgurl;
        //                FileUploadChaque.SaveAs(Server.MapPath(imgPath.Trim()));
        //                ImgChaque.Src = imgPath;
        //                hndcheque.Value = imgPath;


        //            }
        //        }
        //    }
        //}

    }

    protected void btncencel_Click(object sender, EventArgs e)
    {

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
                string imgurl = drpPacktype.SelectedValue + "PackImg";
                imgurl += ThumbnailImage;
                imgPath = "../SoftImg/Product/" + imgurl;
                FilePanCard.SaveAs(Server.MapPath(imgPath.Trim()));



                if (hndlid.Value != "")
                {
                    int a = objamd.PackMaster(Convert.ToInt32(hndlid.Value), drpPacktype.SelectedValue, 0, Convert.ToDecimal(txtmini.Text), Convert.ToDecimal(txtmax.Text), 0, Convert.ToDecimal(txtdtbincome.Text), 0, "", "", imgPath, "U");
                    if (a > 0)
                    {
                        lbsuccess.Text = " Packages Update  Successed";
                        sccess.Visible = true;
                        info.Visible = false;

                        loadList();
                    }
                    else
                    {
                        lbsuccess.Text = "Packages Update has not  Successed";
                        sccess.Visible = true;
                        info.Visible = false;


                    }
                }
                else
                {
                    int a = objamd.PackMaster(0, drpPacktype.SelectedValue,     0, Convert.ToDecimal(txtmini.Text),Convert.ToDecimal(txtmax.Text), 0, Convert.ToDecimal(txtdtbincome.Text), 0, "", "", imgPath, "N");
                    if (a > 0)
                    {
                        lbsuccess.Text = " Packages Added  Successfully";
                        sccess.Visible = true;
                        info.Visible = false;

                        loadList();
                    }
                    else
                    {
                        lbsuccess.Text = "Problem While Adding Packages!!";
                        sccess.Visible = true;
                        info.Visible = false;


                    }
                }

            }
        }
        catch (Exception ex)
        { }
    }
    public void loadList()
    {
        try
        {
            string sql = "select * from TblInvestMaster  order by id asc";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {

                //sccess.Visible = false;

            }
            else
            {
                //lbinfo.Text = "Opps! NO Data Found";
                //info.Visible = true;
            }

            grdData.DataSource = dt;
            grdData.DataBind();


        }
        catch (Exception ex)
        {

        }


    }

    protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdData.PageIndex = e.NewPageIndex;
        //   this.BindGrid();
        loadList();
    }


    protected void grdData_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            info.Visible = false;

            string sql = "Delete from TblInvestMaster where id='" + e.CommandArgument.ToString() + "'";
            int a = objcon.ExecuteSqlQuery(sql);
            if (a > 0)
            {
                lbinfo.Text = "Packages Remove successfully";
                info.Visible = true;
                sccess.Visible = false;
                loadList();
            }
            else
            {
                lbinfo.Text = "Packages  has not remove successfully";
                info.Visible = true;
                sccess.Visible = false;

                loadList();
            }
        }


    }
}