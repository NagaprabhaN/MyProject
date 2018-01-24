using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Admin
{
    public partial class External_services : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill_service();
                
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (btn_submit.Text == "Submit")
            {
                bl.add_service(txt_name.Text, txt_addr.Text, txt_contact.Text, txt_service.Text, txt_cost.Text, DateTime.Parse(txt_startdate.Text));
                lbl_msg.Text = "new Service added";
                fill_service();
            }
            if (btn_submit.Text == "Update")
            {
                bl.update_service(txt_name.Text, txt_addr.Text, txt_contact.Text, txt_service.Text, txt_cost.Text, DateTime.Parse(txt_startdate.Text),id);
                lbl_msg.Text = "Service updated";
                fill_service();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_addr.Text = "";
            txt_contact.Text = "";
            txt_cost.Text = "";
            txt_name.Text = "";
            txt_service.Text = "";
            txt_startdate.Text = "";
        }
        protected void fill_service()
        {
            DataTable dt = new DataTable();
            dt = bl.fill_service();
            gv_service.DataSource = dt;
            gv_service.DataBind();
        }
        static int id;
        protected void edit_Click(object sender, EventArgs e)
        {
            GridViewRow r = (GridViewRow)((LinkButton)sender).Parent.Parent;
            id = int.Parse(((LinkButton)sender).CommandArgument);
            txt_name.Text = r.Cells[0].Text;
            txt_service.Text = r.Cells[1].Text;
            txt_addr.Text = r.Cells[2].Text;
            txt_contact.Text = r.Cells[3].Text;
            txt_cost.Text = r.Cells[4].Text;
            txt_startdate.Text = r.Cells[5].Text;

            btn_submit.Text = "Update";
        }

        protected void Lnk_delete_Click(object sender, EventArgs e)
        {
            bl.delete_service(id);
            fill_service();
        }
    }
}