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
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label7.Text = "";
            Button3.Visible = false;
        }
    }
   
}