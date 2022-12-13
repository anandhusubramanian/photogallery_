using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Minimalist
{
    public partial class Login1 : System.Web.UI.Page
    {
        LoginCl lg = new LoginCl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                password.TextMode = TextBoxMode.SingleLine;
            }
            else if (!CheckBox1.Checked)
            {
                password.TextMode = TextBoxMode.Password;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<string> ls = new List<string>();
            ls = lg.loginCheck(name.Text, password.Text);
                if (ls.Count() == 4)
                {
                    Session["loginid"] = ls[0];//userid in login table
                    Session["usrname"] = ls[1];
                    Session["usertype"] = ls[2];
                    Session["emailid"] = ls[3];
                if (Session["usertype"].ToString()=="False")//getting photo
                {
                    string photo = lg.Getphoto(Convert.ToInt32(Session["loginid"]),false);
                    Session["photo"] = photo;
                }
                else if (Session["usertype"].ToString() == "True")
                {
                    string photo = lg.Getphoto(Convert.ToInt32(Session["loginid"]), true);
                    Session["photo"] = photo;
                }


               
                if (Session["usertype"].ToString()=="False")//reddirecting to pages
                        {
                            Response.Redirect("Userhome.aspx");
                        }
                    else
                        {
                   
                            Response.Redirect("Adminhome.aspx?output=" + "false"); //reditect to admin home with a query string
                                                                                    //specify that redirect is not due to contest added its
                                                                                    //due to logging in
                        }
                
               
                 }
                else
                {
                    Label1.Text = "Invalid Creadentials";
                }
           
        }
    }
}