using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugsBunny
{
    public partial class Bitacora : System.Web.UI.Page
    {
        //Definicion de atributos
        string cadenaConexion = "";
        SqlConnection conexion;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Abrir la conexcion a la base de datos
            this.cadenaConexion = ConfigurationManager.ConnectionStrings["bb_bugsbunny"].ConnectionString;
            this.conexion = new SqlConnection(cadenaConexion);
        }
        public bool inserta_bitacora(string nombre, DateTime nacimiento, string peso, string comportamiento, string observaciones)
        {
            // Validar la fecha de nacimiento
            if (nacimiento == DateTime.MinValue || nacimiento > DateTime.Now)
            {
                // La fecha de nacimiento no es válida (puede ser DateTime.MinValue o una fecha futura)
                return false;
            }
            // Crear un comando para ejecutar el procedimiento almacenado 
            SqlCommand comanddoInsercion = new SqlCommand("sp_registro_bitacoras", this.conexion);
            //Comando para ejecutar el en sqlserver
            comanddoInsercion.CommandType = System.Data.CommandType.StoredProcedure;
            // Pasar los parametros 
            comanddoInsercion.Parameters.AddWithValue("@nombres", nombre);
            comanddoInsercion.Parameters.AddWithValue("@fechas", nacimiento);
            comanddoInsercion.Parameters.AddWithValue("@pesos", peso);
            comanddoInsercion.Parameters.AddWithValue("@comportamientos", comportamiento);
            comanddoInsercion.Parameters.AddWithValue("@observaciones", observaciones);
            try
            {
                this.conexion.Open();
                comanddoInsercion.ExecuteNonQuery();
                this.conexion.Close();
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }


            return false;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string name = nombre.Text;
            string dateString = fecha_nacimiento.Text;
            string kg = peso.Text;
            string comporta = comportamiento.Text;
            string observa = observaciones.Text;

            DateTime date;

            // Define el formato exacto en el que esperas que la fecha sea ingresada
            string[] formats = { "yyyy-MM-dd", "yyyy/MM/dd", "dd-MM-yyyy", "dd/MM/yyyy" };

            // Intenta convertir dateString a DateTime usando los formatos definidos
            if (DateTime.TryParseExact(dateString, formats, System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out date))
            {
                // La fecha se convirtió correctamente
                this.inserta_bitacora(name, date, kg, comporta, observa);
            }
            else
            {
            }
        }

    }
}