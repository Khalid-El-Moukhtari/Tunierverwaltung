using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mannschaft
{
    public partial class Turnierverwaltung : System.Web.UI.Page
    {
        private controller _verwalter;
        public controller Verwalter { get => _verwalter; set => _verwalter = value; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (this.Session["Verwalter"] != null)
            {
                Verwalter = (controller)this.Session["Verwalter"];
            }
            else
            {
                this.Response.Redirect("Login.aspx");
            }
        }

        protected void neu_Click(object sender, EventArgs e)
        {

        }        
        protected void loeschen_Click(object sender, EventArgs e)
        {

        }
    }
}