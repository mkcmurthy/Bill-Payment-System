<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Assignment5.signup" %>
<!DOCTYPE html>
<script runat="server">

    protected void toHomePage(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void signup_Click(object sender, EventArgs e)
    {
        Response.ContentType = "text/javascript";
        Response.Write("alert('This site says..\n\n Work in Progress')");
    }

    protected void userlogin_Click(object sender, EventArgs e)
    {
        Response.ContentType = "text/javascript";
        Response.Write("alert('This site says..\n\n Work in Progress')");
    }

    protected void recover_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgotPassword.aspx");
    }


    protected void createaccount_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(),"hwa","alert('Thsi site says.. Work in progress');",true);
    }
</script>

<html>
<head runat="server">
    <meta charset="utf-8" />
    <title>Online Bill Pay Application</title>
    <link rel="stylesheet" type="text/css" href="new.css" />
    
</head>

<body>
   
<form runat="server">
    <div class="wrapper" style="background-color:bisque;height:130px;">

        <div class="title">
            <h1>Rapid Bill Payment</h1>
        </div>


        <div class="headLinks">
            
            <asp:HyperLink ID="aboutus" runat="server" NavigateUrl="aboutUs.aspx">About US</asp:HyperLink>
            <asp:HyperLink ID="security" runat="server" NavigateUrl="security.aspx">Security</asp:HyperLink>
            <asp:HyperLink ID="contactus" runat="server" NavigateUrl="contactUs.aspx">Contact US</asp:HyperLink>
            <asp:HyperLink ID="faq" runat="server" NavigateUrl="faq.aspx">FAQ</asp:HyperLink>
            <!--onclick and algnment to be included -->
            
            <asp:Button ID="userlogin" runat="server" style="background-color:darkgoldenrod;color:white;" Text="USER LOGIN" OnClick="userlogin_Click" />
            <asp:Button ID="signUp" runat="server" style="background-color:darkgoldenrod;color:white;" Text="SIGN UP" OnClick="signup_Click"/>
            
        </div>

    </div>
    <div class="userlogin">
        <br /> <br /> <br /><br /><br />
        <div style="background-color:bisque">
            <h2 style="color:blue">SIGN UP</h2>
            <h3>Complete Your Full Mailing Address </h3>
            <span>
             <asp:Image ID="stateimg" runat="server" ImageUrl="~/paybill.jpg" height="40px" width="40px" />                
            <asp:DropDownList ID="state" runat="server" Height="50" Width="900" ToolTip="United States postal abbreviations for states">
                <asp:ListItem Enabled="true" Text="Select State/Province" Value="begin"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="AL" Value="AL"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="AK" Value="AK"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="WL" Value="WL"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="WI" Value="WI"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="TX" Value="TX"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="CA" Value="CA"></asp:ListItem>
            </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="state"></asp:RequiredFieldValidator>

           
            
           </span><br />
            <span><img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="streetaddr" runat="server" Text="Street Address" Height="50" Width="700" ToolTip="Customer mailing street address"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="streetaddr"></asp:RequiredFieldValidator>

             <asp:TextBox ID="zipcode" runat="server" Text="Zip Code" Height="50" Width="200" ToolTip="Customer mailing Zip Code"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="zipcode"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="zipcode" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"></asp:RegularExpressionValidator>
            </span>
            <br />
            <span>
            <img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="firstname" runat="server" Text="First Name" Height="50" Width="430" ToolTip="Customer First Name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="firstname"></asp:RequiredFieldValidator>

            <asp:TextBox ID="lastname" runat="server" Text="Last Name" Height="50" Width="430" ToolTip="Customer Last Name"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="lastname"></asp:RegularExpressionValidator>
            </span>
            <br />
            <span>
            <img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="homephone" runat="server" Text="Home Phone" Height="50" Width="430" ToolTip="Customer Home Phone"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="homephone"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="homephone" ValidationExpression="^978[-][0-9]{10}$"></asp:RegularExpressionValidator>

            <asp:TextBox ID="cellphone" runat="server" Text="Cell Phone" Height="50" Width="430" ToolTip="Customer Cell Phone"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cellphone"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="cellphone" ValidationExpression="^978[-][0-9]{10}$"></asp:RegularExpressionValidator>
            </span>
            <br />
            <h3>NOTE: Your e-mail address will be your username</h3>
            <span>
            <img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="email" runat="server" Text="Email Address" Height="50" Width="430" ToolTip="A Valid Email address"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="email"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="email" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                <asp:CompareValidator runat="server" ControlToValidate="email" ControlToCompare="retypeemail"></asp:CompareValidator>

            <asp:TextBox ID="retypeemail" runat="server" Text="Retype Email Address" Height="50" Width="430" ToolTip="Retype the Email address"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="retypeemail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="retypeemail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                <asp:CompareValidator runat="server" ControlToValidate="retypeemail" ControlToCompare="email"></asp:CompareValidator>

            </span>
            <br />
            <span>
            <img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="password" runat="server" Text="Password" Height="50" Width="430" ToolTip="Password must
be between 8 and 10
characters, contain at least one
digit and one alphabetic
character, and must not
contain special character"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="password">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="password" ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"></asp:RegularExpressionValidator>
            <asp:TextBox ID="repassword" runat="server" Text="Retype Password" Height="50" Width="430"></asp:TextBox>
            </span>
            <br />
            <h3>Select a security question</h3>
            <span>
            <img src="paybill.jpg" height="40px" width="40px" />
            <asp:DropDownList ID="securityQ" runat="server" Height="50" Width="900" ToolTip="Select a
security question">
                <asp:ListItem Enabled="true" Text="What is your mother's maiden name?" Value="1"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="What was your childhood nickname?" Value="2"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="What is the name of your favorite childhood friend?" Value="3"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="What is your favorite sport team?" Value="4"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="What was the make and model of your first car?" Value="5"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="What school did you attend for sixth grade?" Value="6"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="What was the last name of your third grade teacher?" Value="7"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="In what town was your first job?" Value="8"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="What is your favorite movie?" Value="9"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="Who is your childhood sports hero?" Value="10"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="In what year was your father born?" Value="11"></asp:ListItem>
            </asp:DropDownList>

                           
            </span>
            <br />

            <span>

            <img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="answer" runat="server" Text="Type answer to the security question" Height="50" Width="900" ToolTip="Enter an answer to the
security question"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="answer"></asp:RequiredFieldValidator>
            
            </span>
            <br />
            <asp:HyperLink ID="privacy" runat="server" NavigateUrl="~/privacypage.aspx" Text="Privacy Policy"></asp:HyperLink> &nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="agreement" runat="server" />
            I have read and agreed to the terms and conditions in the Privacy Policy<br />

            
            <asp:Button ID="cancelcreat" runat="server" Text="CANCEL" Height="50" Width="400" />
            <asp:Button ID="createaccount" runat="server" Text="CREATE ACCOUNT" Height="50" Width="400" OnClick="UserSignUp"/>

            
        </div>
        
        
    </div>
</form>
</body>
</html>