using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL;


namespace BLL
{
    public class Update
    {
        Connection con = new Connection();
       public bool ChUname(string name,int st,int id)//username updating on both tables
       {
            bool ret = false ;
            if (st==1)//unmae
            {
                string qry = "UPDATE UserTable SET name='" + name + "' WHERE usrid="+id+ "";
                string qry1= "UPDATE LoginTable1 SET username='" + name + "' WHERE usrid=" + id + "";
                int status = con.exe_NonQuery(qry);
                int status1 = con.exe_NonQuery(qry1);
                if (status != 0 && status1!=0)
                {
                    ret=true;
                }
                else
                {
                    ret=false;
                }
            }
            else if(st==2)//email
            {
                string qry= "UPDATE UserTable SET email='" + name + "' WHERE usrid=" + id + "";
                int status = con.exe_NonQuery(qry);
                if (status != 0)
                {
                    ret = true;
                }
                else
                {
                    ret= false;
                }
            }
            return ret;
        }


        public List<string> UpdateSession(int uid)//getting all the updated info for binding to page
        {
            string qry = "SELECT name,email,photo FROM UserTable WHERE usrid=" +uid+ "";
            SqlDataReader dr = con.exe_Reader(qry);
            List<string> ls = new List<string>();
            if (dr.Read())
            {
                ls.Add(dr["name"].ToString());
                ls.Add(dr["email"].ToString());
                ls.Add(dr["photo"].ToString());
            }
           
            return ls;
        }

        public int Photoupdate(string s,int id)//updateing the photo
        {
            string qry = "UPDATE UserTable SET photo='" + s + "' WHERE usrid=" + id + "";
            return con.exe_NonQuery(qry);
        }
    }
}
