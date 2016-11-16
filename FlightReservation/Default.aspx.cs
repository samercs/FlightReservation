using FlightReservation.Code;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlightReservation
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Database db = new Database();
                db.LoadDDL("AirPorts", ref ddlFrom, "Flying from");
                db.LoadDDL("AirPorts", ref ddlTo, "Flying to");
                for (int i = 1; i <= 10; i++)
                {
                    ddlAdults.Items.Add(new ListItem(i.ToString(), i.ToString()));
                    ddlChildren.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
        }
    }
}