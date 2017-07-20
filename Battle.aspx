<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Battle.aspx.cs" Inherits="Battle" MasterPageFile="~/Battle.Master"%>

<asp:Content ContentPlaceHolderID="Battle_Process" runat="server">
    <form id="form1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td style="vertical-align:top;">
                <table class="detailed" style="width: 250px;">
                    <tr>
                        <td style="width: 66px" class="col_w250">Name</td>
                        <td style="width: 78px">
                            <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblUserRace" runat="server" Text="Label"></asp:Label>
                            /<asp:Label ID="lblUserClass" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 66px" class="col_w250">Att. Bonus:</td>
                        <td style="width: 78px">
                            +<asp:Label ID="lblUserAttBonus" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 66px" class="col_w250">Armor Class: </td>
                        <td style="width: 78px">
                            <asp:Label ID="lblUserAC" runat="server" Text="Label"></asp:Label>
                        </td>
                   </tr>
                </table>
            </td>
            <td style="width: 250px; vertical-align:top;">
                <table class="detailed">
                    <tr>
                        <td style="width: 67px" class="col_w250">Name</td>
                            <td style="width: 78px">
                                <asp:Label ID="lblCompName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblCompRace" runat="server" Text="Label"></asp:Label>
                            /<asp:Label ID="lblCompClass" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 67px" class="col_w250">Att. Bonus: </td>
                        <td style="width: 78px">
                            +<asp:Label ID="lblCompAttBonus" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 67px" class="col_w250">Armor Class: </td>
                        <td style="width: 78px">
                            <asp:Label ID="lblCompAC" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
        <br />
    <asp:Label ID="userWinner" runat="server" Font-Names="Old English Text MT" 
        Font-Size="Large" ForeColor="Black" Text="Label" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="compWinner" runat="server" Font-Names="Old English Text MT" 
        Font-Size="Large" ForeColor="Black" Text="Label" Visible="False"></asp:Label>
        <br />
    <asp:Image ID="picUser" runat="server" Height="134px" 
        ImageUrl="~/images/user.jpg" Width="132px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnBattle" runat="server" Text="Play Round" 
        onclick="btnBattle_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="picComp" runat="server" Height="132px" 
        ImageUrl="~/images/comp.jpg" Width="134px" />
    <br />
    <asp:Button ID="btnReplay" runat="server" onclick="btnReplay_Click" 
        Text="Replay" Visible="False" />
    <table class ="detailed">
        <tr>
            <td>
                <asp:Label ID="userCurrentHealth" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="userSlash" runat="server" Text=" / "></asp:Label>
                <asp:Label ID="UserMaxHealth" runat="server" Text="Label"></asp:Label><br />
                <meter id="userHealth"></meter>
            </td>
            <td>
                <asp:Label ID="compCurrentHealth" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="compSlash" runat="server" Text=" / "></asp:Label>
                <asp:Label ID="compMaxHealth" runat="server" Text="Label"></asp:Label><br />
                <meter id="compHealth"></meter>
            </td>
        </tr>
    </table>
    <asp:TextBox ID="history" runat="server" AutoPostBack="True" Enabled="False" 
        Height="236px" TextMode="MultiLine" Width="540px"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtUserCurrentHealth" runat="server" AutoPostBack="True" 
        ClientIDMode="Static" Width="29px" style="display:none;"></asp:TextBox>
    <asp:TextBox ID="txtUserMaxHealth" runat="server" AutoPostBack="True" 
        ClientIDMode="Static" Width="29px" style="display:none;"></asp:TextBox>
    <asp:TextBox ID="txtCompMaxHealth" runat="server" AutoPostBack="True" 
        ClientIDMode="Static" Width="29px" style="display:none;"></asp:TextBox>
    <asp:TextBox ID="txtCompCurrentHealth" runat="server" AutoPostBack="True" 
        ClientIDMode="Static" Width="29px" style="display:none;"></asp:TextBox>
    </form>
    <script type="text/javascript">
        function updateHealth() {
            var healthBar = document.getElementById("userHealth");
            var compBar = document.getElementById("compHealth");
            healthBar.max = document.getElementById("txtUserMaxHealth").value;
            healthBar.value = document.getElementById("txtUserCurrentHealth").value;
            compHealth.max = document.getElementById("txtCompMaxHealth").value;
            compHealth.value = document.getElementById("txtCompCurrentHealth").value;
        }
    </script>
</asp:Content>
