using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class Participate
    {
        Connection con = new Connection();
       public bool Adduser(int cnid, int usrid)
        {

            string check = "SELECT COUNT(usrid) FROM Participation Where cid=" + cnid + " AND usrid="+usrid+"";
            string count = con.exe_Scalar(check);
            if (count == "0")
            {
                string adduser_contest = "INSERT INTO Participation VALUES(" + cnid + "," + usrid + ",'no'," + 0 + ",'no')";
                int result = con.exe_NonQuery(adduser_contest);
                if (result != 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }

        }
        
    }
}
