using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Admin
{
    public partial class A_Employer : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill_employerList();
                fill_company_approved();
            }
        }
        //static string status;
        //static int cid;
        //protected void chk_status_CheckedChanged(object sender, EventArgs e)
        //{
        //    GridViewRow r = (GridViewRow)((LinkButton)sender).Parent.Parent;
        //    status = (((LinkButton)sender).CommandArgument);
        //    cid = int.Parse(r.Cells[0].Text);
        //    if (r.Cells[9].Text=="Pending")
        //        r.Cells[9].Text="Approved";
        //    bl.update_status(cid, r.Cells[9].Text);
        //}
        protected void fill_employerList()
        {
            DataTable dt = new DataTable();
            dt = bl.fill_employer();
            gv_employer.DataSource = dt;
            gv_employer.DataBind();
        
        }
        protected void fill_company_approved()
        {
            DataTable dt = new DataTable();
            dt = bl.fill_company_approved();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            int ch;
            foreach (GridViewRow row in gv_employer.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkstatus = (row.Cells[10].FindControl("chk_status") as CheckBox);
                    ch = int.Parse(chkstatus.Text);
                    if (chkstatus.Checked)
                    {
                        if (row.Cells[9].Text == "Pending")
                            row.Cells[9].Text = "Approved";

                        bl.update_employer("Approved", ch);
                    }
                }
               
            }
            fill_employerList();
        }

      
    }
}