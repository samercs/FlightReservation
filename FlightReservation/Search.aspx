<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="FlightReservation.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="header2">
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Search Result</div>
                <div class="intro-heading">Search reasult for your flight ...!</div>
            </div>
        </div>
    </header>
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <asp:ListView ItemPlaceholderID="item" ID="ListView1" runat="server">
                        <LayoutTemplate>
                            <table class="table table-responsive table-striped table-hover">
                                <tr>
                                    <th>From</th>
                                    <th>To</th>
                                    <th>Departing</th>
                                    <th>Arival Time</th>
                                    <th>Aitline</th>
                                    <th></th>
                                </tr>
                                <asp:PlaceHolder ID="item" runat="server"></asp:PlaceHolder>
                            </table>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%# Eval("FromName") %>
                                </td>
                                <td>
                                    <%# Eval("ToName") %>
                                </td>
                                <td>
                                    <%# Eval("DateTime", "{0: dd/MM/yyyy HH:mm}") %>
                                </td>
                                <td>
                                    <%# Eval("AirvalTime", "{0: dd/MM/yyyy HH:mm}") %>
                                </td>
                                <td>
                                    <%#Eval("AirLineName") %>
                                </td>
                                <td>
                                    <a href="#" class="btn btn-sm">Select <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CustomScript" runat="server">
</asp:Content>
