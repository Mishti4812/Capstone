using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["Sess_LoginAttempt"] = 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserDetails x = new UserDetails();
            x.UserName = TextBox3.Text;
            x.Password = TextBox2.Text;

            int Counter = x.CheckCredentials();
            

            if (Counter == 1)
            {
                Session["Sess_UserName"] = TextBox3.Text;
                Session["Sess_Password"] = TextBox2.Text;
                Response.Redirect("Home.aspx");

            }
            else
            {
                int count =  Convert.ToInt32 (Session["Sess_LoginAttempt"]);
                count++;
                Session["Sess_LoginAttempt"] = count;
                if (count == 3)
                {
                    
                    UserDetails j = new UserDetails();
                    j.UserName = TextBox3.Text;
                    int n = j.inactive();
                    if (n == 1)
                    {


                        Label3.Text = "<h1> Your account has been locked! Please contact the admin</h1>";
                    }
                    else
                    {
                        Label3.Text = "<h1> The user name doesnot exsist !</h1>";


                    }


                }
                else
                {
                    int j = 3 - count;
                    if (j < 0)
                    {
                        j = 0;
                    }
                    string k = j.ToString();
                    string display = " <h3> Invalid UserName or Password!Attempts remaining = </h3>"+j;
                    Label3.Text =display ;




                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}