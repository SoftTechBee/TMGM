using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TripleITTransaction;
using TripleITConnection;
using System.Data;
/// <summary>
/// Summary description for clsDashboard
/// </summary>
public class clsDashboard
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();

    public clsDashboard()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string TotalIncome(string username )
    {
        string total = "0";
        try {
            string sql = "select sum(ISNULL(credit,0))  as amount from account where username='" + username + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }
         
        
        }
        catch (Exception ex)
        { }

        return total;
    }
    public string CappingBalance(string username)
    {
        string total = "0";
        try
        {
            string sql = "select [dbo].[Capping]('" + username + "')   ";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalProfit(string username)
    {
        string total = "0";
        try
        {

            string sql = "select  isnull(sum(TotalProfite),0) from tblretopup where  username='" + username + "'";
            //if (PackType == "Plan1")
            //{
            //    sql += " and Packtype in('Crypto Online Education Platform','Crypto+Forex Online Education Platform','Forex Online Education Platform') ";
            //}
            //else
            //{

            //    sql += " and PackType='" + PackType + "'";
            //}
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string CappingIncome(string username)
    {
        string total = "0";
        try
        {
            string sql = "select sum(ISNULL(credit,0)) as amount from account where username='" + username + "' and valu!='reward' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalPendingwithdraw()
    {
        string total = "0";
        try
        {
            string sql = "select sum(cast(isnull(Payout,0) as decimal(18,2))) As Withdraw from TblRWithdraw where status='Pending'";



            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;

            }


        }
        catch (Exception ex)
        { }

        return total;
    }

    public string TotalTeamBusness()
    {
        string TotalTeamBusness = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select isnull(sum(totalbusiness),0) from tbltotalbinarycount ";

            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                TotalTeamBusness = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return TotalTeamBusness;
    }

    public string TotalIncomeBYAdmin(string username)
    {
        string total = "0";
        try
        {
            string sql = "select sum(ISNULL(debit,0))  as amount from account where username='" + username + "' and remark='MASTER CAPPING APPLY INCOME DEBIT' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }

    public string TotalDirectWallet(string v)
    {
        throw new NotImplementedException();
    }

    public string TotalAirdrop(string username )
    {
        string total = "0";
        try {
            string sql = "select sum(ISNULL(credit,0)) as amount from tblcoinwallet where username='" + username + "'  ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }
         
        
        }
        catch (Exception ex)
        { }

        return total;
    }

    //public string SelfBusiness(string username)
    //{
    //    throw new NotImplementedException();
    //}
    public string SelfBusiness(string username)
    {
        string total = "0";
        try
        {

            string sql = "select  isnull(sum(amount),0) from tblretopup where  username='" + username + "'";
            //if (PackType == "Plan1")
            //{
            //    sql += " and Packtype in('Crypto Online Education Platform','Crypto+Forex Online Education Platform','Forex Online Education Platform') ";
            //}
            //else
            //{

            //    sql += " and PackType='" + PackType + "'";
            //}
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalCoin(string username)
    {
        string total = "0";
        try
        {
            string sql = "select sum(ISNULL(credit,0))-sum(ISNULL(debit,0)) as amount from tblcoinwallet where username='" + username + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalWithdraw(string username)
    {
        string total = "0";
        try
        {
            string sql = "select sum(CONVERT(decimal(18,2),ISNULL(debit,0))) as amount from account where  username='" + username + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalWithdrawPending(string username)
    {
        string total = "0";
        try
        {
            string sql = "select sum(CONVERT(decimal(18,2),ISNULL(amount,0))) as amount from TblRWithdraw where status='pending' and  username='" + username + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalWithdrawApprove(string username)
    {
        string total = "0";
        try
        {
            string sql = "select sum(CONVERT(decimal(18,2),ISNULL(amount,0))) as amount from TblRWithdraw where status='approved' and username='" + username + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string WIthdrawRequest(string username, string incomeType)
    {
        string total = "0";
        try
        {
            if (username == "Admin")
            {
                string sql = "select count(payout) as amount from TblRWithdraw where    status='" + incomeType + "'";
                DataTable dt = objcon.ReturnDataTableSql(sql);
                if (dt.Rows.Count > 0)
                {
                    total = dt.Rows[0][0].ToString();
                    total = total == "" ? "0" : total;
                }
            }
            else
            {
                string sql = "select count(payout) as amount from TblRWithdraw where     username='" + username + "' and status='" + incomeType + "'";
                DataTable dt = objcon.ReturnDataTableSql(sql);
                if (dt.Rows.Count > 0)
                {
                    total = dt.Rows[0][0].ToString();
                    total = total == "" ? "0" : total;
                }

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string FundingBonus(string username)
    {
        string total = "0";
        try
        {
            if (username == "Admin")
            {
                string sql = "select count(username) as amount from TblFundRequest where 1=1";
                DataTable dt = objcon.ReturnDataTableSql(sql);
                if (dt.Rows.Count > 0)
                {
                    total = dt.Rows[0][0].ToString();
                    total = total == "" ? "0" : total;
                }
            }
            else
            {
                string sql = "select count(username)  as amount from TblFundRequest where username='" + username+"'";
                DataTable dt = objcon.ReturnDataTableSql(sql);
                if (dt.Rows.Count > 0)
                {
                    total = dt.Rows[0][0].ToString();
                    total = total == "" ? "0" : total;
                }

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string rewardadmin()
    {
        string Mobile = "";
        try
        {
            string sql = "select count(rid) from tblreward";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                Mobile = dt.Rows[0][0].ToString();
            }

        }
        catch (Exception ex)
        { }
        return Mobile;
    }
    public string reward(string UserName)
    {
        string Mobile = "";
        try
        {
            string sql = "select count(rid) from tblreward where username='" + UserName + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                Mobile = dt.Rows[0][0].ToString();
            }

        }
        catch (Exception ex)
        { }
        return Mobile;
    }
    public string LegBusiness(string username, string LegType)
    {
        string TotalTeamBusness = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select max(totalbusiness) from TblTotalBinaryCount  where username='" + username + "' ";
            if (LegType == "Weaker")
            {
                sql = " select isnull(sum(totalbusiness),0) from TblTotalBinaryCount where username='" + username + "' and id != (select top 1 id from TblTotalBinaryCount where username = '" + username + "' and    totalbusiness = (select  max(totalbusiness) from TblTotalBinaryCount  where username = '" + username + "'))";
            }

            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                TotalTeamBusness = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return TotalTeamBusness;

    }
    public string IncomeType(string username,string incomeType)
    {
        string total = "0";
        try
        {
            if (username == "Admin")
            {
                string sql = "select sum(CONVERT(decimal(18,2),ISNULL(credit,0))) as amount from account where    valu ='" + incomeType + "'";
                DataTable dt = objcon.ReturnDataTableSql(sql);
                if (dt.Rows.Count > 0)
                {
                    total = dt.Rows[0][0].ToString();
                    total = total == "" ? "0" : total;
                }
            }
            else
            {
                string sql = "select sum(CONVERT(decimal(18,2),ISNULL(credit,0))) as amount from account where username='" + username + "' and  valu like'" + incomeType + "'";
                DataTable dt = objcon.ReturnDataTableSql(sql);
                if (dt.Rows.Count > 0)
                {
                    total = dt.Rows[0][0].ToString();
                    total = total == "" ? "0" : total;
                }

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalROIBlance(string username)
    {
        string total = "0";
        try
        {
            string sql = "select  (sum(CONVERT(decimal(18,2),ISNULL(credit,0)))-sum(CONVERT(decimal(18,2),ISNULL(debit,0)))) as amount from account where  valu  in ('ROI Wallet','ROI') and username='" + username + "' ";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string IncomeWallet(string username,string PlanType)
    {
        string total = "0";
        try
        {
            string sql = "select (sum(CONVERT(decimal(18,2),ISNULL(credit,0)))-sum(CONVERT(decimal(18,2),ISNULL(debit,0)))) as amount from account where username='" + username + "' and PlanType='" + PlanType + "' ";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalBlance(string username)
    {
        string total = "0";
        try
        {
            string sql = "select (sum(CONVERT(decimal(18,2),ISNULL(credit,0)))-sum(CONVERT(decimal(18,2),ISNULL(debit,0)))) as amount from account where username='" + username + "' ";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string weeklybalance(string username)
    {
        string total = "0";
        try
        {
            string sql = "select (sum(CONVERT(decimal(18,2),ISNULL(credit,0)))-sum(CONVERT(decimal(18,2),ISNULL(debit,0)))) as amount from account where username='" + username + "' and plantype='Plan1' ";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string monthlybalance(string username)
    {
        string total = "0";
        try
        {
            string sql = "select (sum(CONVERT(decimal(18,2),ISNULL(credit,0)))-sum(CONVERT(decimal(18,2),ISNULL(debit,0)))) as amount from account where username='" + username + "'  ";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TodayIncome(string username,string IncomeType)
    {
        string total = "0";
        try
        {
            string sql = "select sum(CONVERT(decimal,ISNULL(credit,0))) as amount from account where username='" + username + "' and date='" + objtime.returnStringServerMachTime() + "'";
            if (IncomeType == "1")
            {
                sql += " and valu ='ROI'";
            }
            else if (IncomeType == "2")
            {
                sql += " and valu ='Company'";

            }
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }

    public  string ReturnMobile(string  UserName)
    {
        string Mobile = "";
        try {
            string sql = "select Mobile from register where username='" + UserName + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                Mobile = dt.Rows[0][0].ToString();
            }

        }
        catch (Exception ex)
        { }
        return Mobile;
    }
    public string ReturnEmail(string UserName)
    {
        string Mobile = "";
        try
        {
            string sql = "select email from register where username='" + UserName + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                Mobile = dt.Rows[0][0].ToString();
            }

        }
        catch (Exception ex)
        { }
        return Mobile;
    }
    public string ReturnROI(string UserName)
    {
        string ROI = "";
        try
        {
            string sql = "select top 1 (right(remark,4)) as remark from account where username='" + UserName + "' and valu='Roi' order by id desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                ROI = dt.Rows[0][0].ToString();
            }

        }
        catch (Exception ex)
        { }
        return ROI;
    }
    public string ReturnCBD(string UserName)
    {
        string ROI = "";
        try
        {
            string sql = "select CDB from register where username='" + UserName + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                ROI = dt.Rows[0][0].ToString();
            }

        }
        catch (Exception ex)
        { }
        return ROI;
    }
    public string TotalIncomeBlance(string username,string IncomeType)
    {
        string total = "0";
        try
        {
            string sql = "select (sum(CONVERT(decimal(18,2),ISNULL(credit,0)))-sum(CONVERT(decimal(18,2),ISNULL(debit,0)))) as amount from account where username='" + username + "' ";
            if (IncomeType == "1")
            {
                sql += "and valu !='ROI'";
            }
            else if (IncomeType == "2")
            {
                sql += "and valu in ('ROI','ROIWithdraw')";

            }
            else if (IncomeType == "3")
            {
                sql += "";

            }
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalWallectBlance(string username)
    {
        string total = "0";
        try
        {
            string sql = "select (sum(credit)-sum(debit)) as amount from [tblwallet] where username='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalloanWallectBlance(string username)
    {
        string total = "0";
        try
        {
            string sql = "select (sum(CONVERT(decimal(18,2),ISNULL(credit,0)))-sum(CONVERT(decimal(18,2),ISNULL(debit,0)))) as amount from [tblloanwallet] where username='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string totalCoupon(string username ,string Type )
    {
        string total = "0";
        try
        {
            string sql = "select (sum(CONVERT(decimal(18,2),ISNULL(credit,0)))-sum(CONVERT(decimal(18,2),ISNULL(debit,0)))) as amount from [tblcoupon] where username='" + username + "' and type='"+Type+"'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }

    public string CompanyTurnOver()
    {
        string total = "0";
        try
        {
            string sql = "select sum(credit) as amount from TblWallet where type='Payment'";
            //if (Plantype == "Plan1")
            //{
            //    sql += " and PackType!='PORTFOLIO SERVICE'";
            //}
            //else if (Plantype == "Plan2")
            //{
            //    sql += " and PackType='PORTFOLIO SERVICE'";
            //}
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;
            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string Totalwithdraw()
    {
        string total = "0";
        try
        {
            string sql = "select sum(cast(isnull(Payout,0) as decimal(18,2))) As Withdraw from TblRWithdraw where status='Approved'";

          

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string Pendingwithdraw()
    {
        string total = "0";
        try
        {
            string sql = "select sum(cast(isnull(Payout,0) as decimal(18,2))) As Withdraw from TblRWithdraw where status='Pending'";

          

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string SelfTurnOver(string username)
    {
        string total = "0";
        try
        {
            string sql = "select sum(CONVERT(decimal(18,2),ISNULL(c.CompanyTurnOver,0))) as amount from [dbo].[TblComTurnOver_Userwise] c inner join register r on c.UserName=r.username where r.status='Active' and r.reffid='"+username+"'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string SelfDeposite(string username)
    {
        string total = "0";
        try
        {
            string sql = "select sum(credit) as amount from TblWallet where type='Payment' and username='" + username+"'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalActiveDirect(string username, string v)
    {
        string total = "0";
        try
        {
            string sql = "select count(username) as Member from register where  reffid='" + username + "' and status='Active'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalINActiveDirect(string username)
    {
        string total = "0";
        try
        {
            string sql = "select count(username) as Member from register where  reffid='" + username + "' and status='Not Active'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string SelfBusiness(string username, string v)
    {
        string total = "0";
        try
        {

            string sql = "select  isnull(sum(amount),0) from tblretopup where  username='" + username + "'";
            //if (PackType == "Plan1")
            //{
            //    sql += " and Packtype in('Crypto Online Education Platform','Crypto+Forex Online Education Platform','Forex Online Education Platform') ";
            //}
            //else
            //{

            //    sql += " and PackType='" + PackType + "'";
            //}
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string SelfBusiness16(string username )
    {
        string total = "0";
        try
        {
            
            string sql = "select  isnull(sum(amount),0) from tblretopup where  username='" + username + "' and Dor>='2022/11/16'";
            //if (PackType == "Plan1")
            //{
            //    sql += " and Packtype in('Crypto Online Education Platform','Crypto+Forex Online Education Platform','Forex Online Education Platform') ";
            //}
            //else
            //{

            //    sql += " and PackType='" + PackType + "'";
            //}
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    } 
    public string TopUpDATE(string username )
    {
        string total = "0";
        try
        {
            
            string sql = "select  CAST(DOR AS date) from tblretopup where  username='" + username + "'";
            //if (PackType == "Plan1")
            //{
            //    sql += " and Packtype in('Crypto Online Education Platform','Crypto+Forex Online Education Platform','Forex Online Education Platform') ";
            //}
            //else
            //{

            //    sql += " and PackType='" + PackType + "'";
            //}
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalDirect(string username)
    {
        string total = "0";
        try
        {
            string sql = "select count(username) as Member from register where  reffid='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalActiveTeam(string username)
    {
        string total = "0";
        try
        {
            string sql = "select CAST(rightcount AS int) from total_binarycount where  username='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalInActiveTeam(string username)
    {
        string total = "0";
        try
        {
            string sql = "select CAST(leftcount AS int)-CAST(rightcount AS int) from total_binarycount where  username='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalTeamBusiness(string username)
    {
        string total = "0";
        try
        {
            string sql = "select isnull(sum(totalbusiness),0)  from TblTotalBinaryCount where  username='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalDirectBusiness(string username)
    {
        string total = "0";
        try
        {
            string sql = "select isnull(sum(t.amount),0)  from tblretopup t inner join register r on t.username=r.username where r.reffid='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    
    public string TotalDownline(string username)
    {
        string total = "0";
        try
        {
            
            DataTable dt = objlist.GetDownline(username,"C");
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalDirectBusness(string username)
    {
        string TotalDirectBusness = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select Sum(Convert (decimal(18,2),Joinamount)) from register where reffid='" + username + "' ";

            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                TotalDirectBusness = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return TotalDirectBusness;

    }
  
    public string  TotalTeamBusness(string username)
    {
       string TotalTeamBusness="0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select isnull(sum(totalbusiness),0) from tbltotalbinarycount where username='"+ username + "' ";

            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                TotalTeamBusness = dt.Rows[0][0].ToString();
               

            }


        }
        catch (Exception ex)
        { }
       return TotalTeamBusness;
      
    }
    public string TotalBoardMember(string username)
    {
        string TotalTeamBusness = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select total from TblGrandReff where username='" + username + "'";
            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                TotalTeamBusness = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return TotalTeamBusness;

    }

    public string JoiningAmount(string username)
    {
        string total = "0";
        try
        {
            string sql = "select JoinAmount from register where status='Active' and username='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string TotalHelp(string username)
    {
        string total = "0";
        try
        {
            string sql = "select sum(CONVERT(decimal(18,2),ISNULL(Amount,0))) as amount from tblgethelp where requestuser='" + username + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                total = dt.Rows[0][0].ToString();
                total = total == "" ? "0" : total;

            }


        }
        catch (Exception ex)
        { }

        return total;
    }
    public string RetrunName(string username)
    {
        string TotalTeamBusness = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select Name from register where username='" + username + "'";
            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                TotalTeamBusness = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return TotalTeamBusness;

    }
    public string RetrunMobile(string username)
    {
        string TotalTeamBusness = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select mobile from register where username='" + username + "'";
            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                TotalTeamBusness = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return TotalTeamBusness;

    }
    public string RetrunMobileAdmin(string username)
    {
        string TotalTeamBusness = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select mobile from tbladmin where username='" + username + "'";
            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                TotalTeamBusness = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return TotalTeamBusness;

    }
    public string ReturnRank(string username)
    {
        string ReturnRank = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select rankname from register where username='"+username+"' ";
            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                ReturnRank = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return ReturnRank;

    }
    public string ReturnRankmail(string username)
    {
        string rankmail = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select rankmail from register where username='" + username+"' ";
            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                rankmail = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return rankmail;

    }
    public string ReturnPack(string username)
    {
        string ReturnPack = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select packtype from register where username='" + username + "' ";
            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                ReturnPack = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return ReturnPack;

    }
    public string TotalTeam(string username)
    {
        string TotalTeamBusness = "0";
        try
        {
            clsConnection objcon1 = new clsConnection();
            string sql = "select cast(leftcount as int) from total_binarycount where username='" + username + "'";
            DataTable dt = objcon1.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                TotalTeamBusness = dt.Rows[0][0].ToString();


            }


        }
        catch (Exception ex)
        { }
        return TotalTeamBusness;

    }
    public string ReturnWithdrawStatus(string UserName)
    {
        string WithdrawStatus = "";
        try
        {
            string sql = "select WithdrawStatus from register where username='" + UserName + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                WithdrawStatus = dt.Rows[0][0].ToString();
            }

        }
        catch (Exception ex)
        { }
        return WithdrawStatus;
    }
    public string CurrentDCoinRate()
    {
        string TotalTeamBusness = "0";
        try
        {
            string sql = "select top 1 PerDollarRate from [dbo].[TblCoinRate] order by cid desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            if (dt.Rows.Count > 0)
            {
                TotalTeamBusness = dt.Rows[0][0].ToString();


            }
        }
        catch (Exception ex)
        { }
        return TotalTeamBusness;
    }

}