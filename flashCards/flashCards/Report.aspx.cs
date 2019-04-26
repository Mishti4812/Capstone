using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flashCards
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if (Session["Sess_UserName"] != null)
                {
                    Label2.Text = Session["Sess_UserName"].ToString();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
                
            }
           // Label4.Visible = false;
            
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //Label4.Visible = false;
           // string x = "1";
           // Label3.Visible = false;
           // x = GridView1.Rows.Count.ToString();
           // int y = GridView1.Rows.Count;

            //Label4.Text = y.ToString();

            /*if ( x == "0")
            {
                Label4.Visible = true;
                //Label4.Text = "<h1> No Result was found </h1>";
                //Label4.Text = x;
            }
            else if (x == "1")
            {
                //Label4.Visible = false;
            }*/
            
         
             
        }
        
    }
    
}