using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace flashCards
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["Sess_UserName"] != null)
                {
                    Label1.Text = "You are loged in as: " + Session["Sess_UserName"].ToString();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
               
                
                  FlashcardCreate x = new FlashcardCreate();
                  DataSet dset = x.GetListOfCategories();
               

                    DropDownList2.DataSource = dset;
                DropDownList2.DataTextField = "category";
                DropDownList2.DataValueField = "category";
                DropDownList2.DataBind();

               
                FlashcardCreate y = new FlashcardCreate();
                DataSet dset1 = y.GetListOfFlashcards();
               
                GridView2.Visible = false;
                TextBox3.Visible = false;
                Label5.Text = "<h3> Select a flashcard to study</h3>";


            }
        }
        
         

          

    

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreatFlashcard.aspx");

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //TextBox1.Text = DropDownList2.SelectedValue.ToString();
            /*FlashcardCreate y = new FlashcardCreate();
            DataSet dset1 = y.GetListOfSubjectsCategories();*/

            //y.Name = TextBox1.Text;
            GridView2.Visible = true;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //TextBox3.Text = DropDownList3.SelectedValue.ToString();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox3.Visible = true;
            TextBox3.Text = GridView2.SelectedRow.Cells[1].Text;
            Session["choice"] = TextBox3.Text;
            Session["category"] = GridView2.SelectedRow.Cells[2].Text;
            Session["subject"] = GridView2.SelectedRow.Cells[3].Text;
            

            Button4.Visible = true;



        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button4.Visible = false;
            Response.Redirect("Study.aspx");
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx");
        }
    }
    }
