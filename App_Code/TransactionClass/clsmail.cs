using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Diagnostics;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;
using System.IO;
using System.Xml;
using System.Net;
using TripleITTransaction;
/// <summary>
/// Summary description for clsmail
/// </summary>
public class clsmail
{
    public clsmail()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private static string MailSmtp = "smtpout.secureserver.net";// "smtp.gmail.com";"mail.privateemail.com";
    private static string MailUserName = "info@tmgm.buzz";
    private static string MailPassword = "Admin@123";
  
    public string Sendpass(string Name, string Username, string pass, string TransactionPass, string Email)
    {
        try
        {




            string msg = "Dear " + Name + ",<br />Welcome to tmgm.buzz. Your Registration has been Successfully completed.<br /><br />Congratulations...!!.<br /><br /><bold>Your account details are as follows: </bold><br />Your UserName:-" + Username + "<br /> Your Password :-" + pass + "<br/>";
            msg += "Your Transaction Password:-" + TransactionPass + "<br /><br />";
            msg += "<br />Meanwhile If you have any queries, please don't hesitate to contact us,<br /><br />";
            msg += "If you have any questions, You can contact Support Centre : info@tmgm.buzz.<br />";
            msg += "We're always happy to help you<br /><br />";
            msg += "<br/><br/>Cheers! <br/><h3> TEAM TRADE TRACK FX<h3/> <br/>visit:-<a href=http://tmgm.buzz>www.tmgm.buzz</a>";

            MailAddress FromMailAddress = new MailAddress(MailUserName, "TRADE TRACK FX");
            MailMessage theTestMail = new MailMessage(FromMailAddress.ToString(), Email);
            theTestMail.Body = msg;
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "Registration Successfull"; ;

            SmtpClient theTest = new SmtpClient();
            theTest.Port = 25;
            theTest.Timeout = 100;
            theTest.Host = MailSmtp;
            theTest.UseDefaultCredentials = true;
            theTest.EnableSsl = false;

            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(MailUserName, MailPassword);
            theTest.Credentials = theCredential;
            theTest.Send(theTestMail);




            string s = "Yes";
            return s;
        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return s;
        }
    }
    public string PackageActivate(string Name, string Packagename, string Amount, string Date, string Email)
    {
        try
        {




            string msg = "Dear " + Name + ",<br />" +
                 "<br /><br />Congratulations.!!<br /><br />";
            msg += "Your Package " + Packagename + " with Amount : " + Amount + " has been activated successfully. On Date : " + Date + "<br />";
            msg += "Now sit Relax and enjoy with your Trading and Networking Rewards<br /><br />";
            msg += "<br />Meanwhile If you have any queries, please don't hesitate to contact us,<br /><br />";
            msg += "Our Telegram Support always available 24x7 : @tmgm.buzz,<br />";
            msg += "We're always happy to help you.<br /><br />";
            msg += "<br/><br/>Cheers! <br/><h3>Team tmgm.buzz<h3/> <br/>visit:-<a href=http://tmgm.buzz>www.tmgm.buzz</a>";

            MailAddress FromMailAddress = new MailAddress(MailUserName, "TRADE TRACK FX");
            MailMessage theTestMail = new MailMessage(FromMailAddress.ToString(), Email);
            theTestMail.Body = msg;
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "Package Activation "; ;

            SmtpClient theTest = new SmtpClient();
            theTest.Port = 25;
            theTest.Timeout = 100;
            theTest.Host = MailSmtp;
            theTest.UseDefaultCredentials = true;
            theTest.EnableSsl = false;

            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(MailUserName, MailPassword);
            theTest.Credentials = theCredential;
            theTest.Send(theTestMail);



            string s = "Yes";
            return s;
        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return s;
        }
    }
    public string RankAchieved(string Name, string Fullmsg, string Email)
    {
        try
        {

            string msg = "<h3>Dear " + Name + "</h3><br />";
            msg += "<br />" + Fullmsg + "<br />";
            msg += "Congratulations and thank you for cooperation<br />";
            //msg += "<br />Note: *You must maintain the same business criteria overall the bonus period, otherwise you will loose this Loyalty Rewards & Other Ranking based Rewards.<br /><br />";
            msg += "<br />Meanwhile If you have any queries, please don't hesitate to contact us,<br /><br />";
            msg += "Our Telegram Support always available 24x7 : @tmgm.buzz,<br />";
            msg += "We're always happy to help you.<br /><br />";
            msg += "<br/><br/>Cheers! <br/><h3>Team tmgm.buzz<h3/> <br/>visit:-<a href=http://tmgm.buzz>www.tmgm.buzz</a>";

            MailAddress FromMailAddress = new MailAddress(MailUserName, "TRADE TRACK FX");
            MailMessage theTestMail = new MailMessage(FromMailAddress.ToString(), Email);
            theTestMail.Body = msg;
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "Rank Achievement"; ;

            SmtpClient theTest = new SmtpClient();
            theTest.Port = 25;
            theTest.Timeout = 100;
            theTest.Host = MailSmtp;
            theTest.UseDefaultCredentials = true;
            theTest.EnableSsl = false;

            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(MailUserName, MailPassword);
            theTest.Credentials = theCredential;
            theTest.Send(theTestMail);



            string s = "Yes";
            return s;
        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return s;
        }
    }

