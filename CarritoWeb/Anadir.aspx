<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Anadir.aspx.cs" Inherits="CarritoWeb.Anadir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mb-3">
        <label for="txtNombre" class="form-label">Articulo</label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="mb-3">
        <label for="txtPrecio" class="form-label">Precio</label>
    </div>
    <div class="input-group mb-3">
        <%--<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">--%>
        <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control" placeholder="0" aria-label="Amount (to the nearest dollar)"> </asp:TextBox>
        <span class="input-group-text">.00</span>
    </div>

    <div class="mb-3">
        <label for="txtCantidad" class="form-label">Cantidad</label>
    </div>
    <div class="input-group mb-3">
        <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control" placeholder="1"></asp:TextBox>
        <asp:Button ID="btnCantidad" class="btn btn-outline-secondary" runat="server" Text="+" OnClick="btnCantidad_Click" />
    </div>

    <div class="mb-3">
        <label for="txtSubtotal" class="form-label">Subtotal</label>
        <asp:TextBox ID="txtSubtotal" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    <div class=" row">
        <div class="col-auto">
            <asp:Button ID="btnAnadir" class="btn btn-primary mb-3" runat="server" Text="Añadir al carrito" OnClick="btnAnadir_Click" />
        </div>
        <div class="col-auto">
            <asp:Button ID="btnVolver" class="btn btn-primary mb-3" runat="server" Text="Volver al inicio" OnClick="btnVolver_Click" />
        </div>
    </div>
    <div class="col-auto">
            <a runat="server" href="~/Carrito.aspx">Carrito</a>
        </div>

</asp:Content>
