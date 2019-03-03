using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PatientManagementApp.DAO;
using System.Data;
using System.Data.SqlClient;
using PatientManagementApp.DAL;

namespace PatientManagementApp.UI
{
    public partial class LoginFormUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            UserTypeDao userTypeDao = new UserTypeDao();
            userTypeDao.userName = userNameTextBox.Text;
            userTypeDao.password = passwordTextBox.Text;
            userTypeDao.userType = userTypeDDList.SelectedItem.Text;


            if(userTypeDDList.SelectedItem.Text!= "---User Type---")
            {
                UserLoginDal userLoginDal = new UserLoginDal();
                DataTable dt = userLoginDal.GetLoginInDB(userTypeDao);
                if(dt.Rows.Count>0)
                {
                    Session["user"] = userNameTextBox.Text;
                    if(dt.Rows[0]["User_Type"].ToString() == "Assistance")
                        Response.Redirect("PatientInfoInsertPage.aspx");
                    if (dt.Rows[0]["User_Type"].ToString() == "Doctor")
                      Response.Redirect("DoctorPageUI.aspx");
                }
                else
                {
                    Response.Write("User name or Passowrd does not match!");
                }
            }
            else
            {
                Response.Write("Select the user type...");
            }   
        }
    }
}