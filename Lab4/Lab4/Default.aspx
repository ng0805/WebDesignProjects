<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab4.Default" %>

<!DOCTYPE html>

<style>
    .main {
        border-width: thin;
        border-style: solid;
        margin: auto;
        width: 700px;
        height: 345px;
        background-color: #118C4F;
    }
    
    .inputs {
        padding: 25px;
        height: 190px;
    }

    .buttons {
        padding: 20px;
        text-align: center;
    }
    
    .dualListRow{
        clear: both;
    }

    .dualListColumn{
        width: 45%;
        float: left;
        border:1px solid black;
        margin-left: 22px;
    }

    h1{
        text-align:center;
    }
    h3{
        margin-left:5px;
    }
    p{
        margin-left:5px;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nicholas Gutierrez's Currency Converter</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="main">
            <div class ="dualListRows">
                <h1>Currency Converter</h1>
            </div>
            
            <div class ="dualListRows">
                <!--Left Box: USD -> Intl-->
                <div class="dualListColumn"> 
                    <h3 style ="margin-left:5px;">From USD to International Currency</h3>
                    <p>
                        Currency Value:&nbsp;
                        <asp:TextBox ID="USDInput" style = "width:50px;" runat="server"></asp:TextBox> &nbsp;
                    </p>

                    <p>
                        To &nbsp;
                        <asp:DropDownList ID = "USDDropDown" style = "width:115px;" runat="server" DataSourceID="SqlData" DataTextField="Currency" DataValueField="Rate"></asp:DropDownList>
                    </p>
                    
                    <p>
                        International Value:&nbsp;

                        <asp:Label ID="IntlVal" runat="server" />
                        <asp:Label ID="IntlName" runat="server" />
                    </p>

                    <div class ="buttons">
                        <asp:Button Text="From USD" OnClick="FromUSD" runat="server" />                     
                    </div>

                </div>
                
                <!--Right Box: Intl -> USD-->
                <div class="dualListColumn">
                    <h3 style ="margin-left:5px;">To USD from International Currency</h3>
                    <p>
                        Currency Value:&nbsp;
                        <asp:TextBox ID="IntlInput" style = "width:50px;" runat="server"></asp:TextBox> &nbsp;
                    </p>
                    
                    <p>
                        From &nbsp;
                        <asp:DropDownList ID = "IntlDropDown" style = "width:115px;" runat="server" DataSourceID="SqlData" DataTextField="Currency" DataValueField="Rate"></asp:DropDownList>
                    </p>

                    <p>
                        USD Value:&nbsp;

                        <asp:Label ID="USDVal" runat="server" />
                        <asp:Label ID="USDName" runat="server" />
                    </p>

                    <div class ="buttons">
                        <asp:Button Text="To USD" OnClick="ToUSD" runat="server" />
                    </div>

                </div>
            </div>

            <!--Error Message-->
            <div class="dualListRow" style ="text-align:center; padding-top:5px;">
                <asp:Label ID="ErrorMsg" style="background-color: White; color: Red;" runat="server" />
            </div>

            <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rates]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

