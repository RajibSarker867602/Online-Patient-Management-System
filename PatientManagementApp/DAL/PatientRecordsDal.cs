using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PatientManagementApp.DAO;
using System.Data;
using System.Data.SqlClient;

namespace PatientManagementApp.DAL
{
    public class PatientRecordsDal
    {
        public DataTable GetPatientRecordsDB(PatientInfoInsertDao patientInfoInsertDao)
        {
            DataTable dt = new DataTable();
            ConnectionClass connection = new ConnectionClass();
            string query = "select *from Patient_Records_T where Date='" + patientInfoInsertDao.SearchDate + "'";
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(query,connection.GetOpen());
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