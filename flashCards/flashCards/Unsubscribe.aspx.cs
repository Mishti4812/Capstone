using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class Unsubscribe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                        
                Response.Redirect("Home.aspx");

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            UserDetails x = new UserDetails();
            x.UserName = Session["Sess_UserName"].ToString();
            int counter = x.Unsubscribe();
            if (counter == 1)
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }

        }
    }
}