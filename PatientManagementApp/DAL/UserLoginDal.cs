using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PatientManagementApp.DAO;
using System.Data;
using System.Data.SqlClient;

namespace PatientManagementApp.DAL
{
    public class UserLoginDal
    {
        public DataTable GetLoginInDB(UserTypeDao userTypeDao)
        {
            DataTable dt = new DataTable();
            ConnectionClass connection = new ConnectionClass();
            string query = "select* from Registration_Form_T where User_Name ='" + userTypeDao.userName + "' and Password='" + userTypeDao.password + "' and User_Type='" + userTypeDao.userType + "'";
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(query, connection.GetOpen());
                da.Fill(dt);
            }
            catch(Exception r)
            {
                dt = null;
            }
            finally
            {
                connection.GetClose();
            }
            return dt;

        }
    }
    
}