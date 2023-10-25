<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPictures.aspx.cs" Inherits="PictureApp.MyPictures" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Footballer Showcase</title>
    <style>
        body {
            background-color: #cbcdcb
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container py-3">
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="LabelPicture" runat="server" Text="Footballer"></asp:Label>
                    <asp:DropDownList ID="ListPicture" runat="server" OnSelectedIndexChanged="ListPicture_SelectedIndexChanged" AutoPostBack="True" CssClass="form-control">
                        <asp:ListItem Selected="True">Select a name</asp:ListItem>
                        <asp:ListItem>Ronaldo</asp:ListItem>
                        <asp:ListItem>Messi</asp:ListItem>
                        <asp:ListItem>Neymar</asp:ListItem>
                        <asp:ListItem>Muslera</asp:ListItem>
                        <asp:ListItem>Icardi</asp:ListItem>
                        <asp:ListItem>Sneijder</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CheckBox ID="CheckBorder" runat="server" Text="&nbsp; Add border to the picture" Visible="False" AutoPostBack="True" OnCheckedChanged="CheckBorder_CheckedChanged" />
                    <asp:RadioButtonList ID="RadioColor" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioColor_SelectedIndexChanged" Visible="False">
                        <asp:ListItem Selected="True" Value="red">&nbsp; Red</asp:ListItem>
                        <asp:ListItem Value="yellow">&nbsp; Yellow</asp:ListItem>
                        <asp:ListItem Value="blue">&nbsp; Blue</asp:ListItem>
                        <asp:ListItem Value="aqua">&nbsp; Aqua</asp:ListItem>
                        <asp:ListItem Value="green">&nbsp; Green</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:DropDownList ID="ListPixel" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListPixel_SelectedIndexChanged" Visible="False" CssClass="form-control">
                        <asp:ListItem Value="1" Selected="True">1 pixel</asp:ListItem>
                        <asp:ListItem Value="2">2 pixel</asp:ListItem>
                        <asp:ListItem Value="3">3 pixel</asp:ListItem>
                        <asp:ListItem Value="4">4 pixel</asp:ListItem>
                        <asp:ListItem Value="5">5 pixel</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-8">
                    <div class="row text-center">
                        <div class="col-12">
                            <asp:Image ID="ImgMain" runat="server" Height="480px" Visible="False" Width="640px" />
                        </div>
                        <div class="col-12">
                            <asp:Label ID="LabelDesc" CssClass="text-primary" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
