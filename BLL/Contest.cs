using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace BLL
{
   public class Contest
    {
        Connection con = new Connection();
        public bool DbContest_add(string adid, string cnme, string cdsptn,string drtn, string photo)//adding a contest by admin
        {
            DateTime today = DateTime.Now; // 12/20/2015 11:48:09 AM  
            DateTime EndDate = today.AddDays(Convert.ToInt32(drtn)); // Adding days
            string insert = "INSERT INTO ContestTable Values(" + Convert.ToInt32(adid) + ",'" + cnme + "','" + cdsptn + "'," + 0 + "," + 0 + ",'" + today + "','" + EndDate + "','" + true + "','" + photo + "')";
            int row = con.exe_NonQuery(insert);
            if(row!=0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataSet ContestData(int usrid,bool flag)//for listing contest details of the admin logged in
        {
            string collect = "";
            if (flag)
            {
                collect = "SELECT * FROM ContestTable WHERE adminid=" + usrid + "";
            }
            else
            {
                collect = "SELECT * FROM ContestTable";
            }
            DataSet ds = new DataSet();
            ds = con.exe_Adapter(collect);
            return ds;
        }

        public int Change_state(int id)//for changing the active status of a contest
        {
            string query = "SELECT statu FROM ContestTable WHERE id=" + id + "";//getting the status of contest
            bool state =Convert.ToBoolean(con.exe_Scalar(query));
            string query1 = "UPDATE ContestTable SET statu='" + !state + "'WHERE id=" + id + " ";//changing the contest status
            int row_affected = con.exe_NonQuery(query1);
            return row_affected;
        }
        public int getMax()
        {
            string getMax = "SELECT COUNT(id) FROM ContestTable";
            int max = Convert.ToInt32(con.exe_Scalar(getMax));
            return max;
        }

        public int getMin()
        {
            string getMin = "SELECT MIN(id) FROM ContestTable";
            int min = Convert.ToInt32(con.exe_Scalar(getMin));
            return min;
        }
       public DataSet CurrentDetails(int currentRow)
        {
            
            string select = "SELECT * FROM ContestTable WHERE id=" + currentRow + "";
            DataSet ds = con.exe_Adapter(select);
            return ds;
        }

    }
}
