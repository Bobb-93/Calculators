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
            decimal monthlyPayment = Convert.ToDecimal(monthlyPaymentTextBox.Text);

            string initialTaxProcessingText = initialTaxProcessingTextBox.Text;
            decimal initialTaxProcessing;
            string cboTaxProcessing = cboTaxProcessingDropDown.Text;

            if(initialTaxProcessingText == "")
            {
                initialTaxProcessing = 0;
            }
            else
            {
                initialTaxProcessing = Convert.ToDecimal(initialTaxProcessingTextBox.Text);

                if (cboTaxProcessing == "%")
                {
                    initialTaxProcessing = priceWithVAT * (initialTaxProcessing/100);
                }
                //else if (cboTaxProcessing == "лв")
                //{

                //}
            }

            decimal totalPrice = firstInstallment + (leasingPeriod * monthlyPayment) + initialTaxProcessing;
            
            //НЕ работи като хората
            decimal percantageCost = ((totalPrice - firstInstallment) / priceWithVAT)*100;

            totalPaid.Text = totalPrice.ToString("0.00");
            yearPercentageCost.Text = percantageCost.ToString("0.00") +"%";

            if(initialTaxProcessing == 0)
            {
                totalTaxes.Text = "NA";
            }
            else
            {
                totalTaxes.Text = initialTaxProcessing.ToString("0.00");

            }
            
        }
    }
}