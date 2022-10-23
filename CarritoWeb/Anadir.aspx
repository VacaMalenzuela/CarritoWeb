<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Anadir.aspx.cs" Inherits="CarritoWeb.Anadir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-center">
        <div class="row">
            <div class="col-auto">
                <label for="txtNombre" class="form-label">Articulo</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-auto">
                <label for="txtPrecio" class="form-label">Precio</label>
                <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control"> </asp:TextBox>
            </div>
        </div>
    </div>
    <h/r> </h>
    <div class="row">
        <div class="col-auto">
            <label for="staticCantidad" class="visually-hidden">Cantidad</label>
            <input type="text" readonly class="form-control" id="staticCantidad" value="Cantidad">
        </div>
        <div class="col-auto">
            <label for="inputPassword2" class="visually-hidden">Password</label>
            <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
        </div>
    </div>
    <div class =" row">
        <div class ="col-auto">
            <asp:Button ID="btnAnadir" class="btn btn-primary mb-3" runat="server" Text="Añadir al carrito" />
        </div>
        <div class="col-auto">
            <asp:Button ID="btnVolver" class="btn btn-primary mb-3" runat="server" Text="Volver al inicio" />
        </div>
    </div>

</asp:Content>
