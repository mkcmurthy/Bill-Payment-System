using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment5 
{
    public partial class contactUs : System.Web.UI.Page
    {
        protected void subButton_Click(object sender, EventArgs e)
        {
            // String email = EmailAddr.Text;
            String email = "g@gmail.com";
            String msgTo = "sharkkcmohan@gmail.com";
            String msgSubject = "We have received your message!";
            String msgBody = "Dear User " + email + "\n" +
                "You are receiving this email because a you contacted us with a comment , question(s) and/or a" +
                "concern(s)." + "\n" +
                "Our support staff will respond within the next 48 hours." + "\n" +
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
           // SMTPClient.Port = 587;
            SMTPClient.Credentials = new NetworkCredential("mohankc@outlook.com", "13@m15o51h14AN");
            SMTPClient.EnableSsl = true;
            try { SMTPClient.Send(mailObj); }
            catch (Exception) { }
        }
    }
    }
