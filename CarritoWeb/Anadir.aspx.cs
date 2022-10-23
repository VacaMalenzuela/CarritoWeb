using Modelo;
using Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;

namespace CarritoWeb
{
    public partial class Anadir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                List<Articulo> temporal = (List<Articulo>)Session["Lista"];
                Articulo seleccionado = temporal.Find(x => x.Id == id);
                txtNombre.Text = seleccionado.Nombre;
                txtPrecio.Text = seleccionado.Precio.ToString();
                txtNombre.ReadOnly = true;
                txtPrecio.ReadOnly = true;
                //decimal precio = decimal.Parse(txtPrecio.Text);
                //int cantidad = 1;
                //txtCantidad.Text = cantidad.ToString();
                //txtCantidad.ReadOnly = true;
                txtSubtotal.Text = seleccionado.Precio.ToString();
                txtSubtotal.ReadOnly = true;
            }
        }

        protected void btnAnadir_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx", true);
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        protected void btnCantidad_Click(object sender, EventArgs e)
        {
            
            int cantidad = int.Parse(txtCantidad.Text) + 1;
            txtCantidad.Text = cantidad.ToString();
            Response.Redirect("Inicio.aspx");
        }
    }
}