<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Turnierverwaltung.aspx.cs" Inherits="Mannschaft.Turnierverwaltung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1> Turnierverwaltung</h1>
        <br />

    <h4>Eine Sportart für das Turnier auswählen bzw. ändern:


    <asp:DropDownList  class = "form-control" ID="DropDownList1" runat="server" ForeColor="Black"  Height="42px" Width="160px">
        <asp:ListItem>Fußball</asp:ListItem>
        <asp:ListItem>Handball</asp:ListItem>
        <asp:ListItem>Tennis</asp:ListItem>

    </asp:DropDownList>
      <br />
    <br />
Turnier Name:  </h4>
    <asp:TextBox ID="TextBox1" runat="server" class = "form-control"></asp:TextBox>
     <asp:Table runat="server" BackColor="White" ForeColor="Black" Height="127px">
        <asp:TableRow>    
            <asp:TableCell>        
                <h4>verfügbare Mannschaften:
</h4>
            <asp:ListBox class = "form-control" ID="ListBox1" runat="server" ForeColor="Black" Width="359px" Height="68px">
                <asp:ListItem>keine vorhanden</asp:ListItem>
            </asp:ListBox>
            </asp:TableCell>

            <asp:TableCell>
                <asp:Button ID="Button2" runat="server" Text="hinzufügen" OnClick="neu_Click" BackColor="White" ForeColor="Black" BorderColor="Black" />
            </asp:TableCell>

            <asp:TableCell>
                <asp:Button ID="Button3" runat="server" Text="entfernen" OnClick="loeschen_Click" BackColor="White" ForeColor="Black" BorderColor="Black"/>
            </asp:TableCell>


            <asp:TableCell>
              <h4>vorhandene Mannschaften:	</h4>

                <asp:ListBox class = "form-control" ID="ListBox2" runat="server" Width="359px" Height="68px" ForeColor="Black">
                    <asp:ListItem>bisher keine Mannschaften</asp:ListItem>
                </asp:ListBox>

            </asp:TableCell>

       </asp:TableRow>
    </asp:Table>

</asp:Content>
