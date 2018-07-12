<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Online Bill Pay Application</title>
    <link rel="stylesheet" type="text/css" href="new.css" />
</head>

<body>
    <script>
        function alertFunction() {
           alert("This site says..\n\n Work in Progress");
        }
    </script>
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
            
            <asp:Button ID="userlogin" runat="server" style="background-color:darkgoldenrod;color:white;" Text="USER LOGIN" />
            <asp:Button ID="signup" runat="server" style="background-color:darkgoldenrod;color:white;" Text="SIGN UP" />
        </div>

    </div>
    <div class="faq" >
        <!--<object width="100%" height="700" style="text-align:left;padding-top:2em;border-width:unset" data="security.pdf"></object>-->
        <span><strong style="color:red;font-size:30px;">Frequently Asked Questions</strong>&nbsp;<em style="color:coral;font-size:30px;">Rapid Bill Pay</em></span>
    </div>
        <asp:HyperLink ID="faq1" runat="server" NavigateUrl="faq1.aspx">View FAQ in PDF</asp:HyperLink><br /><br />
         
    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> What is Rapid Bill Pay?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> Rapid Bill Pay is the premier provider for online bill payment systems. We make it easy for organizations to offer online bill payment, and we make it easy for customers to pay their bills online.</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> Does it cost anything to sign up for online bill payment?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> No. It's free to sign up for online bill payment and to use the Rapid Bill Pay service. However, some billing organizations charge a transaction convenience fee.</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> How do I create a log in?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;">
            Follow these steps From the Rapid Bill Pay home page, simply click the "Sign Up" button, enter your email, and create a password.
            You will be sent an email to verify your email address. In that email, you will need to click "Verify Email" to return to Rapid Bill Pay. In that email, you will need to click "Verify Email" to return to Rapid Bill Pay.
            Finally, you will need to provide your contact information, agree to terms and conditions, and then click "Next." Once your Rapid Bill Pay account has been created, you can begin managing your bills.
        </span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> Do I need a separate Rapid Bill Pay login for each billing account?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> No. You can manage all your merchant and service provider billing accounts from a single Rapid Bill Pay login.</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> What payment choices do I have?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> You can pay your bills with a credit card, debit card, or you can transfer funds directly from your banking account using electronic funds transfer (EFT). The types of payment accepted are determined by the billing organization and not Rapid Bill Pay. If you do have questions about payment methods, please contact the billing organization directly.</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> Can I set up automatic payments?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> Yes. When you set up your account you can choose whether you want automatic bill payment, so you can set it and forget it. Payments will be automatically deducted from a credit card or banking account on the frequency you choose.</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> What will my bill look like online?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> Your online bill will have an easy to read format with all of the necessary information to understand your bill.</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> What other information is available?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> You can view up to a year's history of your account online, so you can print and compare your current bill to previous bills.</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> How do I update my customer information, such as email address or phone number?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> First log in to your account. In the upper right corner of the screen, you will see the profile icon along with the name associated with your account. Click the dropdown arrow and select "Account Settings." You can then update your contact or login information by clicking “Edit” and then click “Save Edits.”</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> Is my information safe?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> Absolutely. All the transactions are handled on secure servers and all sensitive data encrypted. As long as you don't give out your password, only you will be able to access your account. Plus. your personal information or e-mail address will NOT be sold or rented to third parties for marketing purposes without your permission.</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> How easy is it to pay my bill?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> You can pay your bills online or using our mobile app. You can also set up Rapid Bill Auto Pay to pay your bill on a scheduled frequency.</span><br /><br />
    </div>

    <div>
        <span style="color:red;font-size:25px;">Q.</span><span style="color:darkgrey;font-size:25px;"> How do I know the payment went through?</span><br />
        <span style="color:blue;font-size:15px;">A.</span><span style="color:darkgrey;font-size:15px;"> After you complete the transaction, you will get a transaction receipt with confirmation number, as well as an email as a secondary confirmation.</span><br /><br />
    </div>
</form>
</body>
</html>