using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PatientManagementApp.DAO;
using PatientManagementApp.DAL;
using System.Data;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;

namespace PatientManagementApp.UI
{
    public partial class PatientRecordsUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                patientDDList.Items.Add("--Empty List--");
                printReportButton.Visible = false;
            }
        }

        protected void searchDateTextBox_TextChanged(object sender, EventArgs e)
        {
            PatientInfoInsertDao patientInfoInsertDao = new PatientInfoInsertDao();
            patientInfoInsertDao.SearchDate = searchDateTextBox.Text;

            PatientRecordsDal patientRecords = new PatientRecordsDal();
            DataTable search = patientRecords.GetPatientRecordsDB(patientInfoInsertDao);
            if (search.Rows.Count > 0)
            {
                patientDDList.Items.Clear();
                patientDDList.Items.Add("--Select--");
                foreach (DataRow dr in search.Rows)
                {
                    patientDDList.Items.Add(new ListItem(dr["Patient_Name"].ToString(), dr["Serial"].ToString()));
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
            patientInfoInsertDao.PatientName = patientDDList.SelectedItem.Text;
            patientInfoInsertDao.SearchDate = searchDateTextBox.Text;

            PatientRecordShowInGridDal patientRecordsShowInGrid = new PatientRecordShowInGridDal();
            DataTable patientList = patientRecordsShowInGrid.ShowRecordsInGrid(patientInfoInsertDao);

            if (patientList.Rows.Count > 0)
            {
                patientRecordsGrid.DataSource = patientList;
                patientRecordsGrid.DataBind();
                printReportButton.Visible = true;
            }
            else
            {
                Response.Write("There are something wrong!");
            }
        }
        protected void printReportButton_Click(object sender, EventArgs e)
        {
            PatientInfoInsertDao patientInfoInsertDao = new PatientInfoInsertDao();
            patientInfoInsertDao.SearchDate = searchDateTextBox.Text;
            patientInfoInsertDao.PatientName = patientDDList.SelectedItem.Text;
            patientInfoInsertDao.Serial = patientDDList.SelectedValue;

            ReportPrintingDal reportPrintingDal = new ReportPrintingDal();
            DataTable print = reportPrintingDal.GetPrintReportDB(patientInfoInsertDao);
            if(print.Rows.Count>0)
            {
                ReportDocument rd = new ReportDocument();
                rd.Load(Server.MapPath("~/UI/CrystalReport1.rpt"));
                rd.SetDataSource(print);

                DAO.ReportClass.rc = rd;
                Response.Redirect("ReportView.aspx");
            }
        }
    }
}