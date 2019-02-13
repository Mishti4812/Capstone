using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["Sess_Password"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string oldPassword = Session["Sess_Password"].ToString();
            string oldPassword2 = TextBox1.Text;
            string text2 = TextBox2.Text;
            string text3 = TextBox3.Text;
            UserDetails x = new UserDetails();

            if (oldPassword == oldPassword2)
            {
                if (text2 == "")
                {
                    Label4.Text = "<h1> All required fileds are not entered</h1>";
                }
                else if (text2 == text3)
                {
                    x.Password = TextBox3.Text;
                    x.UserName = Session["Sess_UserName"].ToString();
                    int counter = x.changePassword();
                    if (counter == 1)
                    {
                        Label4.Text = "<h1> Your password has been changed succesfuly</h1>";
                    }
                }
                else if (text2 != text3)
                {
                    Label4.Text = "<h1> Confirm new password again</h1>";
                }
                else
                {
                    Label4.Text = "<h1> Your password couldnt be updated, contact admin </h1>";

                }
                
            }
            else
            {
                Label4.Text = "<h1> Enter old password again <h1>";
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}