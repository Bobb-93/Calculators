<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalculatorRefinance.aspx.cs" Inherits="Credit_Calculator.CreditCalculator" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/Default.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Calculators.css" />

    <header>
        <h1>Кредитен калкулатор</h1>
        <p>Пресметнете месечни вноски и ГПР (годишен процент на разходите)</p>
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
                    <label for="amountTextBox">Размер на кредита *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtAmount" type="text" maxlength="9" ID="MainContent_viewCalc_ctl04_txtAmount" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="amountTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
            </div>
        </div>
        <div class="col-md-6">
                <div class="label-container">
                    <label for="loanTermTextBox">Срок (месеци) *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPeriod" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="loanTermTextBox" runat="server" required></asp:TextBox>
                    <span class="error"></span>
                </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="label-container">
                    <label for="interestPercantageTextBox">Лихва (%) *</label>
                    <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtIR" type="text" maxlength="7" id="MainContent_viewCalc_ctl04_txtIR" class="table-main-input" required="required">--%>
                    <asp:TextBox ID="interestPercantageTextBox" runat="server" required></asp:TextBox>
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
                 <asp:DropDownList ID="paymentTypeDropDown" runat="server">
		                <asp:ListItem Value="Изберете">Изберете</asp:ListItem>
		                <asp:ListItem Selected="True" Value="annuity">Анюитетни вноски</asp:ListItem>
		                <asp:ListItem Value="decrease">Намаляващи вноски</asp:ListItem>
	                </asp:DropDownList>
                <span class="error"></span>
            </div>
         </div>
        <div class="row">
            <div class="col-md-12">
                <div class="accordion accordion-details">
                    <div class="panel-group" id="accordion1">
                        <div class="panel panel-default arrow-right">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#section-one" aria-expanded="false">
                                        Промоционален период (месеци)
                                    </a>
                                </h4>
                            </div>
                            <div id="section-one" class="panel-collapse collapse" aria-expanded="false">
                                <div class="row kreditenKalulator">
                                    <div class="col-md-6">
                                        <div class="label-container">
                                            <label for="promotionPeriodTextBox">Промоционален период (месеци)</label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPromoPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtPromoPeriod" class="table-main-input">--%>
                                            <asp:TextBox ID="promotionPeriodTextBox" runat="server"></asp:TextBox>
                                            <span class="error"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 withTooltip">
                                        <div class="label-container">
                                            <label for="promotionalInterestTextBox">Промоционална лихва(%)</label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtPromoIR" type="text" maxlength="7" id="MainContent_viewCalc_ctl04_txtPromoIR" class="table-main-input">--%>
                                            <asp:TextBox ID="promotionalInterestTextBox" runat="server"></asp:TextBox>
                                            <div class="tooltip-wrapper-rel">
                                                <span class="tooltip-icon"></span>
                                                <div class="tooltip-cnt tipso_style" data-tipso-title="" data-tipso="Промоционална(първоначална) лихва, която се начислява за фиксиран период в началото на кредита. След изтичане на промоционалния период, обикновенно се преминава на по-голяма променлива или фиксирна лихва">
	                                                <span class="tooltip-icon"></span>
                                                </div>
                                            </div>
                                            <span class="error"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row kreditenKalulator">
                                    <div class="col-md-6">
                                        <div class="label-container">
                                            <label for="gratisPeriodTextBox">Гратисен период (месеци)</label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtGratisPeriod" type="text" maxlength="3" id="MainContent_viewCalc_ctl04_txtGratisPeriod" class="table-main-input">--%>
                                            <asp:TextBox ID="gratisPeriodTextBox" runat="server"></asp:TextBox>
                                            <span class="error"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default arrow-right">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#section-two" aria-expanded="false">Такси
                                    </a>
                                </h4>
                            </div>
                            <div id="section-two" class="panel-collapse collapse" aria-expanded="false">
                                <div class="row taxes">
                                    <h2 style="text-align:center">Първоначални такси</h2>
                                </div>
                                <div class="row kreditenKalulator">
                                    <div class="col-md-6 taxes">
                                        <div class="label-container">
                                            <label for="taxEntryTextBox">Такса кандидатстване</label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtTaxEntry" type="text" maxlength="12" id="MainContent_viewCalc_ctl04_txtTaxEntry" class="table-main-input">--%>
                                            <asp:TextBox ID="taxEntryTextBox" runat="server"></asp:TextBox>
                                           
                                            <%-- <select name="ctl00$MainContent$viewCalc$ctl04$cboEntryTax" id="MainContent_viewCalc_ctl04_cboEntryTax" data-selecter-options="{'label':'%'}">
		                                        <option value="%">%</option>
		                                        <option selected="selected" value="валута">валута</option>
	                                        </select>--%>

                                            <asp:DropDownList ID="entryTaxDropDown" runat="server">
		                                        <asp:ListItem Value="%">%</asp:ListItem>
		                                        <asp:ListItem Selected="True" Value="валута">валута</asp:ListItem>
	                                        </asp:DropDownList>

                                            <span class="error"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 taxes">
                                        <div class="label-container">
                                            <label for="taxProcessingTextBox">Такса обработка</label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtTaxProcessing" type="text" maxlength="12" id="MainContent_viewCalc_ctl04_txtTaxProcessing" class="table-main-input">--%>
                                            <asp:TextBox ID="taxProcessingTextBox" runat="server"></asp:TextBox>

                                           <%-- <select name="ctl00$MainContent$viewCalc$ctl04$cboProcessingTax" id="MainContent_viewCalc_ctl04_cboProcessingTax" data-selecter-options="{'label':'%'}">
		                                        <option selected="selected" value="%">%</option>
		                                        <option value="валута">валута</option>
	                                        </select>--%>

                                            <asp:DropDownList ID="cboProcessingTaxDropDown" runat="server">
		                                        <asp:ListItem Selected="True" Value="%">%</asp:ListItem>
		                                        <asp:ListItem Value="валута">валута</asp:ListItem>
	                                        </asp:DropDownList>

                                            <span class="error"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row kreditenKalulator">
                                    <div class="col-md-6 taxes">
                                        <div class="label-container">
                                            <label for="otherTaxesTextBox">Други такси</label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtTaxOther" type="text" maxlength="12" id="MainContent_viewCalc_ctl04_txtTaxOther" class="table-main-input">--%>

                                            <asp:TextBox ID="otherTaxesTextBox" runat="server"></asp:TextBox>

                                            
                                            <%--<select name="ctl00$MainContent$viewCalc$ctl04$cboOtherTax" id="MainContent_viewCalc_ctl04_cboOtherTax" data-selecter-options="{'label':'валута'}">
		                                        <option value="%">%</option>
		                                        <option selected="selected" value="валута">валута</option>
	                                        </select>--%>

                                            <asp:DropDownList ID="cboOtherTaxDropDown" runat="server">
		                                        <asp:ListItem Value="%">%</asp:ListItem>
		                                        <asp:ListItem Selected="True" Value="валута">валута</asp:ListItem>
	                                        </asp:DropDownList>

                                            <span class="error"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row taxes">
                                    <h2 style="text-align:center">Годишни такси</h2>
                                </div>
                                <div class="row kreditenKalulator">
                                    <div class="col-md-6 taxes">
                                        <div class="label-container">
                                            <label for="taxYearManagementTextBox">Годишна такса управление</label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtTaxYearMgmt" type="text" maxlength="12" id="MainContent_viewCalc_ctl04_txtTaxYearMgmt" class="table-main-input">--%>
                                            <asp:TextBox ID="taxYearManagementTextBox" runat="server"></asp:TextBox>
                                            
                                            <%--<select name="ctl00$MainContent$viewCalc$ctl04$cboYearMgmt" id="MainContent_viewCalc_ctl04_cboYearMgmt" data-selecter-options="{'label':'%'}">
		                                        <option selected="selected" value="%">%</option>
		                                        <option value="валута">валута</option>
	                                        </select>--%>

                                            <asp:DropDownList ID="cboYearManagementDropDown" runat="server">
		                                        <asp:ListItem Selected="True" Value="%">%</asp:ListItem>
		                                        <asp:ListItem Value="валута">валута</asp:ListItem>
	                                        </asp:DropDownList>

                                            <span class="error"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 taxes">
                                        <div class="label-container">
                                            <label for="taxOtherYearTextBox">Други годишни такси</label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtTaxOtherYear" type="text" maxlength="12" id="MainContent_viewCalc_ctl04_txtTaxOtherYear" class="table-main-input">--%>
                                            <asp:TextBox ID="taxOtherYearTextBox" runat="server"></asp:TextBox>

                                            <%--<select name="ctl00$MainContent$viewCalc$ctl04$cboOtherYear" id="MainContent_viewCalc_ctl04_cboOtherYear" data-selecter-options="{'label':'валута'}">
		                                        <option value="%">%</option>
		                                        <option selected="selected" value="валута">валута</option>
	                                        </select>--%>

                                            <asp:DropDownList ID="cboOtherYearDropDown" runat="server">
		                                        <asp:ListItem Value="%">%</asp:ListItem>
		                                        <asp:ListItem Selected="True" Value="валута">валута</asp:ListItem>
	                                        </asp:DropDownList>

                                            <div class="tooltip-wrapper-rel">
                                                <span class="tooltip-icon"></span>
                                                <div class="tooltip-cnt tipso_style" data-tipso-title="" data-tipso="Премии по застраховки (напр. застраховка 'Имот', застраховка 'Живот')">
	                                                <span class="tooltip-icon"></span>
                                                </div>
                                            </div>
                                            <span class="error"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row taxes">
                                    <h2 style="text-align:center">Месечни такси</h2>
                                </div>
                                <div class="row kreditenKalulator">
                                    <div class="col-md-6 taxes">
                                        <div class="label-container">
                                            <label for="taxMonthManagementTextBox">Месечна такса управление </label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtTaxMonthMgmt" type="text" maxlength="12" id="MainContent_viewCalc_ctl04_txtTaxMonthMgmt" class="table-main-input">--%>
                                            <asp:TextBox ID="taxMonthManagementTextBox" runat="server"></asp:TextBox>

                                            <%--<select name="ctl00$MainContent$viewCalc$ctl04$cboMonthMgmt" id="MainContent_viewCalc_ctl04_cboMonthMgmt" data-selecter-options="{'label':'валута'}">
		                                        <option selected="selected" value="%">%</option>
		                                        <option value="валута">валута</option>
	                                        </select>--%>

                                            <asp:DropDownList ID="cboMonthManagementDropDown" runat="server">
		                                        <asp:ListItem Selected="True" Value="%">%</asp:ListItem>
		                                        <asp:ListItem Value="валута">валута</asp:ListItem>
	                                        </asp:DropDownList>
                                            <span class="error"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 taxes">
                                        <div class="label-container">
                                            <label for="taxOtherMonthTextBox">Други месечни такси</label>
                                            <%--<input name="ctl00$MainContent$viewCalc$ctl04$txtTaxOtherMonth" type="text" maxlength="12" id="MainContent_viewCalc_ctl04_txtTaxOtherMonth" class="table-main-input">--%>
                                            <asp:TextBox ID="taxOtherMonthTextBox" runat="server"></asp:TextBox>
                                            <%--<select name="ctl00$MainContent$viewCalc$ctl04$cboOtherMonth" id="MainContent_viewCalc_ctl04_cboOtherMonth" data-selecter-options="{'label':'валута'}">
		                                        <option value="%">%</option>
		                                        <option selected="selected" value="валута">валута</option>
	                                        </select>--%>

                                            <asp:DropDownList ID="cboOtherMonthDropDown" runat="server">
		                                        <asp:ListItem Value="%">%</asp:ListItem>
		                                        <asp:ListItem Selected="True" Value="валута">валута</asp:ListItem>
	                                        </asp:DropDownList>

                                        <div class="tooltip-wrapper-rel">
                                            <span class="tooltip-icon"></span>
                                            <div class="tooltip-cnt tipso_style" data-tipso-title="" data-tipso="Премии по застраховки (напр. застраховка 'Имот', застраховка 'Живот')">
	                                            <span class="tooltip-icon"></span>
                                            </div>
                                        </div>
                                        <span class="error"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <p>*Задължителни полета</p>
            </div>
            <div class="col-md-8">
                <%--<input type="submit" name="ctl00$MainContent$viewCalc$ctl04$btnSubmit" value="Изчисли" id="MainContent_viewCalc_ctl04_btnSubmit" class="main-form-btn">--%>
                <asp:Button ID="calculateCredit" runat="server" Text="Изчисли" OnClick="CreditCalculator_Click" />
                <%--<asp:Button ID="calculateCredit" runat="server" Text="Изчисли" />--%>
            </div>
        </div>
    </main>
</asp:Content>
