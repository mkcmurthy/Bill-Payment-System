<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment5._default" %>

<!DOCTYPE html>
<script runat="server">

    protected void signup_Click(object sender, EventArgs e)
    {
        label1.Text = "<h3 style='text-align:center'>NEW TO RAPID BILL PAY?</h3>"+
            "<h4 style='text-align:center;color:red;'>Create an account to pay your bills online</h4>";
        newacc.Text = "LOGIN";
        forgotpassword.Text = "Already a Member?";

        userlogin1.Visible = false;
        userlogin2.Visible = true;
        //Response.Write("hello");

    }

    

    public void userlogin_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("userLogin.aspx");
    }

    protected void signup_form(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
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
    <div class="loginForm">
        
        <asp:Table id="login" runat="server" cellpadding="10" BorderWidth="0" Height="7" Width="400" style="background-color:bisque;">
            <asp:TableRow>
                <asp:TableCell><h3 style="text-align:center;"><asp:Label ID="label1" runat="server" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:darkgoldenrod;" Text="Login to Pay Your Bills Online"></asp:Label></h3></asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell><h3 style="color:brown;">EMAIL ADDRESS<span style="color:red;">*</span></h3>
                    
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="emailAddr" runat="server" Visible="false" Text="hello" ForeColor="Red" ></asp:Label>
                    
                    
                </asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow>
                
                
                <asp:TableCell>
                    <asp:ValidationSummary id="ValidationSummary1" runat="server" ValidationGroup="login"/>
                    <asp:TextBox ID="emailAddress" runat="server" Text="Enter Email Address" style="width:100%;border-color:transparent;background-color:bisque;"></asp:TextBox><hr />
                    
                   <%-- <asp:RequiredFieldValidator runat="server" ValidationGroup="login" ControlToValidate="emailAddress"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regEmailValidate" ValidationGroup="login" Text="incorrect email" ForeColor="Red" Font-Bold="True" EnableClientScript="false"  runat="server" ErrorMessage="incorrect email" Display="Dynamic" SetFocusOnError="true" ControlToValidate="emailAddress"  ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+) {0,0} $"></asp:RegularExpressionValidator>
                    --%>
                  
                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><h3 style="color:brown;">PASSWORD<span style="color:red;">*</span></h3></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="passwd" runat="server" Visible="false" Text="hello" ForeColor="Red" ></asp:Label>
                    
                    
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                
                <asp:TableCell>
                    <asp:ValidationSummary id="ValidationSummary2" runat="server" ValidationGroup="login"/>
                    <asp:TextBox ID="password" runat="server" Text="Enter Password" style="width:100%;border-color:transparent;background-color:bisque;"></asp:TextBox><hr />
                     
                  <%--<asp:RequiredFieldValidator runat="server" ValidationGroup="login" ControlToValidate="password"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regPassValidate" ValidationGroup="login" Text="incorrect password" ForeColor="Red" Font-Bold="True" EnableClientScript="false"  runat="server" ErrorMessage="It must be between 8 and 10 characters, contain at least one digit and one 
                                alphabetic character, and must not contain special characters" Display="Dynamic" SetFocusOnError="true" ControlToValidate="password"  ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"></asp:RegularExpressionValidator>
                    --%>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>

                <asp:TableCell>
                    <asp:HyperLink ID="forgotpassword" runat="server" NavigateUrl="forgotPassword.aspx" Text="Forgot Password"></asp:HyperLink> <br />
                    <asp:LinkButton ID="newacc" runat="server" Text="Create a New Account" OnClick="signup_Click"></asp:LinkButton> &nbsp;
                    
                    <asp:Button ID="userlogin1" runat="server" Text="USER LOGIN" OnClick="CheckValidity" Visible="true"/>
                    <asp:Button ID="userlogin2" runat="server" Text="NEXT" OnClick="NewCheckValidity" Visible="false"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
    </div>

    <asp:AdRotator ID="ad" AdvertisementFile="advertisements.xml" runat="server" Target =  "_blank" />
    <asp:AdRotator ID="AdRotator1" AdvertisementFile="advertisements.xml" runat="server" Target =  "_blank" />
    <asp:AdRotator ID="AdRotator2" AdvertisementFile="advertisements.xml" runat="server" Target =  "_blank" />
</form>
</body>
</html>
