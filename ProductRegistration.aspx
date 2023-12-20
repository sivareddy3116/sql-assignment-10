<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="WebAppAssignment10.ProductRegistration" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Registration</title>
    <style type="text/css">
        .auto-style {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Product Registration</h2>
            <asp:Label ID="LblMessage" runat="server" ForeColor="Green" Text=""></asp:Label>
            <table>
                <tr>
                    <td class="auto-style2">Product Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtProductName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtProductName" Text="*" ForeColor="Red" ErrorMessage="Product Name is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Category:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DdlCategory" runat="server">
                            <asp:ListItem Text="-- Select Category --" Value="" />
                            <asp:ListItem Text="Electronics" Value="Electronics" />
                            <asp:ListItem Text="Clothing" Value="Clothing" />
                         
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DdlCategory" Text="*" ForeColor="Red" ErrorMessage="Category is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Price:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPrice" Text="*" ForeColor="Red" ErrorMessage="Price is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtPrice" Text="*" ForeColor="Red" ErrorMessage="Invalid Price" ValidationExpression="\d+(\.\d{1,2})?"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Description:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDescription" Text="*" ForeColor="Red" ErrorMessage="Description is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Release Date:</td>
                    <td class="auto-style3">
                        <asp:Calendar ID="CalReleaseDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px"
                            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="White" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CalReleaseDate" Text="*" ForeColor="Red" ErrorMessage="Release Date is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="BtnRegister" runat="server" Text="Register Product" OnClick="BtnRegister_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
