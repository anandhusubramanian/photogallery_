using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class Register
    {
        Connection con = new Connection();

        public int dbInsert(string unm, string eml, string ph, string pwd, bool ad)
        {
            int flag=0,maxId=1;
            string getMaxId = "SELECT MAX(loginid) FROM LoginTable1";//selecting the maximum id from logintable
            string maxIdstr = con.exe_Scalar(getMaxId);
            if (maxIdstr != "")
            {
                maxId =Convert.ToInt32( maxIdstr)+1;
            }
          
            if (ad)//checking whether admin or normal user
            {
                string admInsert = "INSERT INTO AdminTable VALUES(" + maxId + ",'" + unm + "','" + eml + "','" + ph + "','" + pwd + "')";
                string logInsert = "INSERT INTO LoginTable1 VALUES(" + maxId + ",'" + unm + "','" + pwd + "','" + true + "')";
                int admin=con.exe_NonQuery(admInsert);
                int login = con.exe_NonQuery(logInsert);
                if(admin!=0 && login != 0)
                {
                    flag = 1;
                }
                else
                {
                    flag = 0;
                }
            }
            else//normal user
            {
                string usrInsert = "INSERT INTO UserTable VALUES(" + maxId + ",'" + unm + "','" + eml + "','" + ph + "','"+true+"','" + pwd + "')";
                string logInsert = "INSERT INTO LoginTable1 VALUES(" + maxId + ",'" + unm + "','" + pwd + "','" + false + "')";
                int admin = con.exe_NonQuery(usrInsert);
                int login = con.exe_NonQuery(logInsert);
                if (admin != 0 && login != 0)
                {
                    flag = 1;
                }
                else
                {
                    flag = 0;
                }
            }
            return flag;//flag=1 for success
        }
    }
}
