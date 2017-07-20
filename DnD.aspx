<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DnD.aspx.cs" Inherits="DnD" MasterPageFile="~/MasterTemplate.Master"%>

<asp:Content ContentPlaceHolderID="Character_Creation" runat="server">
    
    <form id="form1" runat="server" style="height: 1449px">
        <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
            Text="Update" ClientIDMode=Static style="display:none;"/>
        <asp:TextBox ID="strength" runat="server" Text="0" Font-Bold="True" 
            Font-Names="Old English Text MT" Font-Size="Large" ClientIDMode=Static 
            Width="35px" AutoPostBack="True" style="display:none;"/>
        <asp:TextBox ID="constitution" runat="server" Text="0" Font-Bold="True" 
            Font-Names="Old English Text MT" Font-Size="Large" ClientIDMode=Static 
            Width="35px" AutoPostBack="True" style="display:none;"/>
        <asp:TextBox ID="dexterity" runat="server" Text="0" Font-Bold="True" 
            Font-Names="Old English Text MT" Font-Size="Large" ClientIDMode=Static 
            Width="35px" style="display:none;"/>
        <asp:TextBox ID="intelligence" runat="server" Text="0" Font-Bold="True" 
            Font-Names="Old English Text MT" Font-Size="Large" ClientIDMode=Static 
            Width="35px" style="display:none;"/>
        <asp:TextBox ID="wisdom" runat="server" Text="0" Font-Bold="True" 
            Font-Names="Old English Text MT" Font-Size="Large" ClientIDMode=Static 
            Width="35px" style="display:none;"/>
        <asp:TextBox ID="charisma" runat="server" Text="0" Font-Bold="True" 
            Font-Names="Old English Text MT" Font-Size="Large" ClientIDMode=Static 
            Width="35px" style="display:none;"/>
        <asp:TextBox ID="control" runat="server" ClientIDMode="Static" style="display:none;"></asp:TextBox>
        <br />
        <table class="detailed" style="width:85%;">
            <tr>
                <td style="text-align:center;">
                    <asp:TextBox ID="txtOption1" runat="server" ClientIDMode="Static" 
                        Enabled="False" Font-Bold="True" Font-Names="Old English Text MT" 
                        Font-Size="Medium" Width="22px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td style="text-align:center;">
                    <asp:TextBox ID="txtOption2" runat="server" ClientIDMode="Static" 
                        Enabled="False" Font-Bold="True" Font-Names="Old English Text MT" 
                        Font-Size="Medium" Width="22px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td style="text-align:center;">
                    <asp:TextBox ID="txtOption3" runat="server" ClientIDMode="Static" 
                        Enabled="False" Font-Bold="True" Font-Names="Old English Text MT" 
                        Font-Size="Medium" Width="22px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td style="text-align:center;">
                    <asp:TextBox ID="txtOption4" runat="server" ClientIDMode="Static" 
                        Enabled="False" Font-Bold="True" Font-Names="Old English Text MT" 
                        Font-Size="Medium" Width="22px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td style="text-align:center;">
                    <asp:TextBox ID="txtOption5" runat="server" ClientIDMode="Static" 
                        Enabled="False" Font-Bold="True" Font-Names="Old English Text MT" 
                        Font-Size="Medium" Width="22px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td style="text-align:center;">
                    <asp:TextBox ID="txtOption6" runat="server" ClientIDMode="Static" 
                        Enabled="False" Font-Bold="True" Font-Names="Old English Text MT" 
                        Font-Size="Medium" Width="22px" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;<asp:DropDownList ID="ddlDebug1" runat="server" 
            AutoPostBack="True" Height="16px" Width="80px" 
            onselectedindexchanged="ddlDebug_SelectedIndexChanged" 
            ClientIDMode="Static">
            <asp:ListItem> -- </asp:ListItem>
            <asp:ListItem>Strength</asp:ListItem>
            <asp:ListItem>Constitution</asp:ListItem>
            <asp:ListItem>Dexterity</asp:ListItem>
            <asp:ListItem>Intelligence</asp:ListItem>
            <asp:ListItem>Wisdom</asp:ListItem>
            <asp:ListItem>Charisma</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
                    &nbsp;<asp:DropDownList ID="ddlDebug2" runat="server" 
            AutoPostBack="True" Height="16px" Width="80px" 
            onselectedindexchanged="ddlDebug_SelectedIndexChanged" 
            ClientIDMode="Static">
            <asp:ListItem> -- </asp:ListItem>
            <asp:ListItem>Strength</asp:ListItem>
            <asp:ListItem>Constitution</asp:ListItem>
            <asp:ListItem>Dexterity</asp:ListItem>
            <asp:ListItem>Intelligence</asp:ListItem>
            <asp:ListItem>Wisdom</asp:ListItem>
            <asp:ListItem>Charisma</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
                    &nbsp;<asp:DropDownList ID="ddlDebug3" runat="server" 
            AutoPostBack="True" Height="16px" Width="80px" 
            onselectedindexchanged="ddlDebug_SelectedIndexChanged" 
            ClientIDMode="Static">
            <asp:ListItem> -- </asp:ListItem>
            <asp:ListItem>Strength</asp:ListItem>
            <asp:ListItem>Constitution</asp:ListItem>
            <asp:ListItem>Dexterity</asp:ListItem>
            <asp:ListItem>Intelligence</asp:ListItem>
            <asp:ListItem>Wisdom</asp:ListItem>
            <asp:ListItem>Charisma</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
                    &nbsp;<asp:DropDownList ID="ddlDebug4" runat="server"  
            AutoPostBack="True" Height="16px" Width="80px" 
            onselectedindexchanged="ddlDebug_SelectedIndexChanged" 
            ClientIDMode="Static">
            <asp:ListItem> -- </asp:ListItem>
            <asp:ListItem>Strength</asp:ListItem>
            <asp:ListItem>Constitution</asp:ListItem>
            <asp:ListItem>Dexterity</asp:ListItem>
            <asp:ListItem>Intelligence</asp:ListItem>
            <asp:ListItem>Wisdom</asp:ListItem>
            <asp:ListItem>Charisma</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
                    &nbsp;<asp:DropDownList ID="ddlDebug5" runat="server"  
            AutoPostBack="True" Height="16px" Width="80px" 
            onselectedindexchanged="ddlDebug_SelectedIndexChanged" 
            ClientIDMode="Static">
            <asp:ListItem> -- </asp:ListItem>
            <asp:ListItem>Strength</asp:ListItem>
            <asp:ListItem>Constitution</asp:ListItem>
            <asp:ListItem>Dexterity</asp:ListItem>
            <asp:ListItem>Intelligence</asp:ListItem>
            <asp:ListItem>Wisdom</asp:ListItem>
            <asp:ListItem>Charisma</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
                    &nbsp;<asp:DropDownList ID="ddlDebug6" runat="server"  
            AutoPostBack="True" Height="16px" Width="80px" 
            onselectedindexchanged="ddlDebug_SelectedIndexChanged" 
            ClientIDMode="Static">
            <asp:ListItem> -- </asp:ListItem>
            <asp:ListItem>Strength</asp:ListItem>
            <asp:ListItem>Constitution</asp:ListItem>
            <asp:ListItem>Dexterity</asp:ListItem>
            <asp:ListItem>Intelligence</asp:ListItem>
            <asp:ListItem>Wisdom</asp:ListItem>
            <asp:ListItem>Charisma</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblRace" runat="server" Text="Race : " Font-Bold="True" 
            Font-Names="Old English Text MT" Font-Size="Large"></asp:Label>
        <asp:DropDownList ID="ddlRace" runat="server" DataSourceID="DnDRaces" 
            DataTextField="Name" DataValueField="Name" Height="20px" Width="111px" 
            AutoPostBack="True" onselectedindexchanged="ddlRace_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblName" runat="server" Text="Name : " Font-Bold="True" 
            Font-Names="Old English Text MT" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" AutoPostBack="True" Width="226px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="DnDRaces" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT * FROM [Race]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DnDRacesDetailed" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT * FROM [Race] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlRace" Name="Name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="RaceView" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataKeyNames="Name" DataSourceID="DnDRacesDetailed" 
            GridLines="Both" Height="99px" Width="587px">
            <EditItemTemplate>
                Name:
                <asp:Label ID="NameLabel1" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Strength:
                <asp:TextBox ID="StrengthTextBox" runat="server" 
                    Text='<%# Bind("Strength") %>'/>
                <br />
                Constitution:
                <asp:TextBox ID="ConstitutionTextBox" runat="server" 
                    Text='<%# Bind("Constitution") %>' />
                <br />
                Dexterity:
                <asp:TextBox ID="DexterityTextBox" runat="server" 
                    Text='<%# Bind("Dexterity") %>' />
                <br />
                Intelligence:
                <asp:TextBox ID="IntelligenceTextBox" runat="server" 
                    Text='<%# Bind("Intelligence") %>' />
                <br />
                Wisdom:
                <asp:TextBox ID="WisdomTextBox" runat="server" Text='<%# Bind("Wisdom") %>' />
                <br />
                Charisma:
                <asp:TextBox ID="CharismaTextBox" runat="server" 
                    Text='<%# Bind("Charisma") %>' />
                <br />
                Size:
                <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Strength:
                <asp:TextBox ID="StrengthTextBox" runat="server" 
                    Text='<%# Bind("Strength") %>'/>
                <br />
                Constitution:
                <asp:TextBox ID="ConstitutionTextBox" runat="server" 
                    Text='<%# Bind("Constitution") %>' />
                <br />
                Dexterity:
                <asp:TextBox ID="DexterityTextBox" runat="server" 
                    Text='<%# Bind("Dexterity") %>' />
                <br />
                Intelligence:
                <asp:TextBox ID="IntelligenceTextBox" runat="server" 
                    Text='<%# Bind("Intelligence") %>' />
                <br />
                Wisdom:
                <asp:TextBox ID="WisdomTextBox" runat="server" Text='<%# Bind("Wisdom") %>' />
                <br />
                Charisma:
                <asp:TextBox ID="CharismaTextBox" runat="server" 
                    Text='<%# Bind("Charisma") %>' />
                <br />
                Size:
                <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="detailed">
                    <tr>
                        <td>
                            <span>&nbsp;&nbsp; </span><span style="text-decoration: underline">Strength</span><span> 
                            :</span>&nbsp;&nbsp;
                            <asp:Label ID="StrengthLabel" runat="server" Text='<%# Bind("Strength") %>'/>
                        </td>
                        <td>
                            <span style="text-decoration: underline">Constitution</span><span> :</span>&nbsp;&nbsp;
                            <asp:Label ID="ConstitutionLabel" runat="server" 
                                Text='<%# Bind("Constitution") %>' />
                        </td>
                        <td>
                            <span style="text-decoration: underline">Dexterity</span><span> :</span>&nbsp;&nbsp;
                            <asp:Label ID="DexterityLabel" runat="server" Text='<%# Bind("Dexterity") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span style="text-decoration: underline">Intelligence</span><span>&nbsp;:&nbsp; </span>&nbsp;<asp:Label ID="IntelligenceLabel" runat="server" 
                                Text='<%# Bind("Intelligence") %>' />
                        </td>
                        <td>
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="text-decoration: underline">
                            Wisdom</span><span> :</span>&nbsp;&nbsp;
                            <asp:Label ID="WisdomLabel" runat="server" Text='<%# Bind("Wisdom") %>' />
                        </td>
                        <td>
                            <span>&nbsp;</span><span style="text-decoration: underline">Charisma</span><span>&nbsp;:&nbsp;
                            </span>&nbsp;<asp:Label ID="CharismaLabel" runat="server" Text='<%# Bind("Charisma") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <span>&nbsp;</span><span style="text-decoration: underline">Description</span><span> 
                            :</span>&nbsp;&nbsp;
                            <asp:Label ID="DescriptionLabel" runat="server" 
                                Text='<%# Bind("Description") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <br />
        <a name="classAnchor"></a>
        <asp:Label ID="lblClass" runat="server" Text="Class : " Font-Bold="True" 
            Font-Italic="False" Font-Names="Old English Text MT" Font-Size="Large"></asp:Label>
        <asp:DropDownList ID="dllClass" runat="server" Height="20px" Width="111px" 
            DataSourceID="DnDClasses" DataTextField="Name" DataValueField="Name" 
            AutoPostBack="True" onselectedindexchanged="dllClass_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="DnDClasses" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT [Name] FROM [Class]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DnDClassesDetailed" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT * FROM [Class] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="dllClass" Name="Name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="ClassView" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataSourceID="DnDClassesDetailed" GridLines="Both" 
            Height="95px" Width="581px">
            <EditItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                AttackBonus:
                <asp:TextBox ID="AttackBonusTextBox" runat="server" 
                    Text='<%# Bind("AttackBonus") %>' />
                <br />
                Fortitude:
                <asp:TextBox ID="FortitudeTextBox" runat="server" 
                    Text='<%# Bind("Fortitude") %>' />
                <br />
                Reflex:
                <asp:TextBox ID="ReflexTextBox" runat="server" Text='<%# Bind("Reflex") %>' />
                <br />
                Will:
                <asp:TextBox ID="WillTextBox" runat="server" Text='<%# Bind("Will") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                AttackBonus:
                <asp:TextBox ID="AttackBonusTextBox" runat="server" 
                    Text='<%# Bind("AttackBonus") %>' />
                <br />
                Fortitude:
                <asp:TextBox ID="FortitudeTextBox" runat="server" 
                    Text='<%# Bind("Fortitude") %>' />
                <br />
                Reflex:
                <asp:TextBox ID="ReflexTextBox" runat="server" Text='<%# Bind("Reflex") %>' />
                <br />
                Will:
                <asp:TextBox ID="WillTextBox" runat="server" Text='<%# Bind("Will") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="detailed">
                    <tr>
                        <td>
                            <span style="text-decoration: underline">AttackBonus</span> :&nbsp;&nbsp;
                            <asp:Label ID="AttackBonusLabel" runat="server" 
                                Text='<%# Bind("AttackBonus") %>' />
                        </td>
                        <td>
                            <span style="text-decoration: underline">Fortitude</span> :&nbsp;&nbsp;
                            <asp:Label ID="FortitudeLabel" runat="server" Text='<%# Bind("Fortitude") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="text-decoration: underline">Reflex</span> :&nbsp;&nbsp;
                            <asp:Label ID="ReflexLabel" runat="server" Text='<%# Bind("Reflex") %>' />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="text-decoration: underline">Will</span> :&nbsp;&nbsp;
                            <asp:Label ID="WillLabel" runat="server" Text='<%# Bind("Will") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span style="text-decoration: underline">Description</span> :&nbsp;&nbsp;
                            <asp:Label ID="DescriptionLabel" runat="server" 
                                Text='<%# Bind("Description") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <br />
        <a name="armorAnchor"></a>
        <asp:Label ID="lblArmor" runat="server" Text="Armor : " Font-Bold="True" 
            Font-Italic="False" Font-Names="Old English Text MT" Font-Size="Large" 
            ClientIDMode="Static"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Armor<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlArmorCat" runat="server" Height="20px" Width="111px" 
            DataSourceID="DnDArmorCategory" DataTextField="Category" DataValueField="Category" 
            AutoPostBack="True" onselectedindexchanged="ddlArmorCat_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="ddlArmor" runat="server" Height="20px" Width="111px" 
            DataSourceID="DnDArmor" DataTextField="Name" DataValueField="Name" 
            AutoPostBack="True" onselectedindexchanged="ddlArmor_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="DnDArmor" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT [Name] FROM [Armor] WHERE ([Category] = @Category)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlArmorCat" Name="Category" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="DnDArmorCategory" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT DISTINCT [Category] FROM [Armor]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DnDArmorDetailed" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT [ACBonus], [DexBonus], [Speed], [Description], [Picture] FROM [Armor] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlArmor" Name="Name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="ArmorView" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataSourceID="DnDArmorDetailed" GridLines="Both" 
            Height="31px" Width="578px" style="margin-top: 0px">
            <EditItemTemplate>
                ACBonus:
                <asp:TextBox ID="ACBonusTextBox" runat="server" Text='<%# Bind("ACBonus") %>' />
                <br />
                DexBonus:
                <asp:TextBox ID="DexBonusTextBox" runat="server" 
                    Text='<%# Bind("DexBonus") %>' />
                <br />
                Speed:
                <asp:TextBox ID="SpeedTextBox" runat="server" 
                    Text='<%# Bind("Speed") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                Picture:
                <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                ACBonus:
                <asp:TextBox ID="ACBonusTextBox" runat="server" Text='<%# Bind("ACBonus") %>' />
                <br />
                DexBonus:
                <asp:TextBox ID="DexBonusTextBox" runat="server" 
                    Text='<%# Bind("DexBonus") %>' />
                <br />
                Speed:
                <asp:TextBox ID="SpeedTextBox" runat="server" 
                    Text='<%# Bind("Speed") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                Picture:
                <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="detailed">
                    <tr>
                        <td class="col_w250" style="width: 221px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="text-decoration: underline">Speed</span> :
                            <asp:Label ID="SpeedLabel" runat="server" Text='<%# Bind("Speed") %>' />
                        </td>
                        <td rowspan="3">
                            <asp:Label ID="PictureLabel" runat="server" Text='<%# Bind("Picture") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="col_w250" style="width: 221px">
                            <span>&nbsp;&nbsp; </span><span style="text-decoration: underline">Dexterity Bonus</span> 
                            : <asp:Label ID="DexBonusLabel" runat="server" Text='<%# Bind("DexBonus") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="col_w250" style="width: 221px">
                            <span style="text-decoration: underline">Armor Class Bonus</span> :
                            <asp:Label ID="ACBonusLabel" runat="server" Text='<%# Bind("ACBonus") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span style="text-decoration: underline">Description</span> : <asp:Label ID="DescriptionLabel" runat="server" 
                                Text='<%# Bind("Description") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <br />
        <a name="weaponAnchor"></a>
        <asp:Label ID="lblWeapon" runat="server" Text="Weapon : " Font-Bold="True" 
            Font-Italic="False" Font-Names="Old English Text MT" Font-Size="Large"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlWeaponCat" runat="server" Height="20px" Width="111px" 
            DataSourceID="DnDWeaponCategory" DataTextField="Category" DataValueField="Category" 
            AutoPostBack="True" 
            onselectedindexchanged="ddlWeaponCat_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="ddlWeapon" runat="server" Height="20px" Width="111px" 
            DataSourceID="DnDWeapon" DataTextField="Name" DataValueField="Name" 
            AutoPostBack="True" onselectedindexchanged="ddlWeapon_SelectedIndexChanged" 
            style="margin-bottom: 0px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="DnDWeapon" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT * FROM [Weapon] WHERE ([Category] = @Category)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlWeaponCat" Name="Category" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="DnDWeaponCategory" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT DISTINCT Category FROM Weapon"></asp:SqlDataSource>
        <asp:FormView ID="WeaponView" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataSourceID="DnDWeaponDetailed" GridLines="Both" 
            Height="31px" Width="578px" style="margin-top: 0px">
            <EditItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Category:
                <asp:TextBox ID="CategoryTextBox" runat="server" 
                    Text='<%# Bind("Category") %>' />
                <br />
                Roll:
                <asp:TextBox ID="RollTextBox" runat="server" 
                    Text='<%# Bind("Roll") %>' />
                <br />
                Damage:
                <asp:TextBox ID="DamageTextBox" runat="server" 
                    Text='<%# Bind("Damage") %>' />
                <br />
                critLow:
                <asp:TextBox ID="critLowTextBox" runat="server" Text='<%# Bind("critLow") %>' />
                <br />
                critHigh:
                <asp:TextBox ID="critHighTextBox" runat="server" 
                    Text='<%# Bind("critHigh") %>' />
                <br />
                Critical:
                <asp:TextBox ID="CriticalTextBox" runat="server" 
                    Text='<%# Bind("Critical") %>' />
                <br />
                Weight:
                <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                Picture:
                <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Category:
                <asp:TextBox ID="CategoryTextBox" runat="server" 
                    Text='<%# Bind("Category") %>' />
                <br />
                Roll:
                <asp:TextBox ID="RollTextBox" runat="server" 
                    Text='<%# Bind("Roll") %>' />
                <br />
                Damage:
                <asp:TextBox ID="DamageTextBox" runat="server" 
                    Text='<%# Bind("Damage") %>' />
                <br />
                critLow:
                <asp:TextBox ID="critLowTextBox" runat="server" Text='<%# Bind("critLow") %>' />
                <br />
                critHigh:
                <asp:TextBox ID="critHighTextBox" runat="server" 
                    Text='<%# Bind("critHigh") %>' />
                <br />
                Critical:
                <asp:TextBox ID="CriticalTextBox" runat="server" 
                    Text='<%# Bind("Critical") %>' />
                <br />
                Weight:
                <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                Picture:
                <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="detailed">
                    <tr>
                        <td style="width: 296px">
                            Attack Roll :
                            <asp:Label ID="RollLabel" runat="server" Text='<%# Bind("Roll") %>' />d
                            <asp:Label ID="DamageLabel" runat="server" Text='<%# Bind("Damage") %>' />
                        </td>
                        <td rowspan="3">
                            <asp:Label ID="PictureLabel" runat="server" Text='<%# Bind("Picture") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 296px">
                            Critical :
                            <asp:Label ID="critLowLabel" runat="server" Text='<%# Bind("critLow") %>' />
                            <asp:Label ID="critDash" runat="server" ClientIDMode="Static" Text="-"></asp:Label>
                            <asp:Label ID="critHighLabel" runat="server" Text='<%# Bind("critHigh") %>' />
                            <asp:Label ID="critSlash" runat="server" Text="/" ClientIDMode="Static"></asp:Label>
                            *<asp:Label ID="CriticalLabel" runat="server" Text='<%# Bind("Critical") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 296px">
                            Weight:
                            <asp:Label ID="WeightLabel" runat="server" Text='<%# Bind("Weight") %>' />&nbsp;lbs.
                        </td>
                    </tr>
                    <tr>
                        <td colspan ="2">
                            Description:
                            <asp:Label ID="DescriptionLabel" runat="server" 
                                Text='<%# Bind("Description") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <asp:SqlDataSource ID="DnDWeaponDetailed" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DnDatabase %>" 
            SelectCommand="SELECT * FROM [Weapon] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlWeapon" Name="Name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;
        <div style="margin:auto; text-align:center;">
            <asp:Button ID="Battle" runat="server" style="text-align: center" 
                Text="Begin Battle !!" Font-Bold="True" Font-Names="Old English Text MT" 
                Font-Size="X-Large" onclick="Battle_Click"/>
        </div>
        
        <br />
        <br />
        <br />
    </form>
    
</asp:Content>
<asp:Content ContentPlaceHolderID="Stats" runat="server">
        <table class="detailedStats">
            <tr>
                <td colspan="3"><p class="statHeader">Base Stats</p></td>
            </tr>
            <tr>
                <td>Strength</td>
                <td>
                    <asp:Label ID="lblStrength" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    +<asp:Label ID="lblStrMod" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Constitution</td>
                <td>
                    <asp:Label ID="lblConst" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    +<asp:Label ID="lblConMod" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Dexterity</td>
                <td>
                    <asp:Label ID="lblDext" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    +<asp:Label ID="lblDexMod" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Intelligence</td>
                <td>
                    <asp:Label ID="lblInt" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    +<asp:Label ID="lblIntMod" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Wisdom</td>
                <td>
                    <asp:Label ID="lblWis" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    +<asp:Label ID="lblWisMod" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Charisma</td>
                <td>
                    <asp:Label ID="lblCha" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    +<asp:Label ID="lblChaMod" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3"><p class="statHeader">Saving Throws</p></td>
            </tr>
            <tr>
                <td>Fortitude</td>
                <td colspan="2">
                    <asp:Label ID="lblFort" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Reflex</td>
                <td colspan="2">
                    <asp:Label ID="lblRef" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Will</td>
                <td colspan="2">
                    <asp:Label ID="lblWill" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3"><p class="statHeader">Modifiers</p></td>
            </tr>
            <tr>
                <td>Att. Bonus</td>
                <td colspan="2">
                    +&nbsp;<asp:Label ID="lblAttack" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Armor Class</td>
                <td colspan="2">
                    <asp:Label ID="lblAC" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Total HP</td>
                <td colspan="2">
                    <asp:Label ID="lblHP" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Att. Speed</td>
                <td colspan="2">
                    <asp:Label ID="lblSpeed" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <a name="bottom"></a>
    <br />
            <script type="text/javascript">
                function setDDL() {
                    //document.getElementById("strength").value = "20";
                    var ddl = new Array();
                    ddl.push(document.getElementById("ddlDebug1"));
                    ddl.push(document.getElementById("ddlDebug2"));
                    ddl.push(document.getElementById("ddlDebug3"));
                    ddl.push(document.getElementById("ddlDebug4"));
                    ddl.push(document.getElementById("ddlDebug5"));
                    ddl.push(document.getElementById("ddlDebug6"));

                    for (x = 0; x <= 5; x++) {
                        if (ddl[x].selectedIndex != 0) {
                            for (y = 0; y <= 5; y++) {
                                ddl[y].options[(ddl[x].selectedIndex)].disabled = true;
                            }
                        }
                    }
                }
                function updateStats() {
                    //reset all to zero
                    document.getElementById("strength").value = "0";
                    document.getElementById("constitution").value = "0";
                    document.getElementById("dexterity").value = "0";
                    document.getElementById("intelligence").value = "0";
                    document.getElementById("wisdom").value = "0";
                    document.getElementById("charisma").value = "0";

                    //fill options to examine
                    var ddl = new Array();
                    ddl.push(document.getElementById("ddlDebug1"));
                    ddl.push(document.getElementById("ddlDebug2"));
                    ddl.push(document.getElementById("ddlDebug3"));
                    ddl.push(document.getElementById("ddlDebug4"));
                    ddl.push(document.getElementById("ddlDebug5"));
                    ddl.push(document.getElementById("ddlDebug6"));

                    //fill options to assign
                    var option = new Array();
                    option.push(document.getElementById("txtOption1"));
                    option.push(document.getElementById("txtOption2"));
                    option.push(document.getElementById("txtOption3"));
                    option.push(document.getElementById("txtOption4"));
                    option.push(document.getElementById("txtOption5"));
                    option.push(document.getElementById("txtOption6"));
                    //set respective options
                    for (x = 0; x <= 5; x++) {
                        if (ddl[x].selectedIndex != 0) {
                            switch (ddl[x].selectedIndex) {
                                case 1: document.getElementById("strength").value = option[x].value;
                                    break;
                                case 2: document.getElementById("constitution").value = option[x].value;
                                    break;
                                case 3: document.getElementById("dexterity").value = option[x].value;
                                    break;
                                case 4: document.getElementById("intelligence").value = option[x].value;
                                    break;
                                case 5: document.getElementById("wisdom").value = option[x].value;
                                    break;
                                case 6: document.getElementById("charisma").value = option[x].value;
                                    break;
                            }
                        }
                    }
                    if (document.getElementById("control").value != "1") {
                        document.getElementById("control").value = "1";
                        document.getElementById("btnUpdate").click();
                    }
                }
                function currentLocation() {
                    var recent = '<%= Session["recent"] %>';
                    if (recent != "top") {
                        window.location = "#" + recent + "Anchor";
                        window.scrollBy(0, -200);
                    }
                        
                }
                setDDL();
                updateStats();
        </script>
</asp:Content>
