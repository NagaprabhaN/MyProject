using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resource_Management.HRStaff
{
    public partial class change_password : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Login = Session["user"].ToString();
            string pwd = Session["pwd"].ToString();
            int id=int.Parse(Session["id"].ToString());

            if (pwd == TextBox1.Text)
            {
                if (TextBox2.Text == TextBox3.Text)
                {
                    bl.change_pwd(id, TextBox1.Text, TextBox2.Text);
                }
                Label1.Text = "password changed";
            }
            else
                Label1.Text = "invalid password";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}