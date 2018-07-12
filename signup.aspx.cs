using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UserInfo1;

namespace Assignment5
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void UserSignUp(object sender, EventArgs e)
        {
            List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;
            UserInfo aUser = new UserInfo();

            
            aUser.StateOrProvince = state.Text;
            aUser.StreetAddress = streetaddr.Text;
            aUser.ZipCode = zipcode.Text;
            aUser.FirstName = firstname.Text;
            aUser.LastName = lastname.Text;
            aUser.HomePhone = homephone.Text;
            aUser.CellPhone = cellphone.Text;
            aUser.EmailAddress = email.Text;
            aUser.Password = password.Text;
            aUser.SecurityQuestion = securityQ.Text;
            aUser.SecurityQuestionAnswer = answer.Text;
           
            

            allUsersList = new List<UserInfo>();
            allUsersList.Add(aUser);
            Application["AllUserList"] = allUsersList;

           //send email
            String msgTo = "sharkkcmohan@gmail.com";
            String msgSubject = "We have received your message!";
            String msgBody = "Dear User " + email.Text + "\n" +
                "Thank you for signing up with us." +
                "You can now access your Rapid Bill Pay account at" + " http://dcm.uhcl.edu/c432017fa01karigondanahallm/Assignment6/default.aspx"+"\n"+
                "Thank you again for your Signing Up. If you have any questions, please contact us at"+"\n"+

                "http://dcm.uhcl.edu/c432017fa01karigondanahallm/Assignment6/contactUs.aspx"+

                "With best wishes\n" + "\n" +
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

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank you for signing up. You can now login using LogIn option.An email has also been sent to the email address you provided during the signup');window.location='default.aspx';", true);
            
        
    }
    }
}