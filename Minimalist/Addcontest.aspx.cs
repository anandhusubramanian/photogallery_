using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Minimalist    
{
    public partial class Addcontest : System.Web.UI.Page
    {
        Contest contest = new Contest();
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageButton1.ImageUrl = Session["photo"].ToString();
            lblusr.Text = Session["usrname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string photo = "~/PIC/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(photo));
            bool result =contest.DbContest_add(Session["loginid"].ToString(), txt_cont_name.Text, txt_description.Text, txt_duration.Text,photo);
            if (result)
            {
                Response.Redirect("Adminhome.aspx?output="+"true");//setting wuerystrig for identify
            }                                                       //about the contest added or not 
            else
            {                                                       //ALSO   in the redirecting page of login 
                Response.Redirect("ErrorPage.aspx");                    //ther query string=false
            }
        
        }
    }
}