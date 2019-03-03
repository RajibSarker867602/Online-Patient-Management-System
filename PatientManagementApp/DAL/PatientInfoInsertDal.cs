using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PatientManagementApp.DAO;
using System.Data.SqlClient;

namespace PatientManagementApp.DAL
{
    public class PatientInfoInsertDal
    {
        
        public string PatientGetInsert(PatientInfoInsertDao patientInfoInsertDao)
        {
            string isSuccess = "";
            ConnectionClass connection = new ConnectionClass();
            string query = "insert into Patient_Info_Insert_T values('"+patientInfoInsertDao.PatientName+"', '"+patientInfoInsertDao.MobileNumber+"', '"+patientInfoInsertDao.Gender+"', '"+patientInfoInsertDao.Date+"', '"+patientInfoInsertDao.Serial+"')";
            try
            {
                SqlCommand cmd = new SqlCommand(query,connection.GetOpen());
                cmd.ExecuteNonQuery();
                isSuccess = "Success";
            }
            catch
            {
                isSuccess = "Failed!";
            }
            finally
            {
                connection.GetClose();
            }
            return isSuccess;
        }
    }
}