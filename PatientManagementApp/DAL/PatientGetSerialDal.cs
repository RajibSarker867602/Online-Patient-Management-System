using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PatientManagementApp.DAO;
using System.Data;
using System.Data.SqlClient;

namespace PatientManagementApp.DAL
{
    public class PatientGetSerialDal
    {
        public string PatientSerial(PatientInfoInsertDao patientInfoInsertDao)
        {
            string finalCnt = "";
            int cnt = 0;
            ConnectionClass connection = new ConnectionClass();
            string query = "select Count(*) cnt from Patient_Info_Insert_T where Date='" + patientInfoInsertDao.Date + "'";
            try
            {
                SqlCommand cmd = new SqlCommand(query, connection.GetOpen());
                int temp = (int)cmd.ExecuteScalar();
                cnt = temp + 1;
                if (cnt <= 5)
                {
                    finalCnt = cnt.ToString();
                }
                else
                {
                    finalCnt = "Maximum Number Of Patient.";
                }

            }
            catch (Exception r)
            {
                finalCnt = "0";
            }
            finally
            {
                connection.GetClose();
            }
            return finalCnt;
        }
    }
}