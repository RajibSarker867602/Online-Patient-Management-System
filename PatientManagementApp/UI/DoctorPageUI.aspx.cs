using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using PatientManagementApp.DAO;
using PatientManagementApp.DAL;
using CrystalDecisions.CrystalReports.Engine;

namespace PatientManagementApp.UI
{
    public partial class DoctorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                patientDDList.Items.Add("--Empty List--");
            }
            
                
        }

        protected void searchDateTextBox_TextChanged(object sender, EventArgs e)
        {
            PatientInfoInsertDao patientInfoInsertDao = new PatientInfoInsertDao();
            patientInfoInsertDao.SearchDate = searchDateTextBox.Text;

            SearchDateDal searchDateDal = new SearchDateDal();
            DataTable search = searchDateDal.GetSearchDb(patientInfoInsertDao);
            if (search.Rows.Count > 0)
            {
                patientDDList.Items.Clear();
                patientDDList.Items.Add("--Select--");
                foreach (DataRow dr in search.Rows)
                {
                    patientDDList.Items.Add(new ListItem(dr["Serial_No"].ToString(), dr["Serial_No"].ToString()));
                }
            }
            else
            {
                patientDDList.Items.Clear();
                patientDDList.Items.Add("--Empty List--");
            }
        }

        protected void patientDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            PatientInfoInsertDao patientInfoInsertDao = new PatientInfoInsertDao();
            patientInfoInsertDao.Serial = patientDDList.SelectedItem.Text;
            patientInfoInsertDao.SearchDate = searchDateTextBox.Text;

            PatientListDDLDal patientListDDldal = new PatientListDDLDal();
            DataTable patientList = patientListDDldal.GetPatientListDDl(patientInfoInsertDao);
            if(patientList.Rows.Count>0)
            {
                serialNoLabel.Text = patientList.Rows[0]["Serial_No"].ToString();
                patientNameLabel.Text = patientList.Rows[0]["Patient_Name"].ToString();
            }
            else
            {
                serialNoLabel.Text = "No Serial No Found!";
                patientNameLabel.Text = "No Patient Name Found!";
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            PatientInfoInsertDao patientInfoInsertDao = new PatientInfoInsertDao();
            patientInfoInsertDao.PatientName = patientNameLabel.Text;
            patientInfoInsertDao.Age = patientAgeTextbox.Text;
            patientInfoInsertDao.Disease = diseaseTextBox.Text;
            patientInfoInsertDao.Medicine = medicineTextBox.Text;
            patientInfoInsertDao.Serial = serialNoLabel.Text;
            patientInfoInsertDao.Date = searchDateTextBox.Text;
         
            PatientRecordDBDal patientRecordDBDal = new PatientRecordDBDal();
            string insertRecords = patientRecordDBDal.PatientRecordInsertDB(patientInfoInsertDao);
            if (insertRecords != "")
            {
                patientInfoInsertDao.SearchDate = searchDateTextBox.Text;
                patientInfoInsertDao.PatientName = patientNameLabel.Text;
                patientInfoInsertDao.Serial = serialNoLabel.Text;

                ReportPrintingDal reportPrintingDal = new ReportPrintingDal();
                DataTable print = reportPrintingDal.GetPrintReportDB(patientInfoInsertDao);
                if (print.Rows.Count > 0)
                {
                    ReportDocument rd = new ReportDocument();
                    rd.Load(Server.MapPath("~/UI/CrystalReport1.rpt"));
                    rd.SetDataSource(print);

                    DAO.ReportClass.rc = rd;
                    Response.Redirect("ReportView.aspx");
                }
                patientDDList.Items.Remove(patientDDList.SelectedItem);
                serialNoLabel.Text = "";
                patientNameLabel.Text = "";
                patientAgeTextbox.Text = "";
                diseaseTextBox.Text = "";
                medicineTextBox.Text = "";
                searchDateTextBox.Text = "";
            }
            else
            {
                Response.Write("There went something worng!");
            }
        }
    }
}