<%@ Page Title="g" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Personenverwaltung.aspx.cs" Inherits="Mannschaft.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    

    <h2>Personenverwaltung</h2>

    <br />
   
    <br />
    <asp:RadioButtonList ForeColor="Black" BackColor="White" BorderColor="White" ID="RadioButtonList1" runat="server"  Width="184px" BorderStyle="Solid">
        <asp:ListItem>Physiotherapeut</asp:ListItem>
        <asp:ListItem>Trainer</asp:ListItem>
        <asp:ListItem>TennisSpieler</asp:ListItem>
        <asp:ListItem>HandballSpieler</asp:ListItem>
        <asp:ListItem>Fussballspieler</asp:ListItem>
    </asp:RadioButtonList>
    
    <br />
    <asp:Button class="btn btn-default" ID="Button1" runat="server" OnClick="Button1_Click" Text="auswählen" Width="183px" href = "~/MannschaftVerwaltung" BorderColor="Black" ForeColor="Black" BackColor="White"  BorderStyle="Solid"/>


    <br />
    <br />
    Name:&nbsp;&nbsp;
    
    <asp:TextBox ID="TextBox3"  ForeColor="Black" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp; 
    Alter:
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" TextMode="Number"></asp:TextBox>
    <br />
    <br />

    <asp:Table ID="Table2" runat="server" ForeColor="Black" BackColor="White"></asp:Table>


    <br />
    <asp:Button class="btn btn-default" ID="Button2" runat="server" Text="hinzufügen" OnClick="Button2_Click" Width="176px" BorderColor="Black" ForeColor="Black" BackColor="White" BorderStyle="Solid" />
    <br />

    <br />
    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>







    &nbsp;<br />Sortieren nach:<br />
    <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black" Height="40px" Width="172px">
        <asp:ListItem>Name</asp:ListItem>
        <asp:ListItem>Alter</asp:ListItem>







    </asp:DropDownList>

    <br />
    <br />
    <asp:RadioButtonList ID="RadioButtonList2" runat="server"  Width="174px" ForeColor="Black" BackColor="White">
        <asp:ListItem>Aufwärst</asp:ListItem>
        <asp:ListItem>Abwärts</asp:ListItem>
    </asp:RadioButtonList>
    





    <br />
    <br />
    <asp:Button ID="Button3" runat="server" Text="bestätigen"  Width="176px" OnClick="Button3_Click" class="btn btn-default" BorderColor="Black" ForeColor="Black" BackColor="White"/>
    <br />
    <br />








    <asp:Table ID="Table1"  runat="server" class="table table-bordered table-hover" BorderColor="Black" ForeColor="Black" BackColor="White" BorderStyle="Solid">
        
        <asp:TableHeaderRow runat="server">
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">ID</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Name</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Alter</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Herkunft</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Einsatzbereich</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Anzahl Spiele</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Position</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Rückennummer</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Gesundheitzustand</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Sponsor</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BackColor="Black" ForeColor="White" BorderWidth="2">Gehalt</asp:TableCell>
            <asp:TableCell runat="server" BackColor="White" BorderWidth="2" BorderStyle="Solid" ForeColor="Black" BorderColor="White">Bearbeiten</asp:TableCell>
            <asp:TableCell runat="server" BackColor="Red" BorderWidth="2" BorderStyle="Solid" BorderColor="Red">Löschen</asp:TableCell>



        </asp:TableHeaderRow>
        

        

       
    </asp:Table>
    <table>
        <thead>
          
        </thead>

        <tbody>


        </tbody>
    </table>
       <br />
    <br />
   
    <br />
    <br />
    


</asp:Content>


