using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Credit_Calculator
{
    public partial class LeasingCalculator: Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LeasingCalculator_Click(object sender, EventArgs e)
        {
            decimal priceWithVAT = Convert.ToDecimal(priceWithVATTextBox.Text);
            decimal firstInstallment = Convert.ToDecimal(firstInstallmentTextBox.Text);
            decimal leasingPeriod = Convert.ToDecimal(leasingPeriodTextBox.Text);
            decimal monthlyPaymentTextBox = Convert.ToDecimal(leasingPeriodTextBox.Text);
            decimal initialTaxProcessing = Convert.ToDecimal(initialTaxProcessingTextBox.Text);
            string cboTaxProcessing = cboTaxProcessingDropDown.Text;
        }
    }
}