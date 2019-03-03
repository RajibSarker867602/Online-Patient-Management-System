using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using PatientManagementApp.DAO;


namespace PatientManagementApp.DAL
{
    public class PatientRecordDBDal
    {
        public string PatientRecordInsertDB(PatientInfoInsertDao patientInfoInsertDao)
        {
            string isSuccess = "";
            ConnectionClass connection = new ConnectionClass();
            string query = "insert into Patient_Records_T values('" + patientInfoInsertDao.PatientName + "','" + patientInfoInsertDao.Age + "','" + patientInfoInsertDao.Disease + "','" + patientInfoInsertDao.Medicine + "','" + patientInfoInsertDao.Date + "','" + patientInfoInsertDao.Serial + "')";
            try
            {
                SqlCommand cmd = new SqlCommand(query, connection.GetOpen());
                cmd.ExecuteNonQuery();
                isSuccess = "Save Success.";
            }
            catch(Exception r)
            {
                isSuccess = "Not Saved";
            }
            finally
            {
                connection.GetClose();
            }
            return isSuccess;
        }
    }
}