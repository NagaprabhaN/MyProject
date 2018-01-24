using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resource_Management.Visitor.Registration
{
    public partial class RJobseeker : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
           
        }

        protected void btn_exit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Visitor/Index.aspx");
        }

        protected void clearfields()
        {
            txt_qua.Text = "";
            txt_pwd.Text = "";
            txt_ph.Text = "";
            txt_name.Text = "";
            txt_id.Text = "";
            txt_exp.Text = "";
            txt_dor.Text = "";
            txt_ctc.Text = "";
            txt_cpwd.Text = "";
            txt_addr.Text = "";
            txt_domain.Text = "";
            txt_Email.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_cpwd.Text == txt_pwd.Text)
            {
                bl.add_jobseeker(txt_name.Text, txt_addr.Text, txt_ph.Text, DateTime.Parse(txt_dor.Text), txt_qua.Text, float.Parse(txt_exp.Text), int.Parse(txt_ctc.Text), txt_id.Text, txt_pwd.Text,"Pending",txt_domain.Text,txt_Email.Text,txt_designation.Text);
                lbl_msg.Text = "Registered sucessfully";
                clearfields();
            }
            else
            {
                lbl_msg.Text = "Invalid password entry!";
            }
        }

       
    }
}