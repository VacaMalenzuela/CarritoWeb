<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CarritoWeb.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center">
        <div class="row">
            <div class="col-4">
                <div class="input-group mb-3">
                    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Buscar por categoria</button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Celulares</a></li>
                        <li><a class="dropdown-item" href="#">Televisores</a></li>
                        <li><a class="dropdown-item" href="#">Computadoras</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Separated link</a></li>
                    </ul>
                    <input type="text" class="form-control" aria-label="Text input with dropdown button">
                </div>
            </div>
            <div class="col-8">
                Column
            </div>
        </div>
    </div>

</asp:Content>

