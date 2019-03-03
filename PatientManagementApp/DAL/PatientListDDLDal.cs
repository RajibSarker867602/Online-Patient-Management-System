using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using PatientManagementApp.DAO;

namespace PatientManagementApp.DAL
{
    public class PatientListDDLDal
    {
        public DataTable GetPatientListDDl(PatientInfoInsertDao patientInfoInsertDao)
        {
            DataTable dt = new DataTable();
            ConnectionClass connection = new ConnectionClass();
            string query = "select *from Patient_Info_Insert_T where Serial_No='" + patientInfoInsertDao.Serial + "' and Date='" + patientInfoInsertDao.SearchDate + "'";
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