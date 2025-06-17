using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;

public partial class Member_PasswordChanged : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsDashboard objdash = new clsDashboard();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                lbActiveMember.Text =  Request.QueryString["username"].ToString();
                lbname.Text = objdash.RetrunName(lbActiveMember.Text);
            }
        }
        catch (Exception ex)
        { }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtnew.Text == txtconfirm.Text )
            {
                string sql = "update register set password='" + txtnew.Text + "' where username='" + lbActiveMember.Text + "'";
                objcon.ExecuteSqlQuery(sql);
                lbsuccess.Text = "Password Change Successfully";
                sccess.Visible = true;
            }
            else
            {
                lbinfo.Text = "New Password And Confirm Password Not Match";
                info.Visible = true;
            }
        }
        catch (Exception ex)
        { }
    }
}