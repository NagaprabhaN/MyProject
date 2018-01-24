using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.HRStaff
{
    public partial class candidates_list : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        static int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = int.Parse(Session["id"].ToString());
                fill_domain();
                fill_company();
                loadUnplaced();
            }
        }
        int ch;
        protected void btn_update_Click(object sender, EventArgs e)
        {
            string status;
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkstatus = (row.Cells[7].FindControl("CheckBox1") as CheckBox);
                    if (chkstatus.Checked)
                    {
                        ch = int.Parse(chkstatus.Text);
                        if (float.Parse(txt_exp.Text) <= float.Parse(row.Cells[4].Text))
                        {
                            if (row.Cells[6].Text == "Pending")
                                row.Cells[6].Text = "Selected";
                            status = "Selected";
                            bl.update_selected(status, ch);
                            //insert into placed candidate table......
                            bl.add_placed_candidates(row.Cells[0].Text, row.Cells[1].Text, row.Cells[2].Text, ddl_company.SelectedItem.Text, txt_designation.Text, int.Parse(txt_salary.Text), "Selected", ch, int.Parse(ddl_Domain.SelectedItem.Value), id);
                            lbl_msg.Text = "status updated to all selected candidates!!";
                        }
                        else
                        {
                            lbl_msg.Text = "Experience doesnot match";
                        }

                    }
                }
             }
           
            loadUnplaced();
        
        }
        protected void fill_domain()
        {
            ddl_Domain.Items.Insert(0, "---select---");
            DataTable dt = new DataTable();
            dt = bl.fill_Domain_data();
            ddl_Domain.DataSource = dt;
            ddl_Domain.DataTextField = "DomainName";
            ddl_Domain.DataValueField = "DomainID"; 
            ddl_Domain.DataBind();
        }
        protected void loadUnplaced()
        {
            DataTable dt = new DataTable();
            dt = bl.load_unplaced(ddl_Domain.SelectedItem.Text);
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    if (txt_exp.Text == dt.Rows[i][6].ToString())
                GridView1.DataSource = dt;
                GridView1.DataBind();
            //}
        }

        protected void fill_company()
        {
            ddl_company.Items.Clear();
            DataTable dt = new DataTable();
            dt = bl.fill_company_candidate_list();
            ddl_company.DataSource = dt;
            ddl_company.DataTextField = "compName";
            ddl_company.DataValueField = "compID";
            ddl_company.DataBind();
            ddl_company.Items.Insert(0, "--select--");
        }

        protected void ddl_Domain_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadUnplaced();
        }
        
    }
}