<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="CarritoWeb.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-center">
        <div class="row">
            <div class="col-3">
                <%--<div class="dropdown">--%>
                    <%--<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Buscar por categoría
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>--%>
                    <%--<p class="fw-semibold">Carrito</p>
                    <asp:GridView ID="dgvCarrito" runat="server" OnSelectedIndexChanged="dgvCarrito_SelectedIndexChanged" CssClass="alert-dark" >
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                        <asp:BoundField HeaderText="Precio" DataField="Precio" />
                        <asp:ImageField HeaderText="Imagen" DataImageUrlField="ImagenUrl" ControlStyle-Width="20%" />
                        <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />
                    </asp:GridView>
                </div>--%>
            </div>
            <div class="col-9">
                <asp:GridView ID="dgvArticulos" runat="server" DataKeyNames="Id" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged" CssClass="table table-bordered table-light" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                        <asp:BoundField HeaderText="Precio" DataField="Precio" />
                        <asp:ImageField HeaderText="Imagen" DataImageUrlField="ImagenUrl" ControlStyle-Width="20%" />
                        <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
