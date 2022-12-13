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
    public partial class Adminhome : System.Web.UI.Page
    {
        Contest contest = new Contest();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            lblusr.Text= Session["usrname"].ToString();
            ImageButton1.ImageUrl = Session["photo"].ToString();
            string contest = Request.QueryString["output"];
            if (contest == "true")
            {
                Label1.Visible = true;//whether cntst added or not if added contest=true else false
            }
            if (!IsPostBack)
            {
                Grid_bind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//add contest
        {
            Response.Redirect("Addcontest.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)//grid binding with user competitions
        {


            Grid_bind();
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            int result = contest.Change_state(getid);
            if (result != 0)
            {
                Grid_bind();
            }
            else
            {
                Response.Redirect("ErrorPage.aspx");
            }


        }
        public void Grid_bind()
        {
            DataSet ds1 = new DataSet();
            ds1 = contest.ContestData(Convert.ToInt32(Session["loginid"]),true);//passing argument as the user id to get
            GridView1.DataSource = ds1;                                             //the particular contests true for where cndtn
            GridView1.DataBind();
        }
    }
}