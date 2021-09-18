    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="encuesta.aspx.cs" Inherits="Parcial_ProjectASP.encuesta" %>

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
<body>
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
              <a class="nav-link" aria-current="page" href="company.aspx">Compañia</a>
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
                    <h4 class="mb-2">Cuentanos tu experiencia de compra</h4>
                    <p>Tu opinión es muy importante para nosotros, Ayudanos a mejorar!</p>
                    <p>1. ¿Qué tan satisfecho estás con la continuidad o transacción que acabas de realizar en nuestro sitio web?</p>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="mb-2">
                        <asp:ListItem>😥</asp:ListItem>
                        <asp:ListItem>🤔</asp:ListItem>
                        <asp:ListItem>😐</asp:ListItem>
                        <asp:ListItem>🙂</asp:ListItem>
                        <asp:ListItem>😁</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RadioButtonList1" ForeColor="Red">Campo requerido.</asp:RequiredFieldValidator>
                    <p>2. ¿Cual es la principal razón por la cual calificaste de esta manera?</p>
                    <!-- Comentarios -->
                    <div class="form-outline">
                        <asp:TextBox id="txtComments" runat="server" TextMode="MultiLine" CssClass="form-control" maxlength="1200" Rows="3" Columns="30" wrap="true"  />
                        <asp:Label ID="Label9" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Comentarios</asp:Label>
                    </div>
                    <p style="font-size: 12px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtComments" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>
                    <asp:Button ID="btnSubmit" runat="server" Text="Enviar encuesta" CssClass="btn btn-primary" OnClick="btnSubmit_Click"/>
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
