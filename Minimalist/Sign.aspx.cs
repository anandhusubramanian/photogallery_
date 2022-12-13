using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Minimalist
{
    public partial class Login : System.Web.UI.Page
    {
        Register register = new Register();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (CheckBox2.Checked)
            {
                password.TextMode = TextBoxMode.SingleLine;
                cpassword.TextMode = TextBoxMode.SingleLine;
            }
            else if (!CheckBox2.Checked)
            {
                password.TextMode = TextBoxMode.Password;
                cpassword.TextMode = TextBoxMode.Password;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool admin;
            string photo = "~/PIC/download.png";

            if (CheckBox1.Checked)//checking and setting admin flag
            {
                admin = true;
            }
            else { admin = false; }

            int sgnResult = register.dbInsert(name.Text, email.Text, photo, password.Text, admin);

            if (sgnResult == 1)
            {
                Response.Redirect("Login1.aspx");
            }
            else
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}