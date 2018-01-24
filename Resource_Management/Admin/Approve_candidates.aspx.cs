using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Admin
{
    public partial class Approve_candidates : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill_staff();
            }
        }
        int ch;
        string status;
        int staffid;
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            
            foreach (GridViewRow row in gv_cand_list.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkstatus = (row.Cells[10].FindControl("chk_approve") as CheckBox);
                    if (chkstatus.Checked)
                    {
                        ch = int.Parse(chkstatus.Text);
                        status = "Joined";
                        staffid=int.Parse(ddl_staff.SelectedItem.Value);
                        bl.update_selected(status,ch);
                        bl.update_placedCandidate(ch, status, staffid);
                    }
                }
                lbl_msg.Text = "Status updated to all selected candidates!";
            }

            loadAllSelectedCandidates();
        }
        protected void fill_staff()
        {
            DataTable dt = new DataTable();
            dt = bl.ddl_fill_staff();
            ddl_staff.DataSource = dt;
            ddl_staff.DataTextField = "SName";
            ddl_staff.DataValueField = "StaffID";
            ddl_staff.DataBind();
            ddl_staff.Items.Insert(0, "---select hr---");
        }

        protected void loadAllSelectedCandidates()
        {
            staffid = int.Parse(ddl_staff.SelectedItem.Value);
            status = "Selected";
            DataTable dt = new DataTable();
            dt = bl.load_selected_cand(staffid, status);
            gv_cand_list.DataSource = dt;
            gv_cand_list.DataBind();
        }

        protected void ddl_staff_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadAllSelectedCandidates();
        }
    }
}