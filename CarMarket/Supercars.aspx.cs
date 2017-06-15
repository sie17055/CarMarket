using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarMarket
{
    public partial class Supercars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DetailsView1.DataBind();
            }
        }

        public void datagrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            DetailsView1.SetPageIndex(datagrid.SelectedIndex * (datagrid.PageIndex + 1));
        }
    }
}