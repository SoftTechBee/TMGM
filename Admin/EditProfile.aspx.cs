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
public partial class Admin_Default : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    clsSMS objsms = new clsSMS();
    static string Password = "", id = "", dateofjoining = "", Profilepic="";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            
        
        }
    }
   
   
    private void loadlist(string UserName)
    {
        try
        {

            string sql = "select id,reffid,reffname,name,username,[password],fname,onside,dateofJoin,[address],city,[state],country,email,mobile,[status],nomineename,relation,pan,aadhar,nage,sex,pin,dob,rtime,ftime,cardno,nomineemobile,dateofjoining,DOA,MarriageStatus,Profilepic,Upline,UplineName from register where UserName='" + UserName + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                id = dt.Rows[0]["id"].ToString();
                lbSponser.Text = dt.Rows[0]["reffid"].ToString();
                lbSponserName.Text = dt.Rows[0]["reffname"].ToString();
                txtName.Text = dt.Rows[0]["name"].ToString();
                lbUserName.Text = dt.Rows[0]["username"].ToString();
                Password = dt.Rows[0]["password"].ToString();
                txtFName.Text = dt.Rows[0]["fname"].ToString();
                lbDOJ.Text = dt.Rows[0]["dateofJoin"].ToString();
                txtAddress.Text = dt.Rows[0]["address"].ToString();
                txtEmail.Text = dt.Rows[0]["email"].ToString();
                txtMobile.Text = dt.Rows[0]["mobile"].ToString();
                lbStatus.Text = dt.Rows[0]["status"].ToString();
              
                dateofjoining = dt.Rows[0]["dateofjoining"].ToString();
                Profilepic = dt.Rows[0]["Profilepic"].ToString();
            }



        }
        catch (Exception ex) { }
    }
    protected void bntsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            string side = "";
           
            int a = objamd.Register(0, lbSponser.Text, lbSponserName.Text, txtName.Text, lbUserName.Text, Password, "", lbUserName.Text, side, "", txtAddress.Text, "", "", "", txtEmail.Text, txtMobile.Text, lbStatus.Text, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "A");
            if (a > 0)
            {

                lbinfo.Text = "Record Update successfully";
                info.Visible = true;
                Clear();

            }
            else if (a == -1)
            {

                lbinfo.Text = "Record already Update inserted";
                info.Visible = true;
            }
            else
            {

                lbinfo.Text = "Record has not Update successfully";
                info.Visible = true;
            }
        }
        catch (Exception ex)
        { }
    }
    public void Clear()
    {
        Password = "";
        // txtaadhar.Text = "";
        txtAddress.Text = "";
        // txtDOB.Text = "";
        txtEmail.Text = "";
        //txtFName.Text = "";
        txtMobile.Text = "";
        txtName.Text = "";
        //txtpan.Text = "";
        // txtpincode.Text = "";
        lbUserName.Text = "";
        lbSponserName.Text = "";
       // lbUpline.Text = "";
       // lbmsg.Text = "";

    }
   

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        loadlist(txtsearchuname.Text);
    }
}