<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs" Inherits="Assignment55.forgotPassword" %>
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
            <asp:Button ID="signup" runat="server" style="background-color:darkgoldenrod;color:white;" Text="SIGN UP" OnClick="signup_Click"/>
            
        </div>

    </div>
    
    <div class="forgotpass">
        <br /> <br /> <br /><br /><br />
        <div style="background-color:bisque">
            <h1 style="color:blue">RECOVER PASSWORD</h1>
            
           <span><img src="paybill.jpg" height="40px" width="40px" />
               
            <asp:TextBox ID="emailrecovery" runat="server" ValidationGroup="recovery" Text="Email" Height="50" Width="900"></asp:TextBox>
            <asp:ValidationSummary id="emailError" runat="server" ValidationGroup="recovery"/>
               <asp:RequiredFieldValidator runat="server" ValidationGroup="recovery" ControlToValidate="emailrecovery"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="emailRecVal" runat="server" ValidationGroup="recovery" ErrorMessage="incorrect email" Text="invalid email address" Font-Size="XX-Large" EnableClientScript="false" Display="Dynamic" ControlToValidate="emailrecovery" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+) {0,0}$"></asp:RegularExpressionValidator>
           </span>
            
            <h4 style="color:blue">The email you are typing above much match the email in records. If the email match, you will receive an email with login information</h4>
            <asp:Button ID="cancelandback" runat="server" OnClick="toHomePage" Text="CANCEL AND GO BACK" Height="50" Width="400" />
            <asp:Button ID="recover" runat="server" Text="RECOVER PASSWORD" Height="50" Width="400" OnClick="recover_Click" />

        </div>
        
        
        
    </div>
</form>
</body>
</html>