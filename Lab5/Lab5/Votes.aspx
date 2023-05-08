<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Votes.aspx.cs" Inherits="Lab5.Votes" %>

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

    .results{       
        padding-left: 60px;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="center">
            <div class="heading">
                <h1 style ="text-align: center">Thank You For Voting!</h1>
           </div>
                <div class="results"> 
                    <asp:ListView ID="VotingResults" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
                        <AlternatingItemTemplate>
                            <td runat="server" style="background-color:#FFF8DC;">Candidate:
                                <asp:Label ID="CandidateLabel" runat="server" Text='<%# Eval("Candidate") %>' />
                                <br />
                                CurrentVoteCount:
                                <asp:Label ID="CurrentVoteCountLabel" runat="server" Text='<%# Eval("CurrentVoteCount") %>' />
                                <br />
                            </td>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">Candidate:
                                <asp:TextBox ID="CandidateTextBox" runat="server" Text='<%# Bind("Candidate") %>' />
                                <br />
                                CurrentVoteCount:
                                <asp:TextBox ID="CurrentVoteCountTextBox" runat="server" Text='<%# Bind("CurrentVoteCount") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                <br />
                            </td>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
                            <td runat="server" />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <InsertItemTemplate>
                            <td runat="server" style="">Candidate:
                                <asp:TextBox ID="CandidateTextBox" runat="server" Text='<%# Bind("Candidate") %>' />
                                <br />
                                CurrentVoteCount:
                                <asp:TextBox ID="CurrentVoteCountTextBox" runat="server" Text='<%# Bind("CurrentVoteCount") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                <br />
                            </td>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <td runat="server" style="background-color:#DCDCDC;color: #000000;">Candidate:
                                <asp:Label ID="CandidateLabel" runat="server" Text='<%# Eval("Candidate") %>' />
                                <br />
                                CurrentVoteCount:
                                <asp:Label ID="CurrentVoteCountLabel" runat="server" Text='<%# Eval("CurrentVoteCount") %>' />
                                <br />
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr id="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Candidate:
                                <asp:Label ID="CandidateLabel" runat="server" Text='<%# Eval("Candidate") %>' />
                                <br />
                                CurrentVoteCount:
                                <asp:Label ID="CurrentVoteCountLabel" runat="server" Text='<%# Eval("CurrentVoteCount") %>' />
                                <br />
                            </td>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </div>
            
        </div>
    </form>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Candidate], [CurrentVoteCount] FROM [CandidateVotes]"></asp:SqlDataSource>
</body>
</html>
