using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Configuration;

namespace Resource_Management.Admin
{
    public partial class A_Jobseeker : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected string tomail, emailsubj, emailmessage;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = bl.fill_unplaced_toEmail();
                GridView1.DataSource = dt;
                GridView1.DataBind();
                fill_domain();
                emailsubj = Convert.ToString(DropDownList1.Text+"\t Interview on "+TextBox2.Text);
                emailmessage = Convert.ToString("Interview for " + DropDownList1.Text + " Held on " + TextBox2.Text + "\n Description:\n" + TextBox1.Text);
            }
        }

        protected void btn_sendMail_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkstatus = (row.Cells[8].FindControl("chk_send") as CheckBox);
                    if (chkstatus.Checked)
                    {
                        string ch=chkstatus.Text;
                        if (row.Cells[6].Text == "Pending")
                        {
                            tomail = Convert.ToString(row.Cells[7].Text);
                            send_mail(tomail, emailsubj, emailmessage);
                        }
                    }

                }
            }
            lbl_msg.Text = "Emails sent to selected candidates";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }

        public static void send_mail(String tomail, string subject, string message)
        {
            string Hostadd = ConfigurationManager.AppSettings["Host"].ToString();
            string fromMailId = ConfigurationManager.AppSettings["FromMail"].ToString();
            string Pass = ConfigurationManager.AppSettings["password"].ToString();

            MailMessage mm = new MailMessage();
            mm.From = new MailAddress(fromMailId);
            mm.Subject = subject;
            mm.Body = message;
            mm.IsBodyHtml = true;
            mm.To.Add(new MailAddress(tomail));

            SmtpClient ss = new SmtpClient();
            ss.Host = Hostadd;

            ss.EnableSsl = true;
            NetworkCredential netcred = new NetworkCredential();
            netcred.UserName = mm.From.Address;
            netcred.Password = Pass;
            ss.UseDefaultCredentials = true;
            ss.Credentials = netcred;
            ss.Port = 587;
            ss.Send(mm);
        }

        protected void fill_domain()
        {
            DropDownList1.Items.Clear();
            DataTable dt = new DataTable();
            dt = bl.fill_Domain_data();
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "DomainName";
            DropDownList1.DataValueField = "DomainID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "---select---");
            //DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
            ////DropDownList1.Items[0].Value = "0";
            //DropDownList1.SelectedIndex = 0;
        }
    }
}