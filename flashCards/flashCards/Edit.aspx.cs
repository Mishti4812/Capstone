using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Label2.Text = Session["Sess_UserName"].ToString();
                Label4.Text = "You are logged in as: ";
               
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
         
           
            TextBox1.Visible = true;
            Button3.Visible = true;
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            GridView2.Visible = true;
            TextBox1.Visible = false;
            Button3.Visible = false;
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            GridView2.Visible = false;
          
            Button3.Visible = false;
            TextBox1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            GridView2.Visible = false;
          
            Button3.Visible = false;
            TextBox1.Visible = false;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
           Session["EditCategory"] = GridView2.SelectedRow.Cells[2].Text;
            Session["EditSubject"] = GridView2.SelectedRow.Cells[3].Text;
            Session["FlashCardNaeEdit"] = GridView2.SelectedRow.Cells[1].Text;
            Response.Redirect("EditPublicFlash.aspx");
        }
    }
}