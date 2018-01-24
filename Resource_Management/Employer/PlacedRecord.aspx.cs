using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Employer
{
    public partial class PlacedRecord : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        int id;
        string compname;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Session["id"].ToString());
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = bl.get_compname(id);
                compname=dt.Rows[0][0].ToString();
                getCompany();
            }
        }
        protected void getCompany()
        {
            DataTable dt = new DataTable();
            //string comp = dt.Rows[0][4].ToString();
            dt= bl.get_placed_comp(compname);
            gv_placedCand.DataSource = dt;
            gv_placedCand.DataBind();
        }
        protected void gv_placedCand_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}