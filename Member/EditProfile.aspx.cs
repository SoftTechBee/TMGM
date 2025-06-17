﻿using System;
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
public partial class User_EditProfile : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    clsSMS objsms = new clsSMS();
    static string Password = "", id = "", dateofjoining = "", Profilepic="";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("newuser") == null && SessionData.Get<string>("newuser") == "")
        {
            Response.Redirect("Logout.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                info.Visible = false;
              
                String UserName = SessionData.Get<string>("newuser");
                loadlist(UserName);

            }
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
               // lbside.Text = dt.Rows[0]["onside"].ToString();
               // lbDOJ.Text = dt.Rows[0]["dateofJoin"].ToString();
                txtAddress.Text = dt.Rows[0]["address"].ToString();
              //  drpstate.SelectedItem.Text = dt.Rows[0]["state"].ToString();
               // drpCity.Text = dt.Rows[0]["city"].ToString();
                txtEmail.Text = dt.Rows[0]["email"].ToString();
                txtMobile.Text = dt.Rows[0]["mobile"].ToString();
                lbStatus.Text = dt.Rows[0]["status"].ToString();
               // txtNName.Text = dt.Rows[0]["nomineename"].ToString();
                //txtNRelation.Text = dt.Rows[0]["relation"].ToString();
               // txtpan.Text = dt.Rows[0]["pan"].ToString();
               // txtaadhar.Text = dt.Rows[0]["aadhar"].ToString();
              //  txtNAge.Text = dt.Rows[0]["nage"].ToString();
                string sex = dt.Rows[0]["sex"].ToString();
                //if (sex == "Male")
                //{
                //    rdSex.Items[0].Selected = true;
                //}
                //else
                //{ rdSex.Items[1].Selected = true; }

               // txtpincode.Text = dt.Rows[0]["pin"].ToString();
               // txtDOB.Text = dt.Rows[0]["dob"].ToString();
                //txtNMobile.Text = dt.Rows[0]["nomineemobile"].ToString();
                dateofjoining = dt.Rows[0]["dateofjoining"].ToString();
                //txtDOA.Text = dt.Rows[0]["DOA"].ToString();
             
                Profilepic = dt.Rows[0]["Profilepic"].ToString();
               // lbUpline.Text = dt.Rows[0]["Upline"].ToString();
                //lbuplineName.Text = dt.Rows[0]["UplineName"].ToString();
                //string MarriageStatus = dt.Rows[0]["MarriageStatus"].ToString();
                //if (MarriageStatus == "Married")
                //{
                //    rdMaritalStatus.Items[0].Selected = true;
                //}
                //else
                //{ rdMaritalStatus.Items[1].Selected = true; }

            }



        }
        catch (Exception ex) { }
    }
    protected void bntsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            string side = "";
           
            
             int a = objamd.Register(0, lbSponser.Text, lbSponserName.Text, txtName.Text, lbUserName.Text, Password, txtFName.Text, lbUserName.Text, side, "", txtAddress.Text, "", "", "", txtEmail.Text, txtMobile.Text, lbStatus.Text, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "","", "U");
            //string sql = "update register set address='" + txtAddress.Text + "',fname='" + txtFName.Text + "' where username='" + lbUserName.Text + "'";
            //int a = objcon.ExecuteSqlQuery(sql);
            if (a > 0)
            {
               
                lbinfo.Text = "Record Update successfully";
                info.Visible = true;
                SessionData.Put("email", txtEmail.Text);

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
        //txtaadhar.Text = "";
        txtAddress.Text = "";
       // txtDOB.Text = "";
       txtEmail.Text = "";
        txtFName.Text = "";
        txtMobile.Text = "";
        txtName.Text = "";
       // txtpan.Text = "";
       // txtpincode.Text = "";
        lbUserName.Text = "";
        lbSponserName.Text = "";
        //lbUpline.Text = "";
        //lbmsg.Text = "";

    }
    protected void btncencel_Click(object sender, EventArgs e)
    {
        Clear();
        
    }
    
    
}