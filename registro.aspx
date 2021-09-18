<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Parcial_ProjectASP.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>📚 Registrate</title>
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
        <div class="card col-12 col-md-6">
            <div class="card-header p-4">
                <asp:Label ID="lblHeader" runat="server" Text="Registrate" CssClass="h3"></asp:Label>
            </div>
            <div class="card-body p-4">
                <form id="form1" runat="server">
                    <h5 class="mb-2">Mi cuenta</h5>
                    <p>Ingresa todos tus datos para registrarte.</p>
                    <div class="row mb-4">
                        <div class="col">
                            <!-- Nombre -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Nombre</asp:Label>
                            </div>
                            <p class="mb-0" style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Solo se permiten letras." ForeColor="Red" ValidationExpression="[A-Za-z ]*"></asp:RegularExpressionValidator>
                            </p>
                        </div>
                        <div class="col">
                            <!-- Apellidos -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="Label6" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Apellidos</asp:Label>
                            </div>
                            <p class="mb-0" style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Solo se permiten letras." ForeColor="Red" ValidationExpression="[A-Za-z ]*"></asp:RegularExpressionValidator>
                            </p>
                        </div>
                    </div>
                    <!-- Correo  -->
                    <div class="form-outline">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Correo electronico</asp:Label>
                    </div>
                    <p style="font-size: 12px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>
                    <!-- Contraseña  -->
                    <div class="form-outline">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" MaxLength="12" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Contraseña</asp:Label>
                    </div>
                    <p style="font-size: 12px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCPassword" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtCPassword" ControlToValidate="txtPassword" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
                    </p>

                    <!-- Rep. Contraseña -->
                    <div class="form-outline">
                        <asp:TextBox ID="txtCPassword" runat="server" CssClass="form-control" MaxLength="12" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Repetir contraseña</asp:Label>
                    </div>
                    <p style="font-size: 12px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCPassword" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>

                    <asp:Button ID="btnSubmit" runat="server" Text="Registrarse" CssClass="btn btn-primary mb-4 btn-block" OnClick="btnSubmit_Click"/>
                    <div class="text-center">
                        <p>¿Ya eres miembro? <a href="index.aspx">Iniciar sesión</a></p>
                    </div>
                </form>
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
