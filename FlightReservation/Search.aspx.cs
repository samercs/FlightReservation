using FlightReservation.Code;
using System;
using System.Data;
using System.Web.UI;

namespace FlightReservation
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var db = new Database();
                db.AddParameter("@from", Request.QueryString["from"]);
                db.AddParameter("@to", Request.QueryString["to"]);
                DataTable dt = db.ExecuteDataTable("select *, t2.Name as FromName, t3.name as ToName, AirLines.name as AirLineName  from ( ( (Tickets inner join AirPorts as t2 on (Tickets.AirPortFrom = t2.Id)) inner join  AirPorts as t3 on (Tickets.AirPortTo = t3.Id)) inner join AirLines on (Tickets.Airline = AirLines.Id))  where Tickets.AirportFrom=@from and Tickets.AirPortTo=@to");
                ListView1.DataSource = dt;
                ListView1.DataBind();
            }
        }
    }
}