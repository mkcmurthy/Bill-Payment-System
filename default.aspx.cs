using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment5
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckValidity(object sender, EventArgs e)
        {
            emailAddr.Visible = false;
            passwd.Visible = false;
            if (!Regex.IsMatch(emailAddress.Text, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"))
            {
                emailAddr.Visible = true;
                emailAddr.Text = "Enter valid email format example@example.com";
                
            }

            else if(!Regex.IsMatch(password.Text, @"^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"))
            {
                passwd.Visible = true;
                passwd.Text = "It must be between 8 and 10 characters, contain at least one digit and one" +
                                "alphabetic character, and must not contain special characters";
            }

            else
                Response.Redirect("userLogin.aspx");
        }

        protected void NewCheckValidity(object sender, EventArgs e)
        {
            emailAddr.Visible = false;
            passwd.Visible = false;
            if (!Regex.IsMatch(emailAddress.Text, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"))
            {
                emailAddr.Visible = true;
                emailAddr.Text = "Enter valid email format example@example.com";

            }

            else if (!Regex.IsMatch(password.Text, @"^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"))
            {
                passwd.Visible = true;
                passwd.Text = "It must be between 8 and 10 characters, contain at least one digit and one" +
                                "alphabetic character, and must not contain special characters";
            }

            else
                Response.Redirect("signup.aspx");
        }
    }
}