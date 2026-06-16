<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="calculadoraWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: linear-gradient(135deg, #4e73df, #1cc88a);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    form {
        background: white;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.2);
        width: 350px;
    }

    h1 {
        text-align: center;
        color: #4e73df;
        margin-bottom: 20px;
    }

        label {
            color: red;
            background-color: lightyellow;
        }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-sizing: border-box;
    }

    input[type="submit"],
    input[type="button"] {
        width: 100%;
        background: #4e73df;
        color: white;
        border: none;
        padding: 12px;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
    }

    input[type="submit"]:hover,
    input[type="button"]:hover {
        background: #2e59d9;
    }

    input[type="radio"] {
        margin-right: 8px;
    }

    select {
        width: 100%;
        padding: 10px;
        border-radius: 8px;
        border: 1px solid #ccc;
        margin-top: 10px;
    }

    #lresultado {
        display: block;
        text-align: center;
        font-size: 22px;
        font-weight: bold;
        color: #1cc88a;
        margin-bottom: 15px;
    }
</style>
</head>
<body>
    
    <form id="form1" runat="server">
       
        <div>
            <h1>Calculadora Web</h1>
        </div>
       <br />
        <div>
            <asp:Label ID="lresultado" runat="server" Text="" CssClass="auto-style1"></asp:Label>
            <br />
            <br />
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Numero1"></asp:Label>
            <asp:TextBox ID="tnumero1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Numero2"></asp:Label>
            <asp:TextBox ID="tnumero2" runat="server"></asp:TextBox>
            <br />
            <br />   
            <asp:Button ID="boton" runat="server" Text="Aceptar" OnClick="boton_Click" />
            <br />
            <br />
            <br />
            <asp:RadioButton ID="rsuma" runat="server" GroupName="radio" Text="Suma" />
            <br />
            <asp:RadioButton ID="rresta" runat="server" GroupName="radio" Text="Resta" /><br />
            <asp:RadioButton ID="rmultiplicacion" runat="server" GroupName="radio" Text="Multiplicación" /><br />
            <asp:RadioButton ID="rdivision" runat="server" GroupName="radio" Text="División" />
            <br />
            <asp:DropDownList ID="Lista" runat="server">
                <asp:ListItem>Suma</asp:ListItem>
                <asp:ListItem>Resta</asp:ListItem>
                <asp:ListItem>Multiplicación</asp:ListItem>
                <asp:ListItem>División</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:CheckBox ID="csuma" Text="Suma" runat="server" /> <br />
            <asp:CheckBox ID="cresta" Text="Resta" runat="server" />
            <br />
        </div>
    </form>
</body>
</html>
