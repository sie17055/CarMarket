using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarMarket
{
    public partial class _Default : Page
    {
        protected void mnuTabs_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            multiTabs.ActiveViewIndex = index;
        }
    }
}