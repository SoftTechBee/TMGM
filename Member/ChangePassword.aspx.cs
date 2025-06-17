using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;

public partial class User_ChangePassword : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                txtnew.ReadOnly = true;
                txtconfirm.ReadOnly = true;
            }
        }
        catch (Exception ex)
        { }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtnew.Text == txtconfirm.Text)
            {
                string sql = "update register set password='" + txtnew.Text + "' where username='" + SessionData.Get<string>("newuser") + "'";
                objcon.ExecuteSqlQuery(sql);
                lbsuccess.Text = "Password Change Successfully";
                sccess.Visible = true;
                danger.Visible = false;
                info.Visible = false;
            }
            else
            {
                sccess.Visible = false;
                danger.Visible = false;
                lbinfo.Text = "New Password And Confirm Password Not Match";
                info.Visible = true;
            }
        }
        catch (Exception ex)
        { }
    }

    protected void txtoldpass_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string username = SessionData.Get<string>("Newuser");
            string sql = "select password from register where username='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                string Old = dt.Rows[0]["password"].ToString();
                if (Old == txtoldpass.Text)
                {
                    txtoldpass.Text = Old;
                    sccess.Visible = false;
                    danger.Visible = false;
                    info.Visible = false;
                    txtnew.ReadOnly = false;
                    txtconfirm.ReadOnly = false;
                }              
                else
                {
                    txtnew.ReadOnly = true;
                    txtconfirm.ReadOnly = true;
                    sccess.Visible = false;
                    danger.Visible = true;
                    info.Visible = false;
                    lbdanger.Text = "Current Password Not Correct..! Please Try Again..";
                }
            }
        }
        catch (Exception ex)
        {

        }
    }
}