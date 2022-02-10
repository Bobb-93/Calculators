using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Credit_Calculator
{
    public partial class CalculatorRefinance: Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculatorRefinance_Click(object sender, EventArgs e)
        {
            decimal refinanceAmount = Convert.ToDecimal(refinanceAmountTextBox.Text);
            decimal interestPercent = Convert.ToDecimal(interestPercentTextBox.Text);
            decimal loanTermRefinance = Convert.ToDecimal(loanTermRefinanceTextBox.Text);//брой месеци - дали може и да е int, а не decimal
            decimal paymentsMade = Convert.ToDecimal(paymentsMadeTextBox.Text);//брой вноски - дали може и да е int, а не decimal
            decimal earlyRepaymentPenalty = Convert.ToDecimal(earlyRepaymentPenaltyTextBox.Text);
            decimal newInterestRate = Convert.ToDecimal(newInterestRateTextBox.Text);
            decimal initialFeesPercent = Convert.ToDecimal(initialFeesPercentTextBox.Text);
            decimal initialFeesAmount = Convert.ToDecimal(initialFeesAmountTextBox.Text);
        }
    }
}