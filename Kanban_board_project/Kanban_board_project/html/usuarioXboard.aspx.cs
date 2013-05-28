using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Kanban_board_project.html
{
    public partial class usuarioXboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Session["userid"] = null;
                Response.Redirect("index.aspx");
                return;
            }

            if (Session["LblErrorVewer"] != null)
            {
                this.LblErrorViewer.Text = Session["LblErrorVewer"].ToString();
                Session["LblErrorVewer"] = null;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            management mg = new management();

            if (mg.yaExisteUser(this.txtnombre.Text))
            {
                if (mg.EstoyActivado(this.txtnombre.Text) == 0)
                {
                    Session["LblErrorVewer"] = "El usuario aparece registrado en el sistema, pero no se encuentra activado. Ingrese otro usuario por los momentos.";
                    return;
                }
            }
            else
            {
                Session["LblErrorVewer"] = "El usuario que ingreso no se encuentra en nuestra base de datos.";
                return;
            }
            
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Kanban"].ConnectionString;
                SqlConnection conexion = new SqlConnection(connectionString);
                conexion.Open();
                string query = "insert into [Kanban].[dbo].[USUARIOSxBOARD] ([IDUSUARIO],[IDBOARD],[ROLE]) values(@IDUSUARIO,@IDBOARD,@ROLE)";
                 SqlCommand cmd = new SqlCommand(query, conexion);

                 string query3 = "select IDUSUARIO from [Kanban].[dbo].[USUARIOS] where correo like '" + this.txtnombre.Text + "' or usuariolike '" + this.txtnombre.Text + "'";
                SqlCommand cmd3 = new SqlCommand(query3, conexion);
                int idusuario = (int)cmd3.ExecuteScalar();

                cmd.Parameters.AddWithValue("@IDUSUARIO", idusuario);
                cmd.Parameters.AddWithValue("@IDBOARD", Session["boardid"]);
                cmd.Parameters.AddWithValue("@ROLE", 1);
                cmd.ExecuteNonQuery();
                conexion.Close();
                this.txtnombre.Text =" ";
                this.ListView1.DataBind();
            }
            catch (Exception ex)
            {
                
                MessageBoxShow(this,"usuario no registrado.");
            }
        }

        private void MessageBoxShow(Page page, string message)
        {
            Literal ltr = new Literal();
            ltr.Text = @"<script type='text/javascript'> alert('" + message + "') </script>";
            page.Controls.Add(ltr);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}