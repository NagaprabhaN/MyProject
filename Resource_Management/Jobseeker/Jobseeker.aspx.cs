using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Jobseeker
{
    public partial class Jobseeker1 : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        string uid;
        string pwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Session["user"].ToString();
            pwd = Session["pwd"].ToString();
            DataTable dt = new DataTable();
            dt = bl.get_profile(uid, pwd);
            Session["id"] = dt.Rows[0][0].ToString();
            fill_domain();

            lbl_id.Text = dt.Rows[0][0].ToString();
            txt_name.Text = dt.Rows[0][1].ToString();
            txt_addr.Text = dt.Rows[0][2].ToString();
            txt_phone.Text = dt.Rows[0][3].ToString();
            lbl_dor.Text = dt.Rows[0][4].ToString();
            txt_qual.Text = dt.Rows[0][5].ToString();
            txt_exp.Text = dt.Rows[0][6].ToString();
            txt_sal.Text = dt.Rows[0][7].ToString();
            ddlDomain.SelectedItem.Text = dt.Rows[0][11].ToString();
            txt_email.Text = dt.Rows[0][12].ToString();
            txt_designation.Text = dt.Rows[0][13].ToString();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            bl.update_Candprofile(int.Parse(lbl_id.Text), txt_name.Text, txt_addr.Text, txt_phone.Text, txt_email.Text, txt_qual.Text, float.Parse(txt_exp.Text), int.Parse(txt_sal.Text), ddlDomain.SelectedItem.Text);
            lbl_msg.Text = "Your profile updated successfully!";
        }

        protected void fill_domain()
        {
            DataTable dt = new DataTable();
            dt = bl.fill_Domain_data();
            ddlDomain.DataSource = dt;
            ddlDomain.DataTextField = "DomainName";
            ddlDomain.DataValueField = "DomainID";
            ddlDomain.Items.Insert(0, "---select---");
            ddlDomain.DataBind();
        }
    }
}