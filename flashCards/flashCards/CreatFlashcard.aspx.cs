using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace flashCards
{
    public partial class CreatFlashcard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Session["private"] = "yes";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Questions x = new Questions();
            int counter = 0;
            try
            {
                x.Name = TextBox1.Text;
                x.Catagory = TextBox2.Text;
                x.Section = TextBox3.Text;
                
                if (Session["private"].ToString() == "yes")
                {
                    x.Private = true;
                }
                else
                {
                    x.Private = false;
                }


                x.Question = TextBox5.Text;
                x.Answer = TextBox6.Text;
                x.CreatedBy = Session["Sess_UserName"].ToString();
                counter = x.CreateFlashcard();
              
                if (counter == 1)
                {
                    Label7.Text = "<h1> Question is added succesfuly </h1>";
                }



            }
            catch(Exception ex)
            {
                //Label5.Text = "here is";
               Label5.Text = ex.Message;
            }
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            Button3.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FlashcardCreate y = new FlashcardCreate();
            int counter = 0;

            try
            {
                if (Session["private"].ToString() == "yes")
                {
                    y.Private = true;
                }
                else
                {
                    y.Private = false;
                }
                
                y.Name = TextBox1.Text;
                y.Category = TextBox2.Text;
                y.Subject = TextBox3.Text;
                y.CreatedBy = Session["Sess_UserName"].ToString();
                counter = y.create_Flashcard();
                if (counter == 1)
                {
                    Label7.Text = "<h1> Flashcard is created succesfuly </h1>";
                }

            }
            catch(Exception ex)
            {
                Label7.Text = ex.Message;
            }
            Button2.Visible = false;
            Button3.Visible = true;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            RadioButton1.Visible = false;
            RadioButton2.Visible = false;
            Button3.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            TextBox5.Visible = true;
            TextBox6.Visible = true;
            Button1.Visible = true;
            Button4.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label7.Text = "";
            Button3.Visible = false;
            
            TextBox1.Visible = false;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Session["private"] = "no";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
   
}