    public string DepositeFund(string Name, string Amount, string to)
    {
        try
        {


            string msg = "Dear " + Name + ",<br />" + Amount + "<br/>";
            msg += "Should you have any questions, reply to this email or simply write a mail to<br />";
            msg += "info@tmgm.buzz We're always happy to help you.<br /><br />";
            msg += "<br/><h3> TEAM TRADE TRACK FX<h3/> <br/>visit:-<a https://tmgm.buzz>www.tmgm.buzz</a>";



            MailAddress FromMailAddress = new MailAddress(MailUserName, "TRADE TRACK FX ");
            MailMessage theTestMail = new MailMessage(FromMailAddress.ToString(), to);
            theTestMail.Body = msg;
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "Fund Deposite"; ;

            SmtpClient theTest = new SmtpClient();
            theTest.Port = 25;
            theTest.Timeout = 100;
            theTest.Host = MailSmtp;
            theTest.UseDefaultCredentials = true;
            theTest.EnableSsl = false;

            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(MailUserName, MailPassword);
            theTest.Credentials = theCredential;
            theTest.Send(theTestMail);



            string s = "Successfully";
            return s;
        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return s;
        }
    }


    public string WithdrawFund(string Name, string Amount, string PaymentType, string Adddress, string Email)
    {
        try
        {


            string msg = "Dear " + Name + ",<br />" +
                "<br /><br />Congratulations.!!<br /><br />";
            msg += "You've requested to withdraw amount $" + Amount + " to this Wallet Address: " + Adddress + "& PaymentType: " + PaymentType + "<br />";
            msg += "Before going further with the withdrawal, pleasecheck carefully the target address.<br />";
            msg += "Be aware that if you confirm an incorrect address, we won't be able to assist you to recover your assets.< br />";
            msg += "<br />Meanwhile If you have any queries, please don't hesitate to contact us,<br /><br />";
            msg += "Our Telegram Support always available 24x7 : @tmgm.buzz,<br />";
            msg += "We're always happy to help you.<br /><br />";
            msg += "<br/><br/>Cheers! <br/><h3>Team tmgm.buzz<h3/> <br/>visit:-<a href=http://tmgm.buzz>www.tmgm.buzz</a>";

            MailAddress FromMailAddress = new MailAddress(MailUserName, "TRADE TRACK FX");
            MailMessage theTestMail = new MailMessage(FromMailAddress.ToString(), Email);
            theTestMail.Body = msg;
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "Withdrawal Request"; ;

            SmtpClient theTest = new SmtpClient();
            theTest.Port = 25;
            theTest.Timeout = 100;
            theTest.Host = MailSmtp;
            theTest.UseDefaultCredentials = true;
            theTest.EnableSsl = false;

            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(MailUserName, MailPassword);
            theTest.Credentials = theCredential;
            theTest.Send(theTestMail);


            string s = "yes";
            return s;

        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return s;
        }
    }
    public string WithdrawApproved(string Name, string Amount, string PaymentType, string Adddress, string Email)
    {
        try
        {


            string msg = "Dear " + Name + ",<br />" +
                "<br /><br />Congratulations.!!<br /><br />";
            msg += "You've requested to withdraw amount $" + Amount + " to this Wallet Address: " + Adddress + "& PaymentType: " + PaymentType + " has been processed successfully<br />";
            msg += "<br />Meanwhile If you have any queries, please don't hesitate to contact us,<br /><br />";
            msg += "Our Telegram Support always available 24x7 : @tmgm.buzz,<br />";
            msg += "We're always happy to help you.<br /><br />";
            msg += "<br/><br/>Cheers! <br/><h3>Team tmgm.buzz<h3/> <br/>visit:-<a href=http://tmgm.buzz>www.tmgm.buzz</a>";

            MailAddress FromMailAddress = new MailAddress(MailUserName, "TRADE TRACK FX");
            MailMessage theTestMail = new MailMessage(FromMailAddress.ToString(), Email);
            theTestMail.Body = msg;
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "Withdrawal Conformation "; ;

            SmtpClient theTest = new SmtpClient();
            theTest.Port = 25;
            theTest.Timeout = 100;
            theTest.Host = MailSmtp;
            theTest.UseDefaultCredentials = true;
            theTest.EnableSsl = false;

            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(MailUserName, MailPassword);
            theTest.Credentials = theCredential;
            theTest.Send(theTestMail);


            string s = "yes";
            return s;

        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return s;
        }
    }


    public void OTP(string Username, string pass, string to)
    {
        try
        {


            string msg = "Dear " + Username + ".<br />Your OneTimePassword :-" + pass + " <br/> For Withdraw Request";
            msg += "<br/><br/>Have a great day! <br/><h3>Team TRADE TRACK FX<h3/> <br/>visit:-<a href=https://tmgm.buzz>https://www.tmgm.buzz</a>";



            MailAddress FromMailAddress = new MailAddress(MailUserName, "TRADE TRACK FX");


            MailMessage theTestMail = new MailMessage(FromMailAddress.ToString(), to);
            theTestMail.Body = msg;
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "Withdrawal OTP(No need to rply)   "; ;

            SmtpClient theTest = new SmtpClient();
            theTest.Port = 587;
            theTest.Timeout = 100;
            theTest.Host = MailSmtp;
            theTest.UseDefaultCredentials = false;
            theTest.EnableSsl = false;

            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(MailUserName, MailPassword);
            theTest.Credentials = theCredential;
            theTest.Send(theTestMail);
            string s = "yes";


        }
        catch (Exception ex)
        {
            string s = ex.Message;

        }

    }
    public string Notification(string Username, string msg, string to)
    {
        try
        {
            string SenderAddress = "info@tmgm.buzz";
            // any address Reciver where the email will be sending
            string toAddress = to;
            //Password of your gmail address
            const string SenderPassword = "Admin@123";
            // Passing the values and make a email formate to display


            MailMessage theTestMail = new MailMessage(SenderAddress, toAddress);
            theTestMail.Body = "HI " + Username + ".<br />" + msg + "<br/>";
            theTestMail.Body += "<br/><br/>Have a great day! <br/><h3>Team TRADE TRACK FX<h3/> <br/>visit:-<a href=https://www.tmgm.buzz>https://www.tmgm.buzz</a>";
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "No need to rply   " + DateTime.Now;


            SmtpClient theTest = new System.Net.Mail.SmtpClient();
            theTest.Port = 25;
            theTest.Host = "relay-hosting.secureserver.net";//from godaddy;//"smtpout.secureserver.net";// "smtp.gmail.com";
            theTest.UseDefaultCredentials = false;
            theTest.EnableSsl = true;
            theTest.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(SenderAddress, SenderPassword);
            theTest.Credentials = theCredential;
            theTest.Timeout = 20000;
            theTest.Send(theTestMail);
            string s = "yes";
            return s;
        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return s;
        }
    }
    public string PasswordByMail(string Name, string Username, string Email)
    {
        try
        {


            string msg = "Dear " + Name + ",<br />";
            msg += "<br/>You have requested us to reset your password. Please click below link to reset your password:<br/>";
            msg += " <br/>To : <h><a href='https://tmgm.buzz/Member/PasswordChanged.aspx?username=" + Username + "'><b>Click</b></a></h><br/>";
            msg += "<br />Meanwhile If you have any queries, please don't hesitate to contact us,<br /><br />";
            msg += "Our Telegram Support always available 24x7 : @tmgm.buzz,<br />";
            msg += "We're always happy to help you.<br /><br />";
            msg += "<br/><br/>Cheers! <br/><h3>Team tmgm.buzz<h3/> <br/>visit:-<a href=http://tmgm.buzz>www.tmgm.buzz</a>";


            MailAddress FromMailAddress = new MailAddress(MailUserName, "TRADE TRACK FX");
            MailMessage theTestMail = new MailMessage(FromMailAddress.ToString(), Email);
            theTestMail.Body = msg;
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "Password Reset Request"; ;

            SmtpClient theTest = new SmtpClient();
            theTest.Port = 25;
            theTest.Timeout = 100;
            theTest.Host = MailSmtp;
            theTest.UseDefaultCredentials = true;
            theTest.EnableSsl = false;

            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(MailUserName, MailPassword);
            theTest.Credentials = theCredential;
            theTest.Send(theTestMail);



            string s = "Link has sent successfully on your register '" + Email + "'.";
            return s;
        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return s;
        }
    }
    public string ForgotPassword(string Name, string Username, string pass, string TransactionPass, string Email)
    {
        try
        {


            string msg = "Dear " + Name + ",<br /><bold>Your account details are as follows :</bold><br />Your UserName:-" + Username + "<br /> Your Password :-" + pass + "<br/>";
            msg += "Transaction Password:-" + TransactionPass + "<br /><br />";
            msg += "Should you have any questions, reply to this email or simply write a mail to<br />";
            msg += "info@tmgm.buzz We're always happy to help you.<br /><br />";
            msg += "<br/><h3> TEAM TRADE TRACK FX<h3/> <br/>visit:-<a https://tmgm.buzz>www.tmgm.buzz</a>";



            MailAddress FromMailAddress = new MailAddress(MailUserName, "TRADE TRACK FX");
            MailMessage theTestMail = new MailMessage(FromMailAddress.ToString(), Email);
            theTestMail.Body = msg;
            theTestMail.IsBodyHtml = true;
            theTestMail.Priority = MailPriority.High;
            theTestMail.Subject = "Forgot Password  "; ;

            SmtpClient theTest = new SmtpClient();
            theTest.Port = 25;
            theTest.Timeout = 100;
            theTest.Host = MailSmtp;
            theTest.UseDefaultCredentials = true;
            theTest.EnableSsl = false;

            System.Net.NetworkCredential theCredential = new System.Net.NetworkCredential(MailUserName, MailPassword);
            theTest.Credentials = theCredential;
            theTest.Send(theTestMail);



            string s = "Password has sent successfully on your register '" + Email + "'.";
            return s;
        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return s;
        }
    }


}