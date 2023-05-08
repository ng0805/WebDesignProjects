using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void SubmitVote(object sender, EventArgs e)
        {
            SqlDataSource1.Update();

            Response.Redirect("Votes.aspx");
        }
    }
}