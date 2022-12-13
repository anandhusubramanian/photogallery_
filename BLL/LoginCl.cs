using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
using System.Data.SqlClient;


namespace BLL
{
    public class LoginCl
    {
        Connection con = new Connection();
        public List<string> loginCheck(string unm,string psw)
        {
            string send = "SELECT COUNT(usrid) FROM LoginTable1 WHERE username='" + unm + "' AND password='" + psw + "'";
            string result = con.exe_Scalar(send);
            List<string> ls = new List<string>();
            if (result == "1")
            {
                string send1 = "SELECT * FROM LoginTable1 WHERE username='" + unm + "' AND password='" + psw + "'";
                SqlDataReader dr = con.exe_Reader(send1);

                if (dr.Read())
                {
                    ls.Add(dr["usrid"].ToString());
                    ls.Add(dr["username"].ToString());
                    ls.Add(dr["logtype"].ToString());

                }
              
                if (ls[2]=="False")
                {
                    string qrEmail = "SELECT email FROM UserTable WHERE usrid=" + Convert.ToInt32(dr["usrid"]) + "";
                    string emailid = con.exe_Scalar(qrEmail);
                    ls.Add(emailid);
                }
                else  if(ls[2]=="True")
                {
                    string qrEmail = "SELECT email FROM AdminTable WHERE adminid=" + Convert.ToInt32(dr["usrid"]) + "";
                    string emailid = con.exe_Scalar(qrEmail);
                    ls.Add(emailid);
                }
               
            }
            else
            {
                ls.Add("false");
            }
            return ls;
        }
        public string Getphoto(int userid,bool type)
        {
            string image = "";
            if (!type)
            {
                string phquery = "SELECT photo FROM UserTable WHERE usrid=" + userid + "";
                image = con.exe_Scalar(phquery).ToString();
                
            }
            else
            {
                string phquery = "SELECT photo FROM AdminTable WHERE adminid=" + userid + "";
                image = con.exe_Scalar(phquery).ToString();
             
            }
            return image;

        }
    }
}
