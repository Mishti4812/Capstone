using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class EditPublicFlash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox2.Text = Session["EditCategory"].ToString();
                TextBox3.Text = Session["EditSubject"].ToString();

                Label6.Text = Session["FlashCardNaeEdit"].ToString();
                Label7.Visible = false;
                Label8.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                Button2.Visible = false;
                GridView1.Visible = false;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
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
                        Label5.Text = "<h1> Flashcard is created succesfuly </h1>";
                    }

                }
                catch (Exception ex)
                {
                    Label5.Text = ex.Message;
                }
            Label7.Visible = true;
            Label8.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            Button2.Visible = true;
            GridView1.Visible = true;
            Button1.Visible = false;
            RadioButton1.Visible = false;
            RadioButton2.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            Button3.Visible = true;
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Session["private"] = "yes";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Session["private"] = "no";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox4.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[2].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
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


                x.Question = TextBox4.Text;
                x.Answer = TextBox5.Text;
                x.CreatedBy = Session["Sess_UserName"].ToString();
                counter = x.CreateFlashcard();

                if (counter == 1)
                {
                   // Label9.Text = "<h1> Question is added succesfuly </h1>";
                }



            }
            catch (Exception ex)
            {
                //Label5.Text = "here is";
                Label5.Text = ex.Message;
            }
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            //Button3.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}