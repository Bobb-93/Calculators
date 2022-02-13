<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalculatorRefinance.aspx.cs" Inherits="Credit_Calculator.CalculatorRefinance" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/Default.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Calculators.css" />

    <header>
        <h1>Калкулатор за рефинансиране на кредит</h1>
        <p>Пресметнете дали рефинансирането на задълженията Ви е изгодно</p>
    </header>

    <%--<div class="row headerButtons">
        <div class="col-md-4">
            <a href="/ipotechni_krediti/ipotechni_krediti.aspx" onclick="ga('send', 'event', 'SearchButton', 'Search', 'CalcML');" target="_blank" class="ipotechenkredit">
                Сравни ипотечни кредити
            </a>
        </div>
        <div class="col-md-4">
            <a href="/potrebitelski_krediti/potrebitelski_krediti.aspx" onclick="ga('send', 'event', 'SearchButton', 'Search', 'CalcCL');" target="_blank" class="potrebitelskikredit">
                Сравни потребителски кредити 
            </a>
        </div>
        <div class="col-md-4">
            <a href="/barzi-krediti/default.aspx" onclick="ga('send', 'event', 'SearchButton', 'Search', 'CalcFL');" target="_blank" class="barzkrdit">
                Сравни бързи кредити 
            </a>
        </div>
    </div>--%>

    <main class="credit-calculator">
        <div class="row">
            <div class="col">
                <div class="label-container">
                    <label for="refinanceAmountTextBox">Размер на кредита *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtAmount" type="text" maxlength="9" ID="MainContent_viewCalc_ctl04_txtAmount" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="refinanceAmountTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
            </div>
        </div>
        <div class="col-md-6">
                <div class="label-container">
                    <label for="interestPercentTextBox">Лихва (%) *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtIR" type="text" maxlength="7" id="MainContent_viewCalc_ctl04_txtIR" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="interestPercentTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="label-container">
                    <label for="loanTermRefinanceTextBox">Срок на кредита (месеци) *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="loanTermRefinanceTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
            </div>
            <div class="col-md-6">
                
                <div class="tooltip-wrapper-rel">
                    <span class="tooltip-icon"></span>
                    <div class="tooltip-cnt tipso_style" data-tipso-title="" data-tipso="Анюитетни - при тях месечните вноски са равни всеки месец, като характерното е, че в началото се изплаща по-малка част от главницата и по-голяма от лихвите<br>Намаляващи - при тях вноските са по-високи в началото и намаляват с течение на времето, характерното е че вноските по главницата са равни за целия период на кредита">
	                    <span class="tooltip-icon"></span>
                    </div>
                </div>
            <%--<select name="ctl00$MainContent$viewCalc$ctl04$cboPaymentType" id="MainContent_viewCalc_ctl04_cboPaymentType" data-selecter-options="{'label':'Моля изберете вид погасителен план'}">--%>
                 <label for="paymentsMadeTextBox">Брой на направените вноски *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="paymentsMadeTextBox" runat="server" required></asp:TextBox>
                <span class="error"></span>
            </div>
         </div>

        <div class="row">
            <div class="col-md-6">
                <div class="label-container">
                    <label for="earlyRepaymentPenaltyTextBox">Първоначална такса за обработка (%) *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="earlyRepaymentPenaltyTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
            </div>
         </div>

        <h2>Нов кредит</h2>
        <div class="row">
            <div class="col-md-6">
                <div class="label-container">
                    <label for="newInterestRateTextBox">Лихва *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="newInterestRateTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
            </div>
            <div class="col-md-6">
                <div class="label-container">
                    <label for="initialFeesPercentTextBox">Първоначални такси (%) *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="initialFeesPercentTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
            </div>
         </div>
          <div class="row">
            <div class="col-md-6">
                <div class="label-container">
                    <label for="initialFeesAmountTextBox">Първоначални такси (валута) *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="initialFeesAmountTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
            </div>

            <div class="col-md-6">
                <%--<input type="submit" name="ctl00$MainContent$viewCalc$ctl04$btnSubmit" value="Изчисли" id="MainContent_viewCalc_ctl04_btnSubmit" class="main-form-btn">--%>
                <asp:Button ID="calculateRefinance" runat="server" Text="Изчисли" OnClick="CalculatorRefinance_Click" />
                <%--<asp:Button ID="calculateRefinance" runat="server" Text="Изчисли" />--%>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <p>*Задължителни полета</p>
            </div>
        </div>
    </main>
</asp:Content>

