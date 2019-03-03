using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PatientManagementApp.DAO;
using System.Data;
using System.Data.SqlClient;

namespace PatientManagementApp.DAL
{
    public class PatientRecordsShowDal
    {
        public DataTable GetShowInGrid(PatientInfoInsertDao patientInfoInsertDao)
        {
            DataTable dt = new DataTable();
            ConnectionClass connection = new ConnectionClass();
            string query = "select *from Patient_Records_T where Date='" + patientInfoInsertDao.SearchDate + "' and Patient_Name='" + patientInfoInsertDao.PatientName + "' and Serial='"+patientInfoInsertDao.Serial+"'";
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