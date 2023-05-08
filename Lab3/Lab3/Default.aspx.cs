using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int storedPrimes = 0, currentNum = 2; //Start at 2

            bool Prime;

            while (true)
            {
                Prime = true; //Prime starts as true and is set to false if number is found not to be Prime
                
                for(int i = 2;i <= Math.Sqrt(currentNum);i++) //Cycle through all numbers between 2 and currentNum - 1, 1 and itself are excluded
                {
                    if (currentNum % i == 0)
                    {
                        Prime = false;
                    }
                }

                if (Prime) //If number is found to be prime then add it to the list and increment number of primes
                {
                    storedPrimes++;
                    PrimesList.Items.Add(currentNum.ToString());
                }

                if (storedPrimes == 100) //Auits program when 100 primes are reached
                {
                    return;
                }

                currentNum++; //increment number until 100 primes are found
            }
        }
    }
}