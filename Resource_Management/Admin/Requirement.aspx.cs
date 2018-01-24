using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Admin
{
    public partial class Requirement : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill_staff();
                fill_requirement();
            }
        }
        int ch;
        protected void btn_assign_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gv_requiremnt.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkstatus = (row.Cells[10].FindControl("chk_assign") as CheckBox);
                    if (chkstatus.Checked)
                    {
                        ch =int.Parse(chkstatus.Text);
                        if (row.Cells[9].Text == "Pending")
                            row.Cells[9].Text = "Assigned";

                        bl.update_status("Assigned",ch);
                    }
                }
                bl.assign_requirement(row.Cells[6].Text,int.Parse(row.Cells[3].Text),DateTime.Parse(row.Cells[8].Text),"Assigned",int.Parse(ddl_hrstaff.SelectedItem.Value),float.Parse(row.Cells[5].Text));
            }

            lbl_msg.Text = "requirement assigned to "+ ddl_hrstaff.SelectedItem.Text + "\t";
            fill_requirement();
        }

        protected void fill_requirement()
        {
            DataTable dt = new DataTable();
            dt=bl.fill_requirment();
            gv_requiremnt.DataSource=dt;
            gv_requiremnt.DataBind();
        }
        protected void fill_staff()
        {
            DataTable dt = new DataTable();
            dt=bl.ddl_fill_staff();
            ddl_hrstaff.DataSource = dt;
            ddl_hrstaff.DataTextField = "SName";
            ddl_hrstaff.DataValueField = "StaffID";
            ddl_hrstaff.DataBind();
            ddl_hrstaff.Items.Insert(0,"---select hr---");
        }
    }
}