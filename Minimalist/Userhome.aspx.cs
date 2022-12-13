using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace Minimalist
{
   
    public partial class Userhome : System.Web.UI.Page
    {
        Contest contest = new Contest();
        Participate participate = new Participate();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblusr.Text = Session["usrname"].ToString();
            ImageButton1.ImageUrl = Session["photo"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            DataSet ds = new DataSet();
            ds =contest.ContestData(0, false);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            
        }

        protected void lnk_participate_Command(object sender, CommandEventArgs e)
        {            
            int cid = Convert.ToInt32(e.CommandArgument);
            bool retstat=participate.Adduser(cid, Convert.ToInt32(Session["loginid"]));
            if (retstat)
            {
                Response.Write("<script>alert('You are Now a participant..you can add entries now')</script>");
             
            }
            else
            {
                Response.Write("<script>alert('You are already a participant...!')</script>");
          
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userprofile.aspx");
        }
    }
}