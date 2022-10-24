using Modelo;
using Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using System.Security.Cryptography;

namespace CarritoWeb
{
    public partial class Anadir : Page
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
/
                //txtSubtotal.Text = seleccionado.Precio.ToString();
                //txtSubtotal.ReadOnly = true;
            }
        }

        protected void btnAnadir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx", true);
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
            decimal precio = Convert.ToDecimal(txtPrecio.TextMode);
            decimal cantidad = Convert.ToDecimal(txtCantidad.TextMode);
            decimal subtotal = precio * cantidad;
            txtSubtotal.Text = subtotal.ToString();
            txtSubtotal.ReadOnly = true;
        }

        protected void txtCantidad_TextChanged1(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}