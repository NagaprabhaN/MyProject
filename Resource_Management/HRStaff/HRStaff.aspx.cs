using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.HRStaff
{
    public partial class HRStaff1 : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        string Login;
        string pwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill_profile();
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            bl.update_profile(txt_name.Text, txt_addr.Text, txt_phone.Text, lbl_doj.Text, lbl_desig.Text, txt_qual.Text, lbl_ctc.Text, int.Parse(lbl_id.Text));
            lbl_msg.Text = "Profile updated successfully";

        }
        protected void fill_profile()
        {
            pwd = Session["pwd"].ToString();
            Login = Session["user"].ToString();

            DataTable dt = new DataTable();
            dt = bl.get_staff(Login, pwd);
            lbl_id.Text = dt.Rows[0][0].ToString();
            txt_name.Text = dt.Rows[0][1].ToString();
            txt_addr.Text = dt.Rows[0][2].ToString();
            txt_phone.Text = dt.Rows[0][3].ToString();
            txt_qual.Text = dt.Rows[0][6].ToString();
            lbl_doj.Text = dt.Rows[0][4].ToString();
            lbl_desig.Text = dt.Rows[0][5].ToString();
            lbl_ctc.Text = dt.Rows[0][7].ToString();

            Session["id"] = dt.Rows[0][0].ToString();
        }
    }
}