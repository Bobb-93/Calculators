using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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

            //полетата оттук надолу не са задължителни
            string promotionPeriodText = promotionPeriodTextBox.Text;
            decimal promotionPeriod;//брой месеци - дали може и да е int, а не decimal

            string promotionalInterestText = promotionalInterestTextBox.Text;
            decimal promotionalInterest;

            string gratisPeriodText = gratisPeriodTextBox.Text;
            decimal gratisPeriod;//брой месеци - дали може и да е int, а не decimal

            string taxEntryText = taxEntryTextBox.Text;
            decimal taxEntry;
            string entryTax = entryTaxDropDown.Text;

            string taxProcessingText = taxProcessingTextBox.Text;
            decimal taxProcessing;
            string cboProcessingTax = cboProcessingTaxDropDown.Text;

            string otherTaxesText = otherTaxesTextBox.Text;
            decimal otherTaxes;
            string cboOther = cboOtherTaxDropDown.Text;

            string taxYearManagementText = taxYearManagementTextBox.Text;
            decimal taxYearManagement;
            string cboYearManagement = cboYearManagementDropDown.Text;

            string taxOtherYearText = taxOtherYearTextBox.Text;
            decimal taxOtherYear;
            string cboOtherYear = cboOtherYearDropDown.Text;

            string taxMonthManagementText = taxMonthManagementTextBox.Text;
            decimal taxMonthManagement;
            string cboMonthManagement = cboMonthManagementDropDown.Text;

            string taxOtherMonthText = taxOtherMonthTextBox.Text;
            decimal taxOtherMonth;
            string cboOtherMonth = cboOtherMonthDropDown.Text;

            
            //Анюитетни или намаляващи вноски.
            if(paymentType == "annuity")
            {

            }
            else if(paymentType == "decrease")
            {

            }

            //проверка за това кои от незадаължителните полета са попълнени...
            if (promotionPeriodText == "")
            {
                promotionPeriod = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                promotionPeriod = Convert.ToDecimal(promotionPeriodTextBox.Text);
            }

            if (promotionalInterestText == "")
            {
                promotionalInterest = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                promotionalInterest = Convert.ToDecimal(promotionalInterestTextBox.Text);
            }

            if (gratisPeriodText == "")
            {
                gratisPeriod = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                gratisPeriod = Convert.ToDecimal(gratisPeriodTextBox.Text);
            }

            if (taxEntryText == "")
            {
                taxEntry = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                taxEntry = Convert.ToDecimal(taxEntryTextBox.Text);

                //преизчисляване на такса кандидатстване
                if (entryTax == "валута")
                {

                }
                else if (entryTax == "%")
                {

                }
            }

            if (taxProcessingText == "")
            {
                taxProcessing = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                taxProcessing = Convert.ToDecimal(taxProcessingTextBox.Text);

                //преизчисляване на такса обработка
                if (cboProcessingTax == "валута")
                {

                }
                else if (cboProcessingTax == "%")
                {

                }
            }

            if (otherTaxesText == "")
            {
                otherTaxes = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                otherTaxes = Convert.ToDecimal(otherTaxesTextBox.Text);

                //преизчисляване на други такси
                if (cboOther == "валута")
                {

                }
                else if (cboOther == "%")
                {

                }
            }

            if (taxYearManagementText == "")
            {
                taxYearManagement = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                taxYearManagement = Convert.ToDecimal(otherTaxesTextBox.Text);

                //преизчисляване на други такси
                if (cboYearManagement == "валута")
                {

                }
                else if (cboYearManagement == "%")
                {

                }
            }

            if (taxOtherYearText == "")
            {
                taxOtherYear = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                taxOtherYear = Convert.ToDecimal(otherTaxesTextBox.Text);

                //преизчисляване на други такси
                if (cboOtherYear == "валута")
                {

                }
                else if (cboOtherYear == "%")
                {

                }
            }

            if (taxMonthManagementText == "")
            {
                taxMonthManagement = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                taxMonthManagement = Convert.ToDecimal(otherTaxesTextBox.Text);

                //преизчисляване на други такси
                if (cboMonthManagement == "валута")
                {

                }
                else if (cboMonthManagement == "%")
                {

                }
            }

            if (taxOtherMonthText == "")
            {
                taxOtherMonth = 0;//може би трябва някаква друга стойност?
            }
            else
            {
                taxOtherMonth = Convert.ToDecimal(otherTaxesTextBox.Text);

                //преизчисляване на други такси
                if (cboOtherMonth == "валута")
                {

                }
                else if (cboOtherMonth == "%")
                {

                }
            }

            decimal yearlyPercentCostVariable = 0;
            decimal repayedWithInterestAndTaxesVariable = 0;

            decimal taxesAndComissionsVariable = taxEntry + taxProcessing + otherTaxes + taxYearManagement + taxOtherYear + taxMonthManagement + taxOtherMonth;
            taxesAndComissions.Text = taxesAndComissionsVariable.ToString("0.00");

            decimal interestsVariable = 0;
            decimal paymentsVariable = 0;

            interestsVariable = (amount/loanTerm)*interestPercantage/100;
            //interestsVariable = (amount * interestPercantage) / 100;

            //1)размерът на кредита го разделям на срока (в месеци)
            //2)умножаваме по лихвата...
            paymentsVariable = amount + (interestsVariable * loanTerm);
            payments.Text = paymentsVariable.ToString("0.00");
            
            interests.Text = (interestsVariable*loanTerm).ToString("0.00");

            repayedWithInterestAndTaxesVariable = paymentsVariable + taxesAndComissionsVariable;
            repayedWithInterestAndTaxes.Text = repayedWithInterestAndTaxesVariable.ToString("0.00");

            yearlyPercentCostVariable = ((repayedWithInterestAndTaxesVariable / amount)*100) - 100;
            yearlyPercentCost.Text = yearlyPercentCostVariable.ToString("0.00")+"%";

            //Генериране на таблица за "Погасителен план"
            //HtmlTableRow row;
            //HtmlTableCell cell;
            //for(int i = 1; i < loanTerm; i++)
            //{
            //    row = new HtmlTableRow();
            //    for(int j = 0; j < 8; j++)
            //    {
            //        cell = new HtmlTableCell();
            //        cell.InnerHtml = i.ToString();
            //    }
            //}
        }
    }
}