<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeasingCalculator.aspx.cs" Inherits="Credit_Calculator.LeasingCalculator" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/Default.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Calculators.css" />

    <header>
        <h1>Лизингов калкулатор за покупка на стоки</h1>
        <p>Пресметнете оскъпяването на стоката, закупена чрез лизинг</p>
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
                    <label for="priceWithVATTextBox">Цена на стоката с ДДС *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtAmount" type="text" maxlength="9" ID="MainContent_viewCalc_ctl04_txtAmount" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="priceWithVATTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
            </div>
        </div>
        <div class="col-md-6">
                <div class="label-container">
                    <label for="firstInstallmentTextBox">Първоначална вноска *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtIR" type="text" maxlength="7" id="MainContent_viewCalc_ctl04_txtIR" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="firstInstallmentTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="label-container">
                    <label for="leasingPeriodTextBox">Срок на лизинга (месеци) *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="leasingPeriodTextBox" runat="server" required></asp:TextBox>
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
                 <label for="monthlyPaymentTextBox">Месечна вноска *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="monthlyPaymentTextBox" runat="server" required></asp:TextBox>
                <span class="error"></span>
            </div>
         </div>

        <div class="row">
            <div class="col-md-6">
                <div class="label-container">
                    <label for="initialTaxProcessingTextBox">Първоначална такса за обработка</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="initialTaxProcessingTextBox" runat="server"></asp:TextBox>

                    <asp:DropDownList ID="cboTaxProcessingDropDown" runat="server">
		                <asp:ListItem Selected="True" Value="%">%</asp:ListItem>
		                <asp:ListItem Value="лв">лв</asp:ListItem>
	                </asp:DropDownList>
                    <span class="error"></span>
                </div>
            </div>
            <div class="col-md-6">
                <%--<input type="submit" name="ctl00$MainContent$viewCalc$ctl04$btnSubmit" value="Изчисли" id="MainContent_viewCalc_ctl04_btnSubmit" class="main-form-btn">--%>
                <asp:Button ID="calculateLeasing" runat="server" Text="Изчисли" OnClick="LeasingCalculator_Click" />
                 <%--<asp:Button ID="calculateLeasing" runat="server" Text="Изчисли" />--%>
            </div>
         </div>

        <div class="row">
            <div class="col-md-4">
                <p>*Задължителни полета</p>
            </div>
        </div>
    </main>
</asp:Content>

