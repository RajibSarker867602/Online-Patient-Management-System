using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using PatientManagementApp.DAO;

namespace PatientManagementApp.DAL
{
    public class ReportPrintingDal
    {
        public DataTable GetPrintReportDB(PatientInfoInsertDao patientInfoInsertDao)
        {
            DataTable dt = new DataTable();
            ConnectionClass connection = new ConnectionClass();
            string query = "Select *from Patient_Records_T Where Date='" + patientInfoInsertDao.SearchDate + "' and Patient_Name='" + patientInfoInsertDao.PatientName + "' and Serial='"+patientInfoInsertDao.Serial+"'";
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