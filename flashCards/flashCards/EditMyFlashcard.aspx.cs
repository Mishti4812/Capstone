using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class EditMyFlashcard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Label1.Text = Session["Sess_UserName"].ToString();
                Label2.Text = "You are logged in as: ";
                
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Text = GridView1.SelectedRow.Cells[1].Text;
            Label5.Text = GridView1.SelectedRow.Cells[3].Text;
            Label4.Text = GridView1.SelectedRow.Cells[2].Text;
           // Label6.Text = GridView1.SelectedRow.Cells[4].Text;
            GridView1.Visible = false;
            Button1.Visible = true;
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}