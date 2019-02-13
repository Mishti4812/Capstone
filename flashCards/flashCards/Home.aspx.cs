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
                /*FlashcardCreate y = new FlashcardCreate();
                DataSet dset1 = y.GetListOfSubjectsCategories();*/
                





                    DropDownList2.DataSource = dset;
                DropDownList2.DataTextField = "category";
                DropDownList2.DataValueField = "category";
                DropDownList2.DataBind();

                /*DropDownList3.DataSource = dset1;
                DropDownList3.DataTextField = "subject";
                DropDownList3.DataValueField = "subject";
                DropDownList3.DataBind();*/


            }
        }
        
         

          

    

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreatFlashcard.aspx");

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = DropDownList2.SelectedValue.ToString();
            /*FlashcardCreate y = new FlashcardCreate();
            DataSet dset1 = y.GetListOfSubjectsCategories();*/

            //y.Name = TextBox1.Text;

        }
    }
    }
