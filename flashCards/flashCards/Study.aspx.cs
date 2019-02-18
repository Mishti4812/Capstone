using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class Study : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Label1.Text = Session["Sess_UserName"].ToString();
                Label3.Text = Session["category"].ToString();
                Label4.Text = Session["subject"].ToString();
                Label5.Text = Session["choice"].ToString();
                Label8.Text = GridView4.Rows[0].Cells[3].Text;
                Label10.Text = GridView4.Rows[0].Cells[4].Text;
                Session["count"] = 0;
                Session["correct"] = 0;
                Button2.Visible = false;
                GridView4.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string correctAnswere = Label10.Text.ToString().Trim();
            string responedAnswer = TextBox1.Text.ToString().Trim();
            if (correctAnswere.ToUpper() == responedAnswer.ToUpper())
            {
                double correct = Convert.ToDouble(Session["correct"]);
                correct++;
                Session["correct"] = correct;
                Label8.Text = "<h1>Correct</h1>";
                Label9.Visible = false;
                double y = Convert.ToDouble(Session["correct"]);
                double percentage = (y/GridView4.Rows.Count)*100;
                Label15.Text = percentage.ToString("N2");
                Session["correctPercentage"] = percentage;
                
            }
            else
            {
                Label8.Text = "<h1>Incorrect</h1>";
                Label9.Visible = true;
                Label10.Visible = true;
            }
            if (Button1.Visible == true)
            {
                Button1.Visible = false;
                Button2.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label9.Visible = false;
            Label10.Visible = false;
            TextBox1.Text = "";
            int count = Convert.ToInt32(Session["count"]);
            count++;
            Session["count"] = count;
            
            double count2 = Convert.ToDouble(count);
            double percentage = (count2 / GridView4.Rows.Count) *100;
            
            Label13.Text = percentage.ToString("N2");
            
            if (count < GridView4.Rows.Count)
            {
                Label8.Text = GridView4.Rows[count].Cells[3].Text;
                Label10.Text = GridView4.Rows[count].Cells[4].Text;
            }
            else
            {
                Label8.Text = "<h3> End of Quiz</h3>";
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = true;
            }
            if (Button2.Visible == true)
            {
                Button2.Visible = false;
                Button1.Visible = true;
            }
            Session["complete"] = percentage;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SaveResults.aspx");
        }
    }
}