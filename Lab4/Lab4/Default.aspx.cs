using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void FromUSD(object sender, EventArgs e)
        {
            try
            {
                String input = USDInput.Text;
                String dropDownVal = USDDropDown.SelectedValue;

                Decimal convert = Decimal.Parse(input);
                convert = convert * Decimal.Parse(dropDownVal);

                IntlVal.Text = Math.Round(convert, 2).ToString();
                IntlName.Text = " " + USDDropDown.SelectedItem.ToString(); //Round Decimal 2 places then convert to string and add name of currency

                ErrorMsg.Text = ""; //clear Error message if Success
            }

            catch (Exception)
            {
                ErrorMsg.Text = "Please enter a numerical value";
            }
        }
        protected void ToUSD(object sender, EventArgs e)
        {
            try
            {
                String input = IntlInput.Text;
                String dropDownVal = IntlDropDown.SelectedValue;

                Decimal convert = Decimal.Parse(input);
                convert = convert / Decimal.Parse(dropDownVal);

                USDVal.Text = Math.Round(convert, 2).ToString();
                USDName.Text = " USD"; //Round Decimal 2 places then convert to string
                
                ErrorMsg.Text = ""; //clear Error message if Success
            }
            catch (Exception)
            {
                ErrorMsg.Text = "Please enter a numerical value";
            }
        }
    }
}