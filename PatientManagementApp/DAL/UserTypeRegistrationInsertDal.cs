using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PatientManagementApp.DAO;
using System.Data;
using System.Data.SqlClient;

namespace PatientManagementApp.DAL
{
    public class UserTypeRegistrationInsertDal
    {
        public string GetInsertUserRegistrationDB(UserTypeRegistrationDao userTypeRegistrationDao)
        {
            string isSuccess = "";
            ConnectionClass connection = new ConnectionClass();
            string query = "Insert into Registration_Form_T values('" +userTypeRegistrationDao.UserName+ "','" +userTypeRegistrationDao.Password+ "','" +userTypeRegistrationDao.UserType+ "')";
            try
            {
                SqlCommand cmd = new SqlCommand(query, connection.GetOpen());
                cmd.ExecuteNonQuery();
                isSuccess = "Insert Successful";
            }
            catch(Exception r)
            {
                isSuccess = "Insert Failed!";
            }
            finally
            {
                connection.GetClose();
            }
            return isSuccess;
        }
    }
}