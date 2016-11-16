<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FlightReservation.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/css/jquery-ui.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Welcome To Our Studio!</div>
                <div class="intro-heading">It's Nice To Meet You</div>
                <a href="#services" class="page-scroll btn btn-xl">Tell Me More</a>
            </div>
        </div>
    </header>
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Search</h2>
                    <h3 class="section-subheading text-muted">Search For your flight now !</h3>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-3">
                <div class="row">
                    <div class="form-group">
                        <label>Roundtrip / One Way</label>
                        <div class="radio">
                            <label>
                                <asp:RadioButton ID="radioTwoWay" GroupName="radio1" runat="server" Checked="True" />
                                Roundtrip&mdash; Two way go & back
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <asp:RadioButton ID="radioOneWay" GroupName="radio1" runat="server" />
                                One Way&mdash; Just One way to go
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Flying from</label>
                        <asp:DropDownList CssClass="form-control" ID="ddlFrom" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Flying to</label>
                        <asp:DropDownList CssClass="form-control" ID="ddlTo" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Departing</label>
                        <div class="input-group">
                            <asp:TextBox ID="txtFromDate" CssClass="form-control date-picker" runat="server"></asp:TextBox>
                            <div class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Returning</label>
                        <div class="input-group">
                            <asp:TextBox ID="txtToDate" CssClass="form-control date-picker" runat="server"></asp:TextBox>
                            <div class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Adults (18+)</label>
                        <asp:DropDownList CssClass="form-control" ID="ddlAdults" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Children (0-17)</label>
                        <asp:DropDownList CssClass="form-control" ID="ddlChildren" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-buttons">
                        <asp:Button OnClick="btnSearch_OnClick" ID="btnSearch" CssClass="btn btn-xl" runat="server" Text="Search Flight" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CustomScript" runat="server">
    <script src="/js/jquery-ui.js"></script>
    <script>
        $(function () {
            $(".date-picker").datepicker({ dateFormat: 'dd/mm/yy' });
        });
    </script>
</asp:Content>
