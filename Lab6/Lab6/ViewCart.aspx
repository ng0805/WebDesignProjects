<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="Lab6.ViewCart" %>

<!DOCTYPE html>

<style>
    .centerSquare{
        padding: 50px;
        margin: auto;
        border-style: solid;
        border-width: thin;
        height: 237px;
        background-color: #C0C0C0;
        width: 258px;
        position: relative;
    }

    .buttons{
        height: 50px; 
        position: absolute; 
        top: 212px; 
        left: 115px;
        width: 220px;
    }

    .listBox{    
        position: absolute;
        top: 101px;
        left: 120px;
        width: 128px;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Cart</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="centerSquare">
            <h1 style="text-align: center">Cart</h1>
            
            <asp:ListBox ID="cartItems" runat="server" CssClass="listBox"></asp:ListBox>

            <div class=buttons>
                <asp:Button ID="shop" runat="server" onClick="Shop" Text="Shop" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="empty" runat="server" onClick="Empty" Text="Empty" />
            </div>
        </div>
    </form>
</body>
</html>
