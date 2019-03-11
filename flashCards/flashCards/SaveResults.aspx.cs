using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class SaveResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DropDownList1.Visible = true;
            Button2.Visible = false;
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            saveChangesWithRating();

        }
        protected void saveChangesWithRating ()
        {
            Label2.Text = Session["sess_username"].ToString();
            Label3.Text = Session["choice"].ToString();
            Label4.Text = Session["category"].ToString();
            Label5.Text = Session["subject"].ToString();
            Label6.Text = Session["complete"].ToString();
            Label7.Text = Session["correctPercentage"].ToString();
            Label8.Text = DropDownList1.SelectedValue.ToString();
            Label9.Text = DateTime.Now.ToShortDateString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = Session["sess_username"].ToString();
            Label3.Text = Session["choice"].ToString();
            Label4.Text = Session["category"].ToString();
            Label5.Text = Session["subject"].ToString();
            Label6.Text = Session["complete"].ToString();
         
                Label7.Text = Session["correctPercentage"].ToString();

            
            
            Label8.Text = "-1";
            //Label9.Text = DateTime.Now.ToString("mm/dd/yyyy");
            Label9.Text = DateTime.Now.ToShortDateString();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Study1 x = new Study1();
            int counter = 0;
            try
            {
                x.UserName = Label2.Text;
                x.FlascardName = Label3.Text;
                
                x.Category = Label4.Text;
                x.Subject = Label5.Text;
                x.PercentageCompleted = Convert.ToDouble(Label6.Text);
                x.PercentageCorrect = Convert.ToDouble(Label7.Text);
                x.Rating = Convert.ToInt32(Label8.Text);
                x.StudyDate = Label9.Text;

                counter = x.studyRecord();
                if (counter == 1)
                {
                    Label10.Text = "<h1> Saved</h1>";
                }
            }
            catch(Exception ex)
            {
                Label10.Text = ex.Message;
            }

            Button3.Visible = false;
            Response.Redirect("Home.aspx");
        }
    }
}