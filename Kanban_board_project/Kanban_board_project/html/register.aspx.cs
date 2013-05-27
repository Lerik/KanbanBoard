using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kanban_board_project;

namespace Kanban_board_project.html
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
                Response.Redirect("Dashboard.aspx");

            if (Session["LblErrorMessage"] != null)
            {
                this.LblErrorMessage.Text = Session["LblErrorMessage"].ToString();
                Session["LblErrorMessage"] = null;
            }

            if (Session["LblEmail"] != null)
            {
                this.LblEmail.Text = Session["LblEmail"].ToString();
                Session["LblEmail"] = null;
            }

            if (Session["LblUser"] != null)
            {
                this.LblUser.Text = Session["LblUser"].ToString();
                Session["LblUser"] = null;
            }

            if (Session["LblImage"] != null)
            {
                this.LblImage.Text = Session["LblImage"].ToString();
                Session["LblImage"] = null;
            }

            if (Session["Name"] != null)
            {
                this.name.Value = Session["Name"].ToString();
                Session["Name"] = null;
            }

            if (Session["Email"] != null)
            {
                this.email.Value = Session["Email"].ToString();
                Session["Email"] = null;
            }

            if (Session["User"] != null)
            {
                this.user.Value = Session["User"].ToString();
                Session["User"] = null;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (code.Value.CompareTo(Session["CaptchaImageText"].ToString()) != 0)
            {
                Session["LblImage"] = " Código incorrecto";
                Session["Name"] = string.Format("{0}", Request.Form["name"]);
                Session["Email"] = string.Format("{0}", Request.Form["email"]);
                Session["User"] = string.Format("{0}", Request.Form["user"]);
                Response.Redirect("register.aspx");
                return;
            }

            management mg = new management();

            string userText = string.Format("{0}", Request.Form["user"]);
            string passText = string.Format("{0}", Request.Form["pass"]);
            string emailText = string.Format("{0}", Request.Form["email"]);

            Int32 Validation = mg.emailIsValid(emailText);

            if (Validation != 0)
            {
                Session["Name"] = string.Format("{0}", Request.Form["name"]);
                Session["Email"] = string.Format("{0}", Request.Form["email"]);
                Session["User"] = string.Format("{0}", Request.Form["user"]);

                if (Validation == 1)
                    Session["LblEmail"] = " Sintaxis de correo errónea";

                if (Validation == 2)
                    Session["LblEmail"] = " Dominio no encontrado";

                if (Validation == 3)
                    Session["LblEmail"] = " Correo Electrónico no disponible";

                Response.Redirect("register.aspx");
                return;
            }

            if (mg.correoRegistrado(emailText))
            {
                Session["LblEmail"] = " Este correo ya esta en uso";
                Session["Name"] = string.Format("{0}", Request.Form["name"]);
                Session["Email"] = string.Format("{0}", Request.Form["email"]);
                Session["User"] = string.Format("{0}", Request.Form["user"]);
                Response.Redirect("register.aspx");
                return;
            }

            if (mg.yaExisteUser(userText))
            {
                Session["LblUser"] = " Username no disponible";
                Session["Name"] = string.Format("{0}", Request.Form["name"]);
                Session["Email"] = string.Format("{0}", Request.Form["email"]);
                Session["User"] = string.Format("{0}", Request.Form["user"]);
                Response.Redirect("register.aspx");
                return;
            }
            else
            {
                string nameText = string.Format("{0}", Request.Form["name"]);
                string profText = DropDownList1.SelectedValue;
                mg.insertingRecord(nameText, profText, emailText, userText, passText);
                mg.sendActivationMessage(emailText, nameText, profText, userText, "jj.cob@unitec.edu", "ramirezcruz2013");
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}