using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserDetails x = new UserDetails();
            int counter = 0;
            try
            {
                
                
                    if (TextBox2.Text == TextBox3.Text)
                    {
                        x.UserName = TextBox1.Text;
                        x.Password = TextBox2.Text;
                        if (x.Password == "")
                        {
                            x.Password = null;
                        }
                        x.Email = TextBox4.Text;
                        if (x.Email == "")
                        {
                            x.Email = null;
                        }
                        counter = x.CreateUser();

                        if (counter == 1)
                        {
                            Label1.Text = "<h1>Your account has been created!</h1>";
                            loginButton.Visible = true;
                        }
                    }
                    else
                    {
                        Label1.Text = "<h1> Confirm password again!</h1>";
                    }
                

            }
            catch (Exception ex)
            {
                if (ex.Message.StartsWith("Violation of PRIMARY KEY constraint"))
                {
                    Label1.Text = "<h1> The UserName is already used!</h1> ";
                    loginButton.Visible = false;
                }
                else if (ex.Message.StartsWith("Procedure or function 'USP_UserDetails_Insert' expects parameter"))
                {
                    Label1.Text = "<h1> Required fields are not filled! <h1/>";
                }
                else
                {
                    Label1.Text = ex.Message;
                }
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
           /* string x = TextBox2.Text.Trim();
            if (x.Length < 4 )
            {
                args.IsValid = false;
            }
            /*for (int i = 0; i < x.Length; i++)
            {
                if (char.IsUpper(x[i]))
                {
                    for (int j = 0; j < x.Length; j++)
                    {
                        if (char.IsDigit(x[j]))
                        {
                            args.IsValid = true;
                        }
                        else
                        {
                            args.IsValid = false;
                        }
                    }
                }
                else
                {
                    args.IsValid = false;
                }
            }*/
        }

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            string x = TextBox2.Text.Trim();
            if (x.Length < 4)
            {
                args.IsValid = false;
                
            }
            else
            {
                args.IsValid = true;
                
            }
            

        }
    }
}