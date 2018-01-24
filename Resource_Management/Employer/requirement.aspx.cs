using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Employer
{
    public partial class requirement : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        string uid;
        string pwd;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Session["user"].ToString();
            pwd = Session["pwd"].ToString();
            DataTable dt = new DataTable();
            dt = bl.get_compID(uid, pwd);
            id = int.Parse(dt.Rows[0][0].ToString());

            if (!IsPostBack)
            {
                fill_domain();
              //  get_filled_requirment(id);
                get_requirements(id);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int did=int.Parse(ddlDomain.SelectedItem.Value);
            string dname = ddlDomain.SelectedItem.Text;
            if (Button1.Text == "Submit")
            {
                bl.comp_requirement(txt_desig.Text, int.Parse(txt_count.Text), txt_job.Text, float.Parse(txt_reqexp.Text), int.Parse(txt_salary.Text), DateTime.Parse(txt_ldate.Text), id, "Pending", dname,did);
                Label1.Text = "requirement placed successfully";
                get_requirements(id);
                clear_fields();
            }
            if (Button1.Text == "Update")
            {
                bl.update_req(reqid, txt_desig.Text, int.Parse(txt_count.Text), txt_job.Text, ddlDomain.SelectedItem.Text, float.Parse(txt_reqexp.Text), int.Parse(txt_salary.Text), DateTime.Parse(txt_ldate.Text),int.Parse(ddlDomain.SelectedItem.Value));
                Label1.Text = "requirement updated successfully";
                get_requirements(id);
                clear_fields();
            }
        }

        //protected void get_filled_requirment(int id)
        //{
        //    DataTable dt = new DataTable();
        //    dt = bl.get_filled_req(id);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}

        protected void get_requirements(int id)
        {
            DataTable dt = new DataTable();
            dt = bl.get_requirments(id);
            gv_req_list.DataSource = dt;
            gv_req_list.DataBind();
        }
        protected void fill_domain()
        {
            //ddlDomain.Items.Clear();
            
            DataTable dt = new DataTable();
            dt = bl.fill_Domain_data();
            ddlDomain.DataSource = dt;
            ddlDomain.DataTextField = "DomainName";
            ddlDomain.DataValueField = "DomainID";
            ddlDomain.DataBind();
            ddlDomain.Items.Insert(0, "--select--");
        }
        protected void clear_fields()
        {
            txt_salary.Text = "";
            txt_reqexp.Text = "";
            txt_ldate.Text = "";
            txt_job.Text = "";
            //ddlDomain.SelectedIndex = 0;
            txt_desig.Text = "";
            txt_count.Text = "";
        }
        protected void lnk_edit_Click(object sender, EventArgs e)
        {
            Button1.Text = "Update";
            GridViewRow r = (GridViewRow)((LinkButton)sender).Parent.Parent;
            reqid = int.Parse(((LinkButton)sender).CommandArgument);
            txt_desig.Text = r.Cells[1].Text;
            txt_count.Text = r.Cells[2].Text;
            txt_job.Text = r.Cells[3].Text;
            txt_reqexp.Text = r.Cells[4].Text;
            txt_salary.Text = r.Cells[5].Text;
            txt_ldate.Text = r.Cells[6].Text;
            ddlDomain.SelectedItem.Text = r.Cells[7].Text;
            ddlDomain.SelectedItem.Value = r.Cells[8].Text;

        }
        int reqid;
        protected void lnk_Delete_Click(object sender, EventArgs e)
        {
            GridViewRow r = (GridViewRow)((LinkButton)sender).Parent.Parent;
            reqid = int.Parse(((LinkButton)sender).CommandArgument);
            bl.delete_req(reqid);
            get_requirements(id);
        }

       
    }
}