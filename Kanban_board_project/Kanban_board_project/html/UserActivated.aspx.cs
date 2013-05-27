using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kanban_board_project.html;

namespace Kanban_board_project.html
{
    public partial class UserActivated : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            management mg = new management();

            String user = Request.Params["activation"].ToString();

            if (mg.EstoyActivado(user) == 0)
            {
                Session["User"] = user;
                mg.ActivarUsuario(user);
                this.Label2.Text = "Activación Completa";
                this.Label1.Text = "Usted ha activado su suscripción exitosamente. Ahora puede comenzar a trabajar en sus proyectos de una manera mas organizada para asegurar la finalización del mismo en el tiempo que usted estipuló.";
            }
            else
            {
                this.Label2.Text = "Procedimiento ya realizado";
                this.Label1.Text = "Su suscripcion ya fue activado. No es necesario volverlo a activar.";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Session["User"] != null)
                Response.Redirect("Dashboard.aspx");
            else
                Response.Redirect("index.aspx");
        }
    }
}