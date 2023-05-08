<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab6.Default" %>

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
        top: 211px; 
        left: 82px;
        width: 220px;
    }

    .listBox{
        position: absolute; 
        top: 113px; 
        left: 136px; 
        width: 103px;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Store by Nicholas Gutierrez</title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="centerSquare">
            <h1 style="text-align: center">Store</h1>
            
           <asp:ListBox ID="itemList" runat="server" class="listBox" DataSourceID="SqlData" DataTextField="Items" DataValueField="Items"></asp:ListBox>
            
           <div class=buttons>
                <asp:Button ID="cartAdd" runat="server" onClick="AddItem" Text="Add to Cart" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cartView" runat="server" onClick="ViewCart" Text="View Cart" />
                <br>       
                <br>       
                <asp:Label ID="cartCount" runat="server"></asp:Label>
            </div>
        </div>
    </form>

    <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AvailableItems]" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
</body>
</html>
