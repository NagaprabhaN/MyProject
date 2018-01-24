using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Employer
{
    public partial class Employer1 : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        string uid;
        string pwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Session["user"].ToString();
            pwd = Session["pwd"].ToString();
            DataTable dt = new DataTable();
            dt = bl.view_employer(uid, pwd);
            lbl_Rid.Text= dt.Rows[0][0].ToString();
            txt_name.Text = dt.Rows[0][1].ToString();
            txt_addr.Text = dt.Rows[0][2].ToString();
            txt_Phone.Text = dt.Rows[0][3].ToString();
            lbl_tieup.Text = dt.Rows[0][4].ToString();
            txt_incharge.Text = dt.Rows[0][6].ToString();
            txt_contact.Text = dt.Rows[0][7].ToString();
            Session["ID"] = lbl_Rid.Text;
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            bl.update_emp_profile(txt_name.Text, txt_addr.Text, txt_Phone.Text, txt_incharge.Text, txt_contact.Text, int.Parse(lbl_Rid.Text));
            lbl_msg.Text = "Profile update successfully";
        }
    }
}