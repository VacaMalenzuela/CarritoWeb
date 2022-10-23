<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="CarritoWeb.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--lista de articulos elegidos--%>
     <div class="mb-3">
        <label for="txtTotal" class="form-label">Total</label>
    </div>
    <div class="input-group mb-3">
        <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control" placeholder="0" aria-label="Amount (to the nearest dollar)"> </asp:TextBox>
        <span class="input-group-text">.00</span>
    </div>
    <div class="row">
        <div class="col-auto">
            <asp:Button ID="btnSeguir" class="btn btn-primary mb-3" runat="server" Text="Seguir comprando" OnClick="btnSeguir_Click" />
        </div>
        <div class="col-auto">
            <asp:Button ID="btnFinalizar" class="btn btn-primary mb-3" runat="server" Text="Finalizar compra" OnClick="btnFinalizar_Click" />
        </div>
    </div>
    <div class="row">
        <div class="col-auto">
            <a runat="server" href="~/Inicio.aspx">Seguir comprando</a>
        <div class="col-auto">
            <a runat="server" href="~/Inicio.aspx">Finalizar compra</a>
        </div>
    </div>

</asp:Content>
