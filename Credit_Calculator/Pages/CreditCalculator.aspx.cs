using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Credit_Calculator
{
    public partial class CreditCalculator : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreditCalculator_Click(object sender, EventArgs e)
        {
            decimal amount = Convert.ToDecimal(amountTextBox.Text);
            decimal loanTerm = Convert.ToDecimal(loanTermTextBox.Text);//брой месеци - дали може и да е int, а не decimal
            decimal interestPercantage = Convert.ToDecimal(interestPercantageTextBox.Text);
            string paymentType = paymentTypeDropDown.Text;
            decimal promotionPeriod = Convert.ToDecimal(promotionPeriodTextBox.Text);//брой месеци - дали може и да е int, а не decimal
            decimal promotionalInterest = Convert.ToDecimal(promotionalInterestTextBox.Text);
            decimal gratisPeriod = Convert.ToDecimal(gratisPeriodTextBox.Text);//брой месеци - дали може и да е int, а не decimal
            decimal taxEntry = Convert.ToDecimal(taxEntryTextBox.Text);
            string entryTax = entryTaxDropDown.Text;
            decimal taxProcessing = Convert.ToDecimal(taxProcessingTextBox.Text);
            string cboProcessingTax = cboProcessingTaxDropDown.Text;

            decimal otherTaxes = Convert.ToDecimal(otherTaxesTextBox.Text);
            string cboOther = cboOtherTaxDropDown.Text;

            decimal taxYearManagement = Convert.ToDecimal(taxYearManagementTextBox.Text);
            string cboYearManagement = cboYearManagementDropDown.Text;

            decimal taxOtherYear = Convert.ToDecimal(taxOtherYearTextBox.Text);
            string cboOtherYear = cboOtherYearDropDown.Text;

            decimal taxMonthManagement = Convert.ToDecimal(taxMonthManagementTextBox.Text);
            string cboMonthManagement = cboMonthManagementDropDown.Text;

            decimal taxOtherMonth = Convert.ToDecimal(taxOtherMonthTextBox.Text);
            string cboOtherMonth = cboOtherMonthDropDown.Text;
        }
    }
}