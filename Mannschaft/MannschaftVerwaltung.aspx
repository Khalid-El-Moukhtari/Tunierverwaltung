<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MannschaftVerwaltung.aspx.cs" Inherits="Mannschaft.MannschaftVerwaltung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Mannschaftsverwaltung</h1>
    Eine Sportart für die Mannschaft auswählen:<br />

    <asp:DropDownList class = "form-control" ID="DropDownList1" runat="server" ForeColor="Black" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="32px" Width="104px">
        <asp:ListItem>Fußball</asp:ListItem>
        <asp:ListItem>Handball</asp:ListItem>
        <asp:ListItem>Tennis</asp:ListItem>

    </asp:DropDownList>
    <br />
    <br />


    <asp:Table ID="datentbl" runat="server" Width="71px" Height="29px" >

    </asp:Table>

    
    <asp:Table runat="server" BackColor="White" ForeColor="Black">
        <asp:TableRow>    
            <asp:TableCell>        
                <h4>verfügbare Personen:</h4>
            <asp:ListBox class = "form-control" ID="ListBox1" runat="server" ForeColor="Black" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="359px" Height="68px">
                <asp:ListItem>keine vorhanden</asp:ListItem>
            </asp:ListBox>
            </asp:TableCell>

            <asp:TableCell>
                <asp:Button  ID="Button2" runat="server" Text="hinzufügen" OnClick="neu_Click" BackColor="White" ForeColor="Black" BorderColor="Black"  />
            </asp:TableCell>

            <asp:TableCell>
                <asp:Button ID="Button3" runat="server" Text="entfernen" OnClick="loeschen_Click" BackColor="White" ForeColor="Black" BorderColor="Black"/>
            </asp:TableCell>


            <asp:TableCell>
              <h4>Mitglieder der Mannschaf:</h4>

                <asp:ListBox class = "form-control" ID="ListBox2" runat="server" Width="359px" Height="68px" ForeColor="Black">
                    <asp:ListItem>bisher keine Mitglieder</asp:ListItem>
                </asp:ListBox>

            </asp:TableCell>

       </asp:TableRow>
    </asp:Table>

     

    <br />


    <asp:Button class = "form-control" ID="Button1" runat="server" Text="hinzufügen" OnClick="Button1_Click" BorderColor="Black" ForeColor="Black" BackColor="White"/>
    <br />
    <br />

    <asp:Table ID="Table5"  class="table table-bordered table-hover" runat="server" BorderStyle="Inset" BackColor="White" ForeColor="Black">
        <asp:TableRow>
            <asp:TableCell BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">ID</asp:TableCell>
            <asp:TableCell BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Sportart</asp:TableCell>
            <asp:TableCell BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Mannschaft</asp:TableCell>

       
        </asp:TableRow>
    </asp:Table>
 
    
 
</asp:Content>

