using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Admin
{
    public partial class A_HRStaff : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        string id, pwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = Session["user"].ToString();
                pwd = Session["pwd"].ToString();
                fill_staff();
            }
        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            if (btn_Add.Text == "ADD")
            {
                insert_staffs();
                fill_staff();
                lbl_msg.Text = "New Staff added sussfully   ";
            }
            if (btn_Add.Text == "UPDATE")
            {
                update_staffs();
                fill_staff();
                btn_Add.Text = "ADD";
            }
        }

        protected void fill_staff()
        {
            DataTable dt = new DataTable();
            dt = bl.fill_staffs();
            GV_Staff.DataSource = dt;
            GV_Staff.DataBind();
        }
        protected void insert_staffs()
        {
            bl.insert_staff(txt_name.Text, txt_addr.Text, txt_phone.Text, txt_doj.Text, txt_desig.Text, txt_qual.Text, txt_ctc.Text, txt_userid.Text, txt_pwd.Text);
           
            txt_name.Text = "";
            txt_addr.Text = "";
            txt_phone.Text = "";
            txt_doj.Text = "";
            txt_desig.Text = "";
            txt_ctc.Text = "";
            txt_pwd.Text = "";
            txt_qual.Text = "";
            txt_userid.Text = "";
           
        }

        
        protected void update_staffs()
        {
            bl.update_staff(txt_name.Text, txt_addr.Text, txt_phone.Text, txt_doj.Text, txt_desig.Text, txt_qual.Text, txt_ctc.Text, txt_userid.Text, txt_pwd.Text, staffid);
            lbl_msg.Text = "staff data updated";
           
        }

        static int staffid;
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridViewRow r = (GridViewRow)((LinkButton)sender).Parent.Parent;
            staffid = int.Parse(((LinkButton)sender).CommandArgument);
            txt_name.Text = r.Cells[1].Text;
            txt_addr.Text = r.Cells[2].Text;
            txt_phone.Text = r.Cells[3].Text;
            txt_doj.Text = r.Cells[4].Text;
            txt_desig.Text = r.Cells[5].Text;
            txt_qual.Text = r.Cells[6].Text;
            txt_ctc.Text = r.Cells[7].Text;
            txt_userid.Text = r.Cells[8].Text;
            txt_pwd.Text = r.Cells[9].Text;
            btn_Add.Text = "UPDATE";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            GridViewRow r = (GridViewRow)((LinkButton)sender).Parent.Parent;
            staffid = int.Parse(((LinkButton)sender).CommandArgument);
            bl.delete_staff(staffid);
            fill_staff();

            
           lbl_msg.Text = "Staff removed sucessfully";
        }

    }
}