using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClearData(object sender, EventArgs e)
        {   
            Decimal.Text = string.Empty;
            Hex.Text = string.Empty;
            ErrorMsg.Text = string.Empty;
        }

        protected void ConvertData(object sender, EventArgs e)
        {
            bool bothFull = !String.IsNullOrEmpty(Decimal.Text) && !String.IsNullOrEmpty(Hex.Text);
            bool bothEmpty = String.IsNullOrEmpty(Decimal.Text) && String.IsNullOrEmpty(Hex.Text);


            if (bothFull || bothEmpty) //If both text boxes have data or if both are empty then display error
            {
                ErrorMsg.Text = "Enter one value.";
            }

            else
            {
                try
                {
                    if (!String.IsNullOrEmpty(Decimal.Text)) //if Decimal text box has data
                    {
                        uint dec = uint.Parse(Decimal.Text);
                        
                        Hex.Text = dec.ToString("X");

                        ErrorMsg.Text = string.Empty;
                    }

                    else if(!String.IsNullOrEmpty(Hex.Text)) //if Hex text box has data
                    {
                        uint hex = Convert.ToUInt32(Hex.Text, 16);

                        Decimal.Text = hex.ToString();

                        ErrorMsg.Text = string.Empty;
                    }
                }
                catch (Exception) //if any error is caught then display error message
                {
                    ErrorMsg.Text = "Please enter a correct value.";
                }
            }
        }
    }
}