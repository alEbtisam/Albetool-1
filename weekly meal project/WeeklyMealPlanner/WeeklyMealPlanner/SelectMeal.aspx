﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="SelectMeal.aspx.vb" Inherits="WeeklyMealPlanner.SelectMeal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="jumbotron">
        <h1>Search</h1> 
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>Search recipes</h2>
            <p>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="1" Selected="True">By Ingredients or Recipe name</asp:ListItem>
                    <asp:ListItem Value="2">By Nutrition</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p runat="server" visible="true" id="byIngredients">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input" Style="width: 100%; padding: 5px;" placeholder="Ingredients"></asp:TextBox>
            </p>
            <p runat="server" visible="false" id="byNutrition">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="input" Style="width: 100%; padding: 5px;" placeholder="Max Calories"></asp:TextBox><br />
                <br />
                <asp:TextBox ID="TextBox3" runat="server" CssClass="input" Style="width: 100%; padding: 5px;" placeholder="Max Carbs"></asp:TextBox><br />
                <br />
                <asp:TextBox ID="TextBox4" runat="server" CssClass="input" Style="width: 100%; padding: 5px;" placeholder="Max Fat"></asp:TextBox><br />
                <br />
                <asp:TextBox ID="TextBox5" runat="server" CssClass="input" Style="width: 100%; padding: 5px;" placeholder="Max Protien"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary btn-large" Text="Search recipes &raquo;" />

            </p>
        </div>
        <div class="col-md-8">

            <%--<div class="row">--%>

            <table style="width:100%">

                <asp:Label ID="lblResult" runat="server"></asp:Label>

            </table>

            <%--</div>--%>


        </div>
    </div>

</asp:Content>
