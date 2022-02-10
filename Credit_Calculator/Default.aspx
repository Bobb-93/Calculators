<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  Inherits="Credit_Calculator._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/Default.css" />
    
    <header>
        <h1>Добре дошли!</h1>
        <h1>Изберете калкулатор:</h1>
    </header>

    <main>
        <asp:Button PostBackUrl="/Pages/CreditCalculator" Text="Кредитен калкулатор" ID="CreditCalculatorButton" runat="server"/>
        <asp:Button PostBackUrl="/Pages/CalculatorRefinance" Text="Калкулатор за рефинансиране на кредит" ID="CalculatorRefinanceButton" runat="server"/>
        <asp:Button PostBackUrl="/Pages/LeasingCalculator" Text="Лизингов калкулатор за покупка на стоки" ID="LeasingCalculatorButton" runat="server"/>
    </main>
</asp:Content>
