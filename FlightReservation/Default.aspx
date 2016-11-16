<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FlightReservation.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                Roundtrip&mdash; Two way go & back
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
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
                        <asp:TextBox ID="txtFromDate" CssClass="form-control date-picker" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Returning</label>
                        <asp:TextBox ID="txtToDate" CssClass="form-control date-picker" runat="server"></asp:TextBox>
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
                        <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Search ..." />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
