using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Jobseeker
{
    public partial class Interview_Status : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt=new DataTable();
                dt=bl.getstatus(id);
                id = int.Parse(Session["id"].ToString());
                if (dt.Rows[0][0] == "Selected")
                {
                    lbl_status.Text = "your profile is still on proccess";
                }
                if (dt.Rows[0][0] == "Approved")
                {
                    lbl_status.Text="you have been selected";
                }
                if (dt.Rows[0][0] == "Pending")
                {
                    lbl_status.Text = "No updates";
                }
            }
        }
    }
}