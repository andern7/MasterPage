<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebsiteWithMasterPage.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <!--Bootstrap link below-->    
<!-- Latest compiled and minified CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

<!-- Optional theme -->

    <link href="Content/bootstrap.css" rel="stylesheet" />
 <!--Added my own stylesheet for the repeater -->
     <link href="Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Repeater Example</h1>
    <div style="font-family: Arial">
       <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate><div id=".header"></div>
                        <table class="table table-condensed">
                            <thead>
                                <tr class ="row">
                                    <th>ID       
                                    </th>
                                    <th>First Name        
                                    </th>
                                    <th>Last Name        
                                    </th>
                            </thead>
                            </tr>
                        </div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class="row">
                            <td>
                                <%# DataBinder.Eval(Container.DataItem, "ID") %>
                            </td>
                            <td>
                                <%# DataBinder.Eval(Container.DataItem, "FIRSTNAME") %>
                            </td>
                            <td>
                                <%# DataBinder.Eval(Container.DataItem, "LASTNAME") %>
                            </td>
                        </tr>

                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UsersConnectionString %>" SelectCommand="SELECT * FROM [tblContacts] ORDER BY [LASTNAME], [FIRSTNAME]"></asp:SqlDataSource>
               
    </div>
    <script src="Scripts/DataTables-1.10.0/jquery.dataTables.min.js"></script>
    <script src="Scripts/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    

</asp:Content>
