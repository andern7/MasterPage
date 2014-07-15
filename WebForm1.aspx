<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebsiteWithMasterPage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Please enter your contact information in the boxes below. </h1>
    <div id="NameEntry">
        
        <asp:GridView ID="GridView1" 
            runat="server" 
            AutoGenerateColumns="False" 
            BackColor="White" 
            BorderColor="White" 
            BorderStyle="Ridge" 
            BorderWidth="2px" 
            CellPadding="5" 
            CellSpacing="5" 
            DataKeyNames="ID" 
            DataSourceID="SqlDataSource1" 
            GridLines="None" 
            ShowFooter="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                   <FooterTemplate>
                    <asp:LinkButton ValidationGroup="INSERT" ID="LinkButton1" OnClick="lbInsert_Click" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="FIRSTNAME" SortExpression="FIRSTNAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FIRSTNAME") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="EDIT" ID="rfvEditFName" runat="server" ErrorMessage="Enter first name." ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>

                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("FIRSTNAME") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertFName" runat="server" ErrorMessage="Enter first name." ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LASTNAME" SortExpression="LASTNAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LASTNAME") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="EDIT" ID="rfvEditLName" runat="server" ErrorMessage="Enter last name." ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("LASTNAME") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertLastName" runat="server" ErrorMessage="Enter last name." ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <asp:ValidationSummary ValidationGroup="EDIT" ID="ValidationSummary2" runat="server" ForeColor="Red" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UsersConnectionString %>" DeleteCommand="DELETE FROM [tblContacts] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblContacts] ([FIRSTNAME], [LASTNAME]) VALUES (@FIRSTNAME, @LASTNAME)" SelectCommand="SELECT * FROM [tblContacts]" UpdateCommand="UPDATE [tblContacts] SET [FIRSTNAME] = @FIRSTNAME, [LASTNAME] = @LASTNAME WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FIRSTNAME" Type="String" />
                <asp:Parameter Name="LASTNAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FIRSTNAME" Type="String" />
                <asp:Parameter Name="LASTNAME" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    
</asp:Content>
