using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Kanban_board_project;

namespace Kanban_board_project.html
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
                Response.Redirect("Dashboard.aspx");

            if (Session["LblUser"] != null)
            {
                this.LblUser.Text = Session["LblUser"].ToString();
                Session["LblUser"] = null;
            }

            if (Session["TxtUser"] != null)
            {
                user.Value = Session["TxtUser"].ToString();
                Session["TxtUser"] = null;
            }

            if (Session["LblPass"] != null)
            {
                this.LblPass.Text = Session["LblPass"].ToString();
                Session["LblPass"] = null;
            }

            if (Session["LblError"] != null)
            {
                this.LblError.Text = Session["LblError"].ToString();
                Session["LblError"] = null;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userText = string.Format("{0}", Request.Form["user"]);
            string passText = string.Format("{0}", Request.Form["pass"]);

            Kanban_board_project.management mm = new management();
            management mg = new management();

            if (mg.yaExiste(userText, passText))
            {
                if (mg.EstoyActivado(userText) == 1)
                {
                    Session["user"] = userText;
                    Session["userid"] = mg.getid(userText);
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Session["LblError"] = "Todavía no ha activado su cuenta. Para realizar su activación, ingrese a su cuenta de correo con la que registro su suscripción, y allí verá un mensaje de correo de nuestro sitio con el link de activación.";
                    Response.Redirect("index.aspx");
                }
            }
            else
            {
                if (!mg.yaExisteUser(userText))
                    Session["LblUser"] = " Usuario no existe";
                else
                {
                    Session["TxtUser"] = userText;
                    Session["LblPass"] = " Contraseña Incorrecta";
                }

                Response.Redirect("index.aspx");
            }
        }
    }
}