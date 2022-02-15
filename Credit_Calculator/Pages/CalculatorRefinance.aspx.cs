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

            //нямаме незадължителни полета => нямаме необходимост от проверки за непопълнени полета
            currentCreditInterest.Text = interestPercent.ToString();
            newCreditInterest.Text = newInterestRate.ToString();
            currentCreditTerm.Text = loanTermRefinance.ToString();
            newCreditTerm.Text = (loanTermRefinance - paymentsMade).ToString();
            //earlyRepaymentFeeCurrentCredit - не знам как я смятат, аз съм използвал следната дървена формула:
            earlyRepaymentFeeCurrentCredit.Text = ((refinanceAmount * earlyRepaymentPenalty)/100).ToString("0.00");

            decimal monthlyInstallmentCurrentCreditVariable = refinanceAmount / loanTermRefinance;
            decimal monthlyInstallmentNewCreditVariable = refinanceAmount / loanTermRefinance;

            monthlyInstallmentCurrentCredit.Text = monthlyInstallmentCurrentCreditVariable.ToString("0.00");
            monthlyInstallmentNewCredit.Text = monthlyInstallmentNewCreditVariable.ToString("0.00");

            decimal monthlyInstallmentSavingsVariable = monthlyInstallmentCurrentCreditVariable - monthlyInstallmentNewCreditVariable;
            monthlyInstallmentSavings.Text = monthlyInstallmentSavingsVariable.ToString("0.00");

            decimal totalPaidCurrentCreditVariable = monthlyInstallmentCurrentCreditVariable * loanTermRefinance;
            totalPaidCurrentCredit.Text = totalPaidCurrentCreditVariable.ToString("0.00");

            decimal totalPaidNewCreditVariable = monthlyInstallmentNewCreditVariable * loanTermRefinance;
            totalPaidNewCredit.Text = totalPaidNewCreditVariable.ToString("0.00");

            decimal totalPaidSavingsVariable = totalPaidCurrentCreditVariable - totalPaidNewCreditVariable;
            totalPaidSavings.Text = totalPaidSavingsVariable.ToString("0.00");

            if(totalPaidSavingsVariable > 0)
            {
                solutionSpan.Text = "Според въведeните от Вас параметри и последвалото изчисление – има смисъл да рефинансирате вашето задължение, тъй като икономията от рефинансирането е по-висока от цената на настоящото Ви задължение.";
            }
            else if (totalPaidSavingsVariable < 0)
            {
                solutionSpan.Text = "Въведените от Вас параметри и последвалото изчисление показват, че избраната от Вас оферта за нов кредит, с която искате да рефинансирате Вашето задължение не е изгодна, тъй като цената на рефинансирането е по-висока от очакваната икономия. Моля, изберете друга оферта и изчислете отново.";
            }
            else if (totalPaidSavingsVariable == 0)
            {
                solutionSpan.Text = "Според въведените от Вас параметри няма значение дали ще продължите да изплащате текущия кредит или ще рефинансирате Вашето задължение.";
            }
            else
            {
                solutionSpan.Text = "Грешка при въведените параметри!";
            }

        }
    }
}