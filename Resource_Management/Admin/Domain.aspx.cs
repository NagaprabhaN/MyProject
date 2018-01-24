using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Admin
{
    public partial class Domain : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill_domain();
            }
        }
        static int Domainid;
        protected void lnk_edit_Click(object sender, EventArgs e)
        {
            btn_ADD.Text = "UPDATE";
            GridViewRow r = (GridViewRow)((LinkButton)sender).Parent.Parent;
            Domainid = int.Parse(((LinkButton)sender).CommandArgument);
            txt_domain.Text = r.Cells[1].Text;
        }

        protected void lnk_delete_Click(object sender, EventArgs e)
        {
            GridViewRow r = (GridViewRow)((LinkButton)sender).Parent.Parent;
            Domainid = int.Parse(((LinkButton)sender).CommandArgument);
            bl.delete_domain(Domainid);
            fill_domain();
        }

        protected void fill_domain()
        {
            DataTable dt = new DataTable();
            dt = bl.fill_Domain_data();
            gv_domain.DataSource = dt;
            gv_domain.DataBind();
        }

        protected void btn_ADD_Click(object sender, EventArgs e)
        {
            if (btn_ADD.Text == "ADD")
            {
                bl.add_domain(txt_domain.Text);
                fill_domain();
                lbl_msg.Text = "New Domain added successfully";
            }
            if (btn_ADD.Text == "UPDATE")
            {
                bl.update_domain(txt_domain.Text, Domainid);
                fill_domain();
                lbl_msg.Text = "Domain updated successfully";
            }
        }
    }
}