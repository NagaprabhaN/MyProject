using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Resource_Management.BAL;

namespace Resource_Management.Visitor.Registration
{
    public partial class REmployer : System.Web.UI.Page
    {
        BAL.BAL bl=new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            if (txt_pwd.Text == txt_cpwd.Text)
            {
                bl.insert_employer(txt_name.Text,txt_addr.Text,txt_phone.Text,DateTime.Parse(txt_date.Text),"Pending",txt_incharge.Text,txt_contact.Text,txt_id.Text,txt_pwd.Text);
                lbl_msg.Text="registration request is successfull";

            }
            else
            {
                lbl_msg.Text = "invalid password!";
            }
            btn_clear();

        }

        protected void btn_clear()
        {
            txt_name.Text = "";
            txt_addr.Text = "";
            txt_contact.Text = "";
            txt_cpwd.Text = "";
            txt_date.Text = "";
                txt_id.Text="";
                txt_incharge.Text = "";
                txt_phone.Text = "";
                txt_pwd.Text = "";
        }

        protected void btn_exit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Visitor/Index.aspx");
        }

      
        
    }
}