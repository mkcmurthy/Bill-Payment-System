<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="Assignment5.contactUs" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Online Bill Pay Application</title>
    <link rel="stylesheet" type="text/css" href="new.css" />
</head>

<body style="background-image:url(paybill.jpg)">
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
    <div class="contactUstab">
        <asp:Table ID="contactdetailstab" runat="server" class="contactdetailstab" border="0" width="100%" height="300px">
            <asp:TableRow>
                <asp:TableCell style="color:blue;">Toll Free Phone Number</asp:TableCell>
                <asp:TableCell>:(800)471-9933</asp:TableCell>
                <asp:TableCell style="color:blue;">Direct Phone Number</asp:TableCell>
                <asp:TableCell>:(210)361-9910</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell style="color:blue;">Fax</asp:TableCell>
                <asp:TableCell>:(210)361-9911</asp:TableCell>
                <asp:TableCell style="color:blue;">Email</asp:TableCell>
                <asp:TableCell>:support@rapidbillpay.com</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell style="color:blue;">Address Line 1</asp:TableCell>
                <asp:TableCell>:2018 I-10 West</asp:TableCell>
                <asp:TableCell style="color:blue;">Address Line 2</asp:TableCell>
                <asp:TableCell>:</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell style="color:blue;">City</asp:TableCell>
                <asp:TableCell>:San Antonio</asp:TableCell>
                <asp:TableCell style="color:blue;">State</asp:TableCell>
                <asp:TableCell>:TX</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell style="color:blue;">Zip</asp:TableCell>
                <asp:TableCell>:78216</asp:TableCell>
            </asp:TableRow>
        
        </asp:Table>
    </div>
                   <div class="contactusmidhead">
                       <h2 style="color:blue;">Contact Rapid Bill Pay Support Staff</h2>
                   </div>
                   <div class="contactustab2">
                       <asp:TextBox ID="firstname" runat="server" size="70" value="First Name"></asp:TextBox>
                       <asp:TextBox ID="lastname" runat="server" size="70" value="Last Name"></asp:TextBox>
                       <asp:TextBox ID="EmailAddr" runat="server" size="70" Text="Email Address"></asp:TextBox><br />
                       
                       <!--<asp:TextBox ID="message" runat="server" cols="195" rows="7">Type your message here</asp:TextBox>-->
                      <textarea id="4" cols="222" rows="7">Type your message here</textarea>

                   </div>
                   <div class="CUsubmitbutton">
                       <asp:Button ID="subButton" runat="server" Text="Submit your message to support staff" OnClick="subButton_Click" />
                       
                   </div>
        </form>
</body >
</html >