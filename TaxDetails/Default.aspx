<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TaxDetails._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Εφαρμογή Tax Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblTaxnoIn" runat="server">Α.Φ.Μ.:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTaxnoIn" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <asp:Button ID="btnCallWS" runat="server" Text="Κλήση" OnClick="btnCallWS_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Αποτελέσματα</legend>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblTaxnoOut" runat="server">Α.Φ.Μ.:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTaxnoOut" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblDoyCode" runat="server">Κωδικός Δ.Ο.Υ.:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDoyCode" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblDoyDescr" runat="server">Περιγραφή Δ.Ο.Υ.:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDoyDescr" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTaxnoValid" runat="server">Α.Φ.Μ. ενεργό:</asp:Label>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rdbtListTaxnoValid" runat="server">
                                <asp:ListItem Value="Yes">Ναι</asp:ListItem>
                                <asp:ListItem Value="No">Όχι</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblBrandName" runat="server">Επωνυμία:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtBrandName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTitle" runat="server">Τίτλος:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblStreetName" runat="server">Οδός:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStreetName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblStreetNo" runat="server">Αριθμός:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStreetNo" runat="server" Width="10px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblZipCode" runat="server">Αριθμός:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtZipCode" runat="server" Width="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblArea" runat="server">Περιοχή:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtArea" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblStartDate" runat="server">Ημερομηνία Έναρξης:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                        </td>                    
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblEndDate" runat="server">Ημερομηνία Διακοπής:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPhone" runat="server">Τηλέφωνο:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblFax" runat="server">FAX:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblActivity" runat="server">Κύρια Δραστηριότητα:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtActivity" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblActivityDescr" runat="server">Περιγραφή κύριας Δραστηριότητας:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtActivityDescr" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblXactionId" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
        </fieldset>
    
    </div>
    </form>
</body>
</html>
