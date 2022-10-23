<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Anadir.aspx.cs" Inherits="CarritoWeb.Anadir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
            <%--<div class="col-auto">
                <label for="txtNombre" class="form-label">Articulo</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-auto">
                <label for="txtPrecio" class="form-label">Precio</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>--%>
        <form class="row g-3">
            <div class="row">
                <div class="col-auto">
                    <label for="txtNombre" class="form-label">Articulo</label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-auto">
                    <label for="txtPrecio" class="form-label">Precio</label>
                    <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
