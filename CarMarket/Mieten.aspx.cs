using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarMarket
{
    public partial class Mieten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
                Response.Redirect("/Account/Login.aspx");
            else
            {
                LoginDaten l = (LoginDaten)Session["User"];
                //Label1.Text = "Hallo " + l.User;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RequiredFieldValidator1.IsValid && RequiredFieldValidator2.IsValid)
            {
                Label1.Text = "Vielen Dank für Ihre Buchung eines " + Automarke.SelectedItem.Text + " " + Modell.Text + " von " + HiddenTextBox1.Text + " bis " + HiddenTextBox2.Text;
            }
        }

        public void Von_SelectionChanged(object sender, EventArgs e)
        {
            Calendar c = (Calendar)sender;
            HiddenTextBox1.Text = c.SelectedDate.ToString();
        }

        public void Bis_SelectionChanged(object sender, EventArgs e)
        {
            Calendar c = (Calendar)sender;
            DateTime dt = c.SelectedDate;
            dt = dt.AddHours(23);
            dt = dt.AddMinutes(59);
            dt = dt.AddSeconds(59);
            HiddenTextBox2.Text = dt.ToString();
        }
    }
}