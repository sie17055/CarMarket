using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarMarket
{
    public partial class Bewertungen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["b_id"].DefaultValue = (GridView1.Rows.Count+1).ToString();
            SqlDataSource1.InsertParameters["b_mo_id"].DefaultValue = Modell.SelectedValue;
            SqlDataSource1.InsertParameters["b_user"].DefaultValue = User.Identity.Name;
            SqlDataSource1.InsertParameters["b_text"].DefaultValue = textarea1.Value;
            SqlDataSource1.InsertParameters["b_punkte"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource1.Insert();
        }
    }
}