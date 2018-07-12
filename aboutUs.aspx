<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Online Bill Pay Application</title>
    <link rel="stylesheet" type="text/css" href="new.css" />
</head>

<body>
    <script type="text/javascript">
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
    <div class="aboutUs">
        <object width="100%" height="700" style="text-align:left;padding-top:2em;border-width:unset" data="aboutUs.pdf"></object>
    </div>
 </form>
</body>
</html>