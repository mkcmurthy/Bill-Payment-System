using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UserInfo1;

namespace Assignment55
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        UserInfo userDetails;
        protected void recover_Click(object sender, EventArgs e)
        {
            List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;



            //String email = emailrecovery.Text;
            String email = "g@gmail.com";
            
            if (allUsersList.Exists(x => x.EmailAddress.Equals(email)))
                userDetails = allUsersList.Find(x => x.EmailAddress.Equals(email));
            else
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sorry we couldn't find your details');", true);

            String msgTo = "sharkkcmohan@gmail.com";
            String msgSubject = "We have received your message!";
            String msgBody = "Dear User " + email + "\n" +
                "You are receiving this email because a you requested to recover your password" +
                "Your current password is :"+ userDetails.Password + "\n" + 
                
                "Thank You." + "\n" +
                "Billpay Team";
            MailMessage mailObj = new MailMessage();
            mailObj.Body = msgBody;
            mailObj.From = new MailAddress("mohankc@outlook.com", "KC");
            mailObj.To.Add(new MailAddress(msgTo));
            mailObj.Subject = msgSubject;
            mailObj.IsBodyHtml = true;
            SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
           // SMTPClient.Host = "smtp.gmail.com";
            //SMTPClient.Port = 587;
            SMTPClient.Credentials = new NetworkCredential("mohankc@outlook.com", "13@m15o51h14AN");
            SMTPClient.EnableSsl = true;
            try { SMTPClient.Send(mailObj); }
            catch (Exception) { }
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank You. Am email notification has also been sent to the address we have in our file.');", true);
        }
    }
}