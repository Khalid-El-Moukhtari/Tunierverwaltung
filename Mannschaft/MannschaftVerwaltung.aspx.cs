using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mannschaft
{
    public partial class MannschaftVerwaltung : System.Web.UI.Page
    {
        private controller _verwalter;
        public controller Verwalter { get => _verwalter; set => _verwalter = value; }


        protected void Page_Init(object sender, EventArgs e)
        {
            this.Verwalter = Global.Verwalter;
        }

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
            if (!IsPostBack)
            { 
                neuespieler();

            }
            eingabefelder();
            tblladen();
           


        }

        private void neuespieler()
        {
            for (int index = 0; index < Verwalter.Personen.Count; index++)
            {
                ListBox1.Items.Insert(index,Verwalter.Personen[index].Name+", "+Verwalter.Personen[index].alter+", " + Verwalter.Personen[index].Herkunft);
               
            }
           
        }

        private void tblladen()
        {
            for (int index = 0; index < Verwalter.Mannschafts1.Count; index++)
            {
                TableCell c1 = new TableCell();
                TableCell c2 = new TableCell();
                TableCell c3 = new TableCell();

                TableRow neuerow = new TableRow();
                c1.Text = Verwalter.Mannschafts1[index].Mannschaftname;
                c2.Text = Verwalter.Mannschafts1[index].Sportart;


                string i = Convert.ToString(Verwalter.Mannschafts1[index].ID);
                c3.Text = i;
                TableCell[] allCelles = { c3, c2, c1 };
                neuerow.Cells.AddRange(allCelles);
                Table5.Rows.Add(neuerow);

               
            }
        }

        public void eingabefelder()
        {
            TableCell newCell = new TableCell();
            TableRow neuerow = new TableRow();
            TextBox tx1 = new TextBox();
            Label lab1 = new Label();
            lab1.Text = "Mannschaftsname  ";
            tx1.ID = "nameID";
            newCell.Controls.Add(lab1);
            newCell.Controls.Add(tx1);
            neuerow.Cells.Add(newCell);
            datentbl.Rows.Add(neuerow);
            tx1.ForeColor = Color.Black;

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void loeschen_Click(object sender, EventArgs e)
        {
            int pos = ListBox2.SelectedIndex;
            ListBox2.Items.RemoveAt(pos);
            ListBox1.Items.Add(Verwalter.Personen[pos].ID + "," + Verwalter.Personen[pos].Name + ", " + Verwalter.Personen[pos].alter + ", " + Verwalter.Personen[pos].Herkunft);

        }

        protected void neu_Click(object sender,EventArgs e)
        {
            int pos = ListBox1.SelectedIndex;
            ListBox1.Items.RemoveAt(pos);
            
            ListBox2.Items.Add(Verwalter.Personen[pos].ID+","+ Verwalter.Personen[pos].Name+", "+ Verwalter.Personen[pos].alter+", "+ Verwalter.Personen[pos].Herkunft);
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Items[0].Selected)
            {
                TableCell c1 = new TableCell();
                TableCell c2 = new TableCell();
                TableCell c3 = new TableCell();

                TableRow neuerow = new TableRow();
                c1.Text = this.Request.Form["ctl00$MainContent$nameID"];
                c2.Text = "Fußball";
                int id = Verwalter.Mannschafts1.Count + 1;


                string i = Convert.ToString(id);
                c3.Text = i;
                TableCell[] allCelles = { c3, c2, c1 };
                neuerow.Cells.AddRange(allCelles);
                Table5.Rows.Add(neuerow);

                Mannschaft m1 = new Mannschaft(id, c1.Text, c2.Text);
                Verwalter.Mannschafts1.Add(m1);


               

            }
            else if (DropDownList1.Items[1].Selected)
            {
                TableCell c1 = new TableCell();
                TableCell c2 = new TableCell();
                TableCell c3 = new TableCell();
                
                TableRow neuerow = new TableRow();
                c1.Text = this.Request.Form["ctl00$MainContent$nameID"];
                c2.Text = "Handball";
                int id = Verwalter.Mannschafts1.Count + 1;

                string i = Convert.ToString(id);
                c3.Text = i;
                TableCell[] allCelles = { c3,c2, c1 };
                neuerow.Cells.AddRange(allCelles);
                Table5.Rows.Add(neuerow);

                Mannschaft m1 = new Mannschaft(id, c1.Text, c2.Text);
                Verwalter.Mannschafts1.Add(m1);

                //m1.Personen.Add();
            }
            else if (DropDownList1.Items[2].Selected)
            {
                TableCell c1 = new TableCell();
                TableCell c2 = new TableCell();
                TableCell c3 = new TableCell();
                TableRow neuerow = new TableRow();
                c1.Text = this.Request.Form["ctl00$MainContent$nameID"];
                c2.Text = "Tennis";
                int id = Verwalter.Mannschafts1.Count + 1;
                string i = Convert.ToString(id);
                c3.Text = i;
                TableCell[] allCelles = {c3, c2, c1 };
                neuerow.Cells.AddRange(allCelles);
                Table5.Rows.Add(neuerow);

                Mannschaft m1 = new Mannschaft(id, c1.Text, c2.Text);
                Verwalter.Mannschafts1.Add(m1);
            }
            else
            {

            }


        }
    }
}