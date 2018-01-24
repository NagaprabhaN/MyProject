using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Resource_Management.BAL;

namespace Resource_Management.Visitor
{
    public partial class Index1 : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string type = ddlUserType.SelectedItem.Text;
            if (bl.Login(type, txtUserName.Text, txtPassword.Text) == 1)
            {
                Session["user"] = txtUserName.Text;
                Session["pwd"] = txtPassword.Text;
                if (type == "Admin")
                {
                    Response.Redirect("~/Admin/A_HRStaff.aspx");
                }
                if (type == "HRStaff")
                {
                    Response.Redirect("~/HRStaff/HRStaff.aspx");
                }
                if (type == "Jobseeker")
                {
                    Response.Redirect("~/Jobseeker/Jobseeker.aspx");
                }
                if (type == "Employer")
                {
                    Response.Redirect("~/Employer/Employer.aspx");
                }
            }
            else
            {
                
            }
        }
    }
}