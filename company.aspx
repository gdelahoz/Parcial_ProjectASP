<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="company.aspx.cs" Inherits="Parcial_ProjectASP.company" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>📚 Datos de la compañia</title>
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
<body class="bg-light">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.aspx">📚 Book Store</a>
        <button
          class="navbar-toggler"
          type="button"
          data-mdb-toggle="collapse"
          data-mdb-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="tienda.aspx">Tienda</a>
            </li>
              <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="company.aspx">Compañia</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="carrito.aspx">Carrito y facturación</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <section class="d-flex justify-content-center align-items-center container my-4">
        <div class="card col-12 col-md-7">
            <div class="card-body p-4">
                <form id="form1" runat="server">
                    <h5 class="mb-2">Compañía</h5>
                    <p>Ingresa la información de la compañía y presiona siguiente.</p>
                    <div class="row">
                        <div class="col">
                            <!-- Nombre de compañía -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Nombre de la compañía</asp:Label>
                            </div>
                            <p class="mb-0" style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Solo se permiten letras." ForeColor="Red" ValidationExpression="[A-Za-z ]*"></asp:RegularExpressionValidator>
                            </p>
                        </div>
                        <div class="col">
                            <!-- Correo  -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Correo electronico</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>

                    <!-- Dirección -->
                    <div class="form-outline">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Dirección</asp:Label>
                    </div>
                    <p style="font-size: 12px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtName" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>

                    <div class="row">
                        <div class="col">
                            <!-- Ciudad -->
                            <div class="form-outline">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="Label4" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Ciudad</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Solo se permiten letras." ForeColor="Red" ValidationExpression="[A-Za-z ]*"></asp:RegularExpressionValidator>
                            </p>

                            <!-- Pais de origen -->
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="bg-white form-select p-1">
                                <asp:listitem text="País" value="default"></asp:listitem>
                                <asp:listitem text="Colombia" value="Colombia"></asp:listitem>
                                <asp:listitem text="Venezuela" value="Venezuela"></asp:listitem>
                                <asp:listitem text="Argentina" value="Argentina"></asp:listitem>
                                <asp:listitem text="Ecuador" value="Ecuador"></asp:listitem>
                                <asp:listitem text="Otros" value="Otros"></asp:listitem>
                            </asp:DropDownList>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Campo obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                        <div class="col">
                            <!-- Codigo postal -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtZIP" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                <asp:Label ID="Label8" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Codigo postal</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtZIP" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtZIP" ErrorMessage="Debe ser múltiplo de 5" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">Debe ser multiplo de 5</asp:CustomValidator>
                            </p>

                            <!-- Provincia -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtProv" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="Label7" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Provincia</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtProv" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtProv" ErrorMessage="Solo se permiten letras." ForeColor="Red" ValidationExpression="[A-Za-z ]*"></asp:RegularExpressionValidator>
                            </p>
                        </div>
                    </div>
                    <asp:Button ID="btnSubmit" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="btnSubmit_Click"/>
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
