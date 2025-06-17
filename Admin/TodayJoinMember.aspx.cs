using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITTransaction;
using TripleITConnection;
public partial class Admin_DirectList : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();  
    public List<clsuser> objuserlist = new List<clsuser>();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                string sql = " select username, name, mobile, status, reffname, reffid, dateofjoining,onside,JoinAmount from register where Dateofjoin='" + objtime.returnStringServerMachTime() + "'  order by name asc";
                DataTable dt = objcon.ReturnDataTableSql(sql);            
                Repeater1.DataSource = dt;
                Repeater1.DataBind();         
           

            }


        }
        catch (Exception ex)
        {

        }

    }
    public void loadMember()
    {
       
       
    }

    protected void btnSeach_Click(object sender, EventArgs e)
    {
        try
        {
            string username = SessionData.Get<string>("newuser");
            string sql = " select username, name, mobile, status, reffname, reffid, dateofjoining,onside,  JoinAmount from register where Username='" + txtUname.Text + "' and Dateofjoin='" + objtime.returnStringServerMachTime() + "' order by name asc";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();


            }
            else
            {
                lbdanger.Text = "Opps! NO Data Found";
                danger.Visible = true;
            }


        }
        catch (Exception ex)
        {

        }

    }
}