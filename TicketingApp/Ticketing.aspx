<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ticketing.aspx.cs" Inherits="TicketingApp.Ticketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticketing System</title>
</head>
<body>
    <form id="frmTicketing" runat="server">
        <table border="1" id="tblTicket">
            <tr>
                <td>Select Source:</td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlSource">
                        <asp:ListItem Text="--Select Source--" Value="--Select--"></asp:ListItem>
                        <asp:ListItem Text="Hyderabad" Value="Hyderabad"></asp:ListItem>
                        <asp:ListItem Text="Chennai" Value="Chennai"></asp:ListItem>
                        <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>
                        <asp:ListItem Text="Vizag" Value="Vizag"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Select Destination:</td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlDestination">
                        <asp:ListItem Text="--Select Destination--" Value="--Select--"></asp:ListItem>
                        <asp:ListItem Text="Hyderabad" Value="Hyderabad"></asp:ListItem>
                        <asp:ListItem Text="Chennai" Value="Chennai"></asp:ListItem>
                        <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>
                        <asp:ListItem Text="Vizag" Value="Vizag"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="align-content: center">
                    <asp:Button runat="server" ID="btnCheckAvailability" Text="Check Availability" OnClick="btnCheckAvailability_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="align-content: center">
                    <asp:Label runat="server" ID="lblAvailableSets" Text="Available Seats: " Visible="false"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblBookingNo" Text="Select No Of Tickets" Visible="true"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddBookingCount" runat="server">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button runat="server" ID="btnBook" Text="Book Tickets" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>