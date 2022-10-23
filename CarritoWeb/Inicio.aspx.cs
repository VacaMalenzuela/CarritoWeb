using System;
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
            ArticuloNegocio Negocio = new ArticuloNegocio();
            dgvArticulos.DataSource = Negocio.listar();
            dgvArticulos.DataBind();

           
        }
    }
}