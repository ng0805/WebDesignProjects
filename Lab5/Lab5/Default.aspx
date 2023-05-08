<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab5.Default" %>

<!DOCTYPE html>

<style>
    body{
        background-image: url("/Pictures/flag.jpg");
        background-size: 300px 300px;
        background-repeat: repeat;
    }
    
    .center {
        margin: auto;
        width: 700px;
        height: 600px;
        background-image: url("/Pictures/voting.png");
        background-size: 700px 600px;
        background-repeat: repeat;
    }

    .heading {
       padding: 250px;
       padding-top: 50px;
       width: 200px;
       height: 100px;
    }

    .votes{
       padding: 40px;
    }


</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cast Your Vote</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="center">
            <div class="heading">
                <h2 style="text-align:center">Cast Your Vote</h2>
                <h3 style="text-align:center">Please select your candidate below</h3>
            
                </br>
                </br>
                </br>
                </br>
                </br>
                </br>
                </br>

                <div class="votes">

                    <asp:RadioButtonList ID="Candidates" runat="server" DataSourceID="SqlDataSource1" DataTextField="Candidate" DataValueField="Id"></asp:RadioButtonList>

                    <asp:Button Text="Submit Vote" OnClick="SubmitVote" runat="server" />
                </div>
            </div>
        </div>
    </form>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CandidateVotes]" UpdateCommand="UPDATE CandidateVotes
SET CurrentVoteCount = CurrentVoteCount+1
WHERE (Id = @selectedID);">
        <UpdateParameters>
            <asp:ControlParameter ControlID="Candidates" Name="selectedID" PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
</body>
</html>
