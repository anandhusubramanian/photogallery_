using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Connection
    {
        SqlConnection con;
        SqlCommand cmd;

        public Connection()
        {
            con = new SqlConnection(@"
                                        server=DESKTOP-IBC1JNS\SQLEXPRESS01;
                                        database=Minimalist;
                                        Integrated security=true;
                                  ");
        }

        public int exe_NonQuery(string sql)//insert ,update,delete
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string exe_Scalar(string sql)//aggregate
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            string s;
            con.Open();
            s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }

        public SqlDataReader exe_Reader(string sql)//select *
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet exe_Adapter(string sql)// select *
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            da.Fill(ds);
            return ds;
        }




        public DataTable exe_Adapter(string sql, int first,int second)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            dt.Clear();
            dt.Columns.Add("id");
            dt.Columns.Add("cname");
            dt.Columns.Add("edate");
            
            da.Fill(first, second, dt);
          
            return dt;
        }
    }
}
