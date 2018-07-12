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
    public partial class userLogin : System.Web.UI.Page
    {
        List<BillPayEntry> billPayEntry;
        UserInfo user;
        String email;
        BillPayEntry billPay;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            user = (UserInfo)Session["currentUser"];

            email = user.EmailAddress;
            billPayEntry = user.MyBillPayments;
        }

        public void storeUserPayment(object sender, EventArgs e)
        {
           if(billPayEntry == null)
            {
                billPayEntry = new List<BillPayEntry>();
            }

            billPay = new BillPayEntry();
            billPay.PaymentTransactionDate = datepicker.Text;
            billPay.RecipientBusinessName = businessname.Text;
            billPay.RecipientBusinessAddress = businessaddress.Text;
            billPay.AmountPaid = amount.Text;
            billPay.PaymentDetails = describePayment.Text;
            billPay.Status = 0;
            billPayEntry.Add(billPay);


            // send email
            String msgTo = "sharkkcmohan@gmail.com";
            String msgSubject = "We have received your message!";
            String msgBody = "Dear User " + email + "\n" +
                "You have scheduled a transaction in Rapid Bill Pay on" + datepicker.Text +
                "You can check the status of the transaction by visiting" + " http://dcm.uhcl.edu/c432017fa01karigondanahallm/Assignment6/userLogin.aspx" + "\n" +
                "Thank you for using BillPay" + "\n" +
                
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


        }
    }
}