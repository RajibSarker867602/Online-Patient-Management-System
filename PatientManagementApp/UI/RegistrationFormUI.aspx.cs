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
    public partial class RegistrationFormUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            UserTypeRegistrationDao userTypeRegistrationDao = new UserTypeRegistrationDao();
            userTypeRegistrationDao.UserType = userTypeDDList.SelectedItem.Text;
            if (userTypeRegistrationDao.UserType != "--Select--")
            {
                userTypeRegistrationDao.UserName = userNameTextBox.Text;
                userTypeRegistrationDao.Password = passwordTextBox.Text;
                userTypeRegistrationDao.ConfirmPassword = confirmTextBox.Text;

                UserTypeRegistrationInsertDal userTypeRegistrationDal = new UserTypeRegistrationInsertDal();
                string insert = userTypeRegistrationDal.GetInsertUserRegistrationDB(userTypeRegistrationDao);
                if (insert != null)
                {
                    Response.Write("<script>alert('User Creat Succful.')</script>");
                    userNameTextBox.Text = "";
                    passwordTextBox.Text = "";
                    confirmTextBox.Text = "";
                    userTypeDDList.ClearSelection();

                }
                else
                {
                    Response.Write("<script>alert('User Creat failed.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Select user type!')</script>");
                userTypeDDList.Focus();
            }
        }

        protected void newButton_Click(object sender, EventArgs e)
        {
            userNameTextBox.Text = "";
            passwordTextBox.Text = "";
            confirmTextBox.Text = "";
            userTypeDDList.ClearSelection();
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginFormUI.aspx");
        }
    }
}
