using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.HRStaff
{
    public partial class Requirments : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
       static int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = int.Parse(Session["id"].ToString());
                fill_domain();
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btn_status_update_Click(object sender, EventArgs e)
        {
            int ch;

            foreach (GridViewRow row in GridView1.Rows)
            {
                int assignid=int.Parse(row.Cells[0].Text);
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkstatus = (row.Cells[6].FindControl("CheckBox1") as CheckBox);
                    if (chkstatus.Checked)
                    {
                        ch = int.Parse(chkstatus.Text);
                        if (row.Cells[4].Text == "Assigned")
                            row.Cells[4].Text = "Filled";

                        bl.update_status("Filled",ch);
                        bl.set_assign_status("Completed",assignid);
                    }
                }
            }
            lbl_msg.Text = "status updated";
            load_data();
          
        }
        protected void load_data()
        {
            
            DataTable dt = new DataTable();
            dt = bl.load_assigned(id, DropDownList1.SelectedItem.Text);
           
                GridView1.DataSource = dt;
                GridView1.DataBind();
        }
        protected void get_assigned()
        {
            DataTable dt = new DataTable();
            dt = bl.load_assigned(id, DropDownList1.SelectedItem.Text);
            gv_req_assign.DataSource = dt;
            gv_req_assign.DataBind();
        }
        protected void fill_domain()
        {
            DataTable dt = new DataTable();
            dt = bl.fill_Domain_data();
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "DomainName";
            DropDownList1.DataValueField = "DomainID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "---select---");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            //if (Rbtn_req.Checked == true)
            //{
            //    MultiView1.Visible = true;
            //    ////MultiView1.SetActiveView(View1);
            //    MultiView1.ActiveViewIndex = 0;

             //  get_assigned();
            //}
            //if (Rbtn_Update.Checked == true)
            //{
            //    MultiView1.ActiveViewIndex = 1;
            //    //////MultiView1.SetActiveView(View2);          
            //    load_data();
            //}
            Label1.Text = "Please select action";
          }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedItem.Text == "Assigned Requirments")
            {
                MultiView1.ActiveViewIndex = 0;
                get_assigned();
            }
            else
            {
                MultiView1.ActiveViewIndex = 1;
                load_data();
            }
        }
    }
}