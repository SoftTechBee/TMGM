using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;

public partial class User_ChangePassword : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsDashboard objdash = new clsDashboard();

    clsmail objmail = new clsmail();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            { 
            
            }
        }
        catch (Exception ex)
        { }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = objcon.ReturnDataTableSql("select name,username,TransPassword,Password from register where email='" + txtmail.Text + "' ");
            if (dt.Rows.Count > 0)
            {
                string UserName = dt.Rows[0]["username"].ToString();
                string Name = dt.Rows[0]["name"].ToString();
                string Password = dt.Rows[0]["Password"].ToString();
                string TransPassword = dt.Rows[0]["TransPassword"].ToString();
                lbsuccess.Text = objmail.ForgotPassword(Name, UserName, Password, TransPassword, txtmail.Text);
              // lbsuccess.Text = objmail.PasswordByMail(Name, UserName, txtmail.Text);
                sccess.Visible = true;
                txtmail.Text = "";
                //txtUserName.Text = "";

            }
            else
            {

                lbdanger.Text = "Invalid  Email Add,Please enter register Email Add.";
                danger.Visible = true;
                txtmail.Text = "";
                //txtUserName.Text = "";
                //Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }
        catch (Exception ex)
        { }
    }
}