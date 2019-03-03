using System;
using System.Data;
using System.Data.SqlClient;
using PatientManagementApp.DAO;
using PatientManagementApp.DAL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PatientManagementApp.UI
{
    public partial class PatientInfoInsertPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void saveButton_Click(object sender, EventArgs e)
        {
            PatientInfoInsertDao patientInfoInsertDao = new PatientInfoInsertDao();
            patientInfoInsertDao.PatientName = patientNameTextBox.Text;
            patientInfoInsertDao.MobileNumber = mobileNumberTextBox.Text;
            patientInfoInsertDao.Gender = genderDDList.SelectedItem.Text;
            patientInfoInsertDao.Date = dateTextBox.Text;
            patientInfoInsertDao.Serial = serialTextBox.Text;

            PatientInfoInsertDal patientInfoInsertDal = new PatientInfoInsertDal();
            string save = patientInfoInsertDal.PatientGetInsert(patientInfoInsertDao);
            if (save == "Success")
            {
                saveButton.Text = "Saved";
                saveButton.Enabled = false;
                patientNameTextBox.Text = "";
                mobileNumberTextBox.Text = "";
                genderDDList.ClearSelection();
                dateTextBox.Text = "";
                Response.Write("<script>alert('Save Successful.')</script>");
            }
            else
                Response.Write("<script>alert('Save Failed!')</script>");
        }

        protected void dateTextBox_TextChanged(object sender, EventArgs e)
        {        
            saveButton.Enabled = true;
            saveButton.Text = "Save";
            PatientInfoInsertDao patientInfoInsertDao = new PatientInfoInsertDao();
            patientInfoInsertDao.Date = dateTextBox.Text;

            PatientGetSerialDal patientGetSerial = new PatientGetSerialDal();
            string serial = patientGetSerial.PatientSerial(patientInfoInsertDao);
            if (serial.Length < 2)
            {
                serial = "0" + serial;
            }
            else
            {
                saveButton.Enabled = false;
            }
            string patientSerial = serial;
            serialTextBox.Text = patientSerial;
        }
    }
}