using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace TicketingApp
{
    public partial class Ticketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCheckAvailability_Click(object sender, EventArgs e)
        {
            string Source = ddlSource.SelectedValue;
            string Destination = ddlDestination.SelectedValue;
            DAL.Operations o = new DAL.Operations();
            lblAvailableSets.Visible = true;
            lblAvailableSets.Text = "Available Seats: ";
            lblAvailableSets.Text = lblAvailableSets.Text + Convert.ToString(o.CheckAvailability()) + "/45";
        }
    }
}