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

namespace PatientManagementApp.UI
{
    public partial class AppointmentReportPageUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                patientDDList.Items.Add("--Empty List--");
        }

        protected void searchDateTextBox_TextChanged(object sender, EventArgs e)
        {
            PatientInfoInsertDao patientInfoInsertDao = new PatientInfoInsertDao();
            patientInfoInsertDao.SearchDate = searchDateTextBox.Text;

            SearchDateDal searchDateDal = new SearchDateDal();
            DataTable search = searchDateDal.GetSearchDb(patientInfoInsertDao);
            if(search.Rows.Count>0)
            {
                patientDDList.Items.Clear();
                patientDDList.Items.Add("--Select--");
                foreach(DataRow dr in search.Rows)
                {
                    patientDDList.Items.Add(new ListItem(dr["Patient_Name"].ToString(), dr["Serial_No"].ToString()));
                }
            }
            else
            {
                patientDDList.Items.Clear();
                patientDDList.Items.Add("--Empty List--");
                messageGridView.Visible = false;
            }
        }

        protected void patientDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            PatientInfoInsertDao patientInfoInsertDao = new PatientInfoInsertDao();
            patientInfoInsertDao.PatientName = patientDDList.SelectedItem.Text;
            patientInfoInsertDao.SearchDate = searchDateTextBox.Text;

            PatientListDal patientListDal = new PatientListDal();
            DataTable patientList = patientListDal.GetPatientList(patientInfoInsertDao);

            if(patientList.Rows.Count>0)
            {
                messageGridView.Visible = true;
                messageGridView.DataSource = patientList;
                messageGridView.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No daata found!')</script>");
            }
        }
    }
}