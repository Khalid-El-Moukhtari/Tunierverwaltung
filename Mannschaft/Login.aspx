<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mannschaft.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
        .textbox{

        }

        .buttoncss{

        }  
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>


<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Login</h1>
                <br />
                  <asp:Label  ID="Label4" runat="server" ></asp:Label>
                <br />
                <br />
               
                <table>             
                <tr >
                    <td >
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>


                    <td>
                    <asp:TextBox CssClass="textbox" ID="TextBox1" runat="server"></asp:TextBox>
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Passwort"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox TextMode="Password" CssClass="textbox" ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button CssClass="buttoncss" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                    </td>
                </tr>      
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>         
            
            </table>
                <br />

                <asp:Label ID="Label3" runat="server" ForeColor="Red" ></asp:Label>

                </center>
        </div>
    </form>
</body>
</html>
