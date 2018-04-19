<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        height: 24px;
    }
    .auto-style5 {
        height: 24px;
        width: 124px;
    }
    .auto-style6 {
        width: 124px;
    }
    .auto-style7 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dlProduct" runat="server" RepeatColumns="1">
    <ItemTemplate>
        <table class="auto-style7">
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# "Images/"+Eval("IMAGE") %>' Width="250px" />
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style6">Name:</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Price:</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Description:</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Button ID="btnAddToCart" runat="server" OnClick="btnAddToCart_Click" Text="Add to Cart" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

