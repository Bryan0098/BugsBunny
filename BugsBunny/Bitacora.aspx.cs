using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BugsBunny
{
    public partial class Bitacora : System.Web.UI.Page
    {
        static string cadenaConexion = ConfigurationManager.ConnectionStrings["bb_bugsbunny"].ConnectionString;
        SqlConnection conexion = new SqlConnection(cadenaConexion);

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Page.Response.Write("<script>console.log('" + cadenaConexion + "');</script>");
                consultar();
            }
            catch (Exception ex)
            {
                Page.Response.Write("<script>console.log('" + ex.Message + "');</script>");
            }
        }
        public void consultar()
        {
            var data = new SqlDataAdapter("SELECT * FROM bitacoras", this.conexion);
            var datos = new DataSet();
            data.Fill(datos);
            this.conejostb.DataSource = datos.Tables[0];
            this.conejostb.DataBind();
        }

        public bool InsertaBitacora(string nombre, DateTime nacimiento, string peso, string comportamiento, string observaciones)
        {
            try
            {
                // Crear un comando para ejecutar el procedimiento almacenado 
                SqlCommand comanddoInsercion = new SqlCommand("sp_registro_bitacoras", this.conexion);
                comanddoInsercion.CommandType = System.Data.CommandType.StoredProcedure;
                // Pasar los parámetros 
                comanddoInsercion.Parameters.AddWithValue("@nombres", nombre);
                comanddoInsercion.Parameters.AddWithValue("@fechas", nacimiento);
                comanddoInsercion.Parameters.AddWithValue("@pesos", peso);
                comanddoInsercion.Parameters.AddWithValue("@comportamientos", comportamiento);
                comanddoInsercion.Parameters.AddWithValue("@observaciones", observaciones);
                this.conexion.Open();
                comanddoInsercion.ExecuteNonQuery();
                Page.Response.Write("<script>console.log('" + "Conejo registrado" + "');</script>");
                this.conexion.Close();
                consultar();
                return true;
            }
            catch (Exception ex)
            {
                Page.Response.Write("<script>console.log('" + ex.Message + "');</script>");
                return false;
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string name = nombre.Text;
            string dateString = fecha_nacimiento.Text;
            string kg = peso.Text;
            string comporta = comportamiento.Text;
            string observa = observaciones.Text;
            DateTime date;

            if (DateTime.TryParse(dateString, out date))
            {
                Page.Response.Write("<script>console.log('" + "Cumplió" + "');</script>");
                this.InsertaBitacora(name, date, kg, comporta, observa);
            }
            else
            {
                Page.Response.Write("<script>console.log('" + "No cumplió" + "');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string name = nombre.Text;
                string dateString = fecha_nacimiento.Text;
                string kg = peso.Text;
                string comporta = comportamiento.Text;
                string observa = observaciones.Text;
                DateTime date;

                if (DateTime.TryParse(dateString, out date))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Registrando conejo:\nNombre: {name}');", true);
                    SqlCommand comanddoInsercion = new SqlCommand("sp_registro_bitacoras", this.conexion);
                    comanddoInsercion.CommandType = System.Data.CommandType.StoredProcedure;
                    comanddoInsercion.Parameters.AddWithValue("@nombres", name);
                    comanddoInsercion.Parameters.AddWithValue("@fechas", date);
                    comanddoInsercion.Parameters.AddWithValue("@pesos", kg);
                    comanddoInsercion.Parameters.AddWithValue("@comportamientos", comporta);
                    comanddoInsercion.Parameters.AddWithValue("@observaciones", observa);
                    this.conexion.Open();
                    comanddoInsercion.ExecuteNonQuery();
                    Page.Response.Write("<script>console.log('" + "Conejo registrado" + "');</script>");
                    this.conexion.Close();
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Fecha de nacimiento inválida.');", true);
                }
            }
            catch (Exception ex)
            {
                Page.Response.Write("<script>console.log('" + ex.Message + "');</script>");
            }
        }
    }
}