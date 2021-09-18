<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Parcial_ProjectASP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Iniciar sesión</title>
    <!-- Font Awesome -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
      rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
      rel="stylesheet"
    />
    <!-- MDB -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
      rel="stylesheet"
    />
</head>
<body style="background: linear-gradient(90deg, #00E1FF 38.02%, #22468B 100%);">
    <section class="d-flex justify-content-center align-items-center vh-100 container">
        <div class="card col-12 col-md-4">
            <div class="card-header p-4">
                <asp:Label ID="lblHeader" runat="server" Text="Iniciar sesión" CssClass="h3"></asp:Label>
            </div>
            <div class="card-body p-4">
                <form id="form1" runat="server">
                    <h5 class="mb-2">Mi cuenta</h5>
                    <p>Sí ya eres nuestro cliente inicia sesión.</p>
                    <!-- Correo  -->
                    <div class="form-outline">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Correo electronico</asp:Label>
                    </div>
                    <p style="font-size: 12px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>
                    <!-- Contraseña  -->
                    <div class="form-outline">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" MaxLength="12" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Contraseña</asp:Label>
                    </div>
                    <p style="font-size: 12px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>
                    <div class="mb-3">
                        <a href="recuperar_contraseña.aspx">Olvidé mi contraseña</a>
                    </div>
                    <asp:Button ID="btnSubmit" runat="server" Text="Ingresar" CssClass="btn btn-primary mb-4 btn-block"/>
                </form>
                <div class="text-center">
                    <p>¿No eres miembro? <a href="registro.aspx">Registrate</a></p>
                </div>
            </div>
        </div>
    </section>
    <script
      type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"
    ></script>
    <script>
        document.querySelectorAll('.form-outline').forEach((formOutline) => {
            new mdb.Input(formOutline).init();
        });
        document.querySelectorAll('.form-outline').forEach((formOutline) => {
            new mdb.Input(formOutline).update();
        });
    </script>
</body>
</html>
