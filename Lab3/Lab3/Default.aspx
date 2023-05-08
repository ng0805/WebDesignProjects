<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab3.Default" %>

<!DOCTYPE html>

<style>
    .box {
        background-color: #00FFFF; 
        border-style: solid; 
        border-width: 1px; 
        margin: auto; 
        width: 265px; 
        padding: 10px; 
        height: 295px;
    } 

    .listStyle{
        position: relative; 
        left: 100px; 
        top: 10px;
    }

</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Primes By Nicholas Gutierrez</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class=box>
            <h1 style="text-align: center">Primes</h1>

            <asp:ListBox class = listStyle ID ="PrimesList" runat = "server" Rows ="10"/>
        </div>
    </form>
</body>
</html>