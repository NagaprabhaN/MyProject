using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resource_Management.Admin
{
    public partial class Placed_Record : System.Web.UI.Page
    {
        BAL.BAL bl = new BAL.BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt= bl.get_placed();
                gv_placedCand.DataSource = dt;
                gv_placedCand.DataBind();
            }
        }
    }
}