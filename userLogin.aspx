<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="Assignment5.userLogin" %>
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
        Response.Redirect("userLogin.aspx");
    }

    protected void recover_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgotPassword.aspx");
    }

    protected void calender_SelectionChanged(object sender, EventArgs e)
    {
        datepicker.Text = calender.SelectedDate.ToShortDateString() + '.';
    }

    protected void scheduletransaction_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(),"hwa","alert('Thsi site says.. Work in progress');",true);
    }

    protected void canceltransaction_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(),"hwa","confirm('Are you sure you want to cancel transaction?');",true);

    }

    protected void buttonc_Click(object sender, EventArgs e)
    {
        calender.Visible = true;
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
    <div class="userlogin">
        <br /> <br /> <br /><br /><br />
        <div style="background-color:bisque">
            <h3 style="color:blue">Compose a Payment Request</h3>
           <span><img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="datepicker" runat="server" Text="Select Payment/Transaction Date" Height="50" Width="800" ToolTip="Select the
                date of the transaction"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ControlToValidate="datepicker"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator runat="server" ControlToValidate="datepicker"></asp:RegularExpressionValidator>
            
           
                <asp:Button ID="buttonc" runat="server" Height="40px" Width="40" OnClick="buttonc_Click" />
            <asp:Calendar  ID="calender" runat="server" OnSelectionChanged="calender_SelectionChanged" ShowGridLines="true" Visible="false" Height="200px" Width="200px"></asp:Calendar>
            
           </span><br />
            <span><img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="businessname" runat="server" Text="Recipient/Business Name" Height="50" Width="900" ToolTip="Funds
Receiving Business Name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="businessname"></asp:RequiredFieldValidator>
            </span>
            <br />
            <span>
            <img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="businessaddress" runat="server" Text="Recipient/Business Street Address" Height="50" Width="900" ToolTip="Funds
Receiving Business’s Mailing Address"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="businessaddress"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="businessaddress" ></asp:RegularExpressionValidator>

            </span>
            <br />
            <span>
            <img src="paybill.jpg" height="40px" width="40px" />
            <asp:TextBox ID="amount" runat="server" Text="Amount in $$.cc" Height="50" Width="200" ToolTip="Payment About
in $$"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="amount">

                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="amount" ValidationExpression="^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$"></asp:RegularExpressionValidator>
            <asp:TextBox ID="describePayment" runat="server" Text="Describe Your Payment" Height="50" Width="700" ToolTip="Description
of the payment. Eg. Car Payment"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="describePayment"></asp:RequiredFieldValidator>
            </span>
            <br />

           
            
            <asp:Button ID="canceltransaction" runat="server" Text="CANCEL TRANSACTION" Height="50" Width="400" OnClick="canceltransaction_Click" />
            <asp:Button ID="ScheduleTransaction" runat="server" Text="SCHEDULE TRANSACTION" Height="50" Width="400" OnClick="scheduletransaction_Click"/>

            <h4 style="color:blue">My Previous Transactions</h4>
            <b>Transaction Date</b> &nbsp; &nbsp; <b>Receipient Name</b> &nbsp; &nbsp; <b>Receipient Address</b> &nbsp; &nbsp;
            <b>Amount</b> &nbsp; &nbsp; <b>Status</b><br />
            <p>No Records found</p> <br />
            <asp:Button ID="okbutton" runat="server" Text="OK" Height="50" Width="100" OnClick="scheduletransaction_Click"/>
        </div>
        
        
    </div>
</form>
</body>
</html>