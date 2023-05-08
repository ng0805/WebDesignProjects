using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6
{
    public partial class ViewCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Fetch Cart and Display in List Box
            List<String> cartList = (List<String>)Session["Cart"];

            cartItems.DataSource = cartList;

            cartItems.DataBind();
        }

        protected void Shop(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Empty(object sender, EventArgs e)
        {
            //Clear Session Cart List, Item Count, and List Box
            Session["Cart"] = new List<String>();

            Session["Count"] = 0;

            cartItems.DataSource = new List<String>();

            cartItems.DataBind();
        }
    }
}