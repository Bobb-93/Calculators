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
            currentCreditInterest.Text = interestPercent.ToString()+"%";
            newCreditInterest.Text = newInterestRate.ToString()+"%";
            currentCreditTerm.Text = loanTermRefinance.ToString();

            decimal newCreditTermVariable = loanTermRefinance - paymentsMade;
            newCreditTerm.Text = newCreditTermVariable.ToString();

            //earlyRepaymentFeeCurrentCredit - не знам как я смятат, аз съм използвал следната дървена формула:
            //делим на срока на кредита, умножаваме по броя направени вноски, умножаваме по таксата за предсрочно погасяване и делим на 100
            decimal earlyRepaymentFeeCurrentCreditVariable = (((refinanceAmount/loanTermRefinance) * newCreditTermVariable) * earlyRepaymentPenalty) / 100;
            earlyRepaymentFeeCurrentCredit.Text = earlyRepaymentFeeCurrentCreditVariable.ToString("0.00");

            decimal monthlyInstallmentCurrentCreditVariable = (refinanceAmount / loanTermRefinance) + ((refinanceAmount/loanTermRefinance)*interestPercent)/100;
            decimal monthlyInstallmentNewCreditVariable = (refinanceAmount / loanTermRefinance) + ((refinanceAmount / loanTermRefinance) * newInterestRate) / 100;

            monthlyInstallmentCurrentCredit.Text = monthlyInstallmentCurrentCreditVariable.ToString("0.00");
            monthlyInstallmentNewCredit.Text = monthlyInstallmentNewCreditVariable.ToString("0.00");

            decimal monthlyInstallmentSavingsVariable = monthlyInstallmentCurrentCreditVariable - monthlyInstallmentNewCreditVariable;
            monthlyInstallmentSavings.Text = monthlyInstallmentSavingsVariable.ToString("0.00");

            //Общо изплатени, ако плащаме по стария кредит
            decimal totalPaidCurrentCreditVariable = monthlyInstallmentCurrentCreditVariable * newCreditTermVariable;
            totalPaidCurrentCredit.Text = totalPaidCurrentCreditVariable.ToString("0.00");

            //Общо изплатени, ако плащаме по новия кредит - събираме обаче и таксите за предсрочно погасяване и първоначалната такса на новия кредит
            decimal totalPaidNewCreditVariable = monthlyInstallmentNewCreditVariable * newCreditTermVariable + earlyRepaymentFeeCurrentCreditVariable + 
                (refinanceAmount*initialFeesPercent)/100 + initialFeesAmount;
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