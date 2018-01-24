using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resource_Management.HRStaff
{
    public partial class change_password1 : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string Login = Session["user"].ToString();
            string pwd = Session["pwd"].ToString();

            string id = Session["id"].ToString();

            if (pwd == txt_old.Text)
            {
                if (txt_new.Text == txt_confirm.Text)
                {
                    bl.change_password(txt_new.Text, int.Parse(id), txt_old.Text);
                }
                Label1.Text = "password changed";
            }
            else
                Label1.Text = "invalid password";
            txt_old.Text = "";
            txt_new.Text = "";
            txt_confirm.Text = "";
        }
    }
}