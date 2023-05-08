using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int count = (int)Session["Count"];

            cartCount.Text = count.ToString() + " items in cart.";
        }

        protected void AddItem(object sender, EventArgs e)
        {
            if (itemList.SelectedIndex == -1) //If no item is selected
            {
                cartCount.Text = "Select an Item.";
            }
            else //If an item is selected
            {
                //Fetch Item List and Add Selected item
                List<String> cartList = (List<String>)Session["Cart"];

                cartList.Add(itemList.SelectedValue);

                //Increment Item Count and Display
                Session["Cart"] = cartList;

                int count = (int)Session["Count"];

                count++;

                cartCount.Text = "Item Added. " + count.ToString() + " items in cart.";

                Session["Count"] = count;

                //Clear Selection in List Box
                itemList.ClearSelection();
            }
        }

        protected void ViewCart(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }
    }
}