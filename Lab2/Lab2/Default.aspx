<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2.Default" %>

<!DOCTYPE html>

<style>
    .inputs {
        padding: 50px;
        height: 190px;
    }

    .buttons {
        border-width: thin;
        padding: 20px;
        background-color: white;
        border-top-style: solid;
        text-align: center;
    }

    .main {
        border-width: thin;
        border-style: solid;
        margin: auto;
        width: 395px;
        background-color: #FF9933;
    }    
</style>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nicholas Gutierrez Hex/Dec Converter</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class = main>
            <div class = inputs>
                <h1 style ="text-align: center">Hexadecimal Converter</h1>
                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Decimal:&nbsp;  <!-- Add 7 spaces at the beginning and 1 at the end so text boxes line up --> 
                    <asp:TextBox ID="Decimal" runat="server"></asp:TextBox>
                </div>

                </br>

                <div>
                    Hexadecimal:
                    <asp:TextBox ID="Hex" runat="server"></asp:TextBox>
                </div>

                </br>

                <div>
                    <asp:Label ID="ErrorMsg" style="background-color: White; color: Red;" runat="server" />
                </div>
            </div>

            <div class = buttons>
                <asp:Button Text="Clear" OnClick="ClearData" runat="server" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button Text="Convert" OnClick="ConvertData" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
