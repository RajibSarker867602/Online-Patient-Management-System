using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PatientManagementApp.DAO
{
    public class UserTypeRegistrationDao
    {
        public string UserType { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
    }
}