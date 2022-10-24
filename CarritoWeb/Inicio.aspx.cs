﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Controlador;

namespace CarritoWeb
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["lista"] == null)
            {
                ArticuloNegocio Negocio = new ArticuloNegocio();
                Session.Add("lista", Negocio.listar());
            }

            dgvArticulos.DataSource = Session["lista"];
            dgvArticulos.DataBind();

           
        }

        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvArticulos.SelectedDataKey.Value.ToString();
            Response.Redirect("Anadir.aspx?id=" + id);
        }

        protected void dgvCarrito_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}