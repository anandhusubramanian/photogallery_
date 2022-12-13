using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;

namespace Minimalist
{
    public partial class Userprofile : System.Web.UI.Page
    {
        
        Update update = new Update();
        Contest contest = new Contest();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                bindDatalist();
                Profilebind();
                Label13.Visible = false;
                TextBox1.Visible = false;
                Labelph.Visible = false;
            }
         
        }
        public void Profilebind()//binding the profile with updated details
        {

            List<string> ls1 = new List<string>();
            ls1 = update.UpdateSession(Convert.ToInt32(Session["loginid"]));
            Session["usrname"] = ls1[0];
            Session["emailid"] = ls1[1];
            Session["photo"] = ls1[2];

                lblusr.Text = Session["usrname"].ToString();//signup label
                Label2.Text = Session["usrname"].ToString();//profile label
                ImageButton1.ImageUrl = Session["photo"].ToString();//image from db
                lblnm.Text = Session["usrname"].ToString();
                lblemail.Text = Session["emailid"].ToString();
            ImageButton2.ImageUrl= Session["photo"].ToString();

        }

        public void bindDatalist()
        {
            int rowMin = contest.getMin();
            int rowMax = contest.getMax();
            Session["max"] = rowMax;
            Session["min"] = rowMin;
            DataSet ds1= contest.CurrentDetails(rowMin);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
        }
           
          

        protected void Button3_Click(object sender, EventArgs e)//changing contest button
        {
            Labelph.Visible = false;
            int i = 0;
            Session["min"] = Convert.ToInt32(Session["min"]) + 1;//getting minimu
            int minRow = Convert.ToInt32(Session["min"]);
            int maxRow = Convert.ToInt32(Session["max"]);
            while(i<1 && minRow <= maxRow)
            {
               DataSet ds2 = contest.CurrentDetails(minRow);
               DataList1.DataSource = ds2;
               DataList1.DataBind();
               i++;
            }
            if (minRow == maxRow)
            {
                Session["min"]= contest.getMin();//resetting the session minimum
            }
        }

        protected void Button2_Click(object sender, EventArgs e)//update username
        {
            Labelph.Visible = false;
            Label13.Visible = false;
            TextBox1.Visible = true;
            ViewState["identity"] = 1;
        }

        protected void Button1_Click(object sender, EventArgs e)//update email id
        {
            Labelph.Visible = false;
            Label13.Visible = false;
            TextBox1.Visible = true;
            ViewState["identity"] = 2;
        }

        protected void Button4_Click(object sender, EventArgs e)//update profile button
        {
            Labelph.Visible = false;
            int Identity = Convert.ToInt32(ViewState["identity"]);//which button is clicked update email or uname
            bool res = update.ChUname(TextBox1.Text, Identity, Convert.ToInt32(Session["loginid"]));
            if (res)
            {
                Label13.Visible = true;
                TextBox1.Visible = false;
            }
            else
            {
                Response.Redirect("ErrorPage.aspx");
            }
            Profilebind();
        }

        protected void Button5_Click(object sender, EventArgs e)//updating image
        {
            if (FileUpload1.HasFiles)
            { 
                string photo = "~/PIC/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(photo));
                int result = update.Photoupdate(photo, Convert.ToInt32(Session["loginid"]));
                if (result != 0)
                {
                    Label13.Visible = true;
                }
                else
                {
                    Response.Redirect("ErrorPage.aspx");
                }
                Profilebind();
            }
            else
            {
                Label13.Text = "no file detected";
                Label13.Visible = true;
            }
            
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)//uploading a photo in contest
        {
            if (!FileUpload2.HasFile)
            {
                Labelph.Visible = true;
            }
            else
            {
                int getid = Convert.ToInt32(e.CommandArgument);

            }
        }
    }
}