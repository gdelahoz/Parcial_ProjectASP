<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tienda.aspx.cs" Inherits="Parcial_ProjectASP.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Tienda en linea</title>
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
        <a class="navbar-brand" href="#">Book Store</a>
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
              <a class="nav-link active" aria-current="page" href="WebForm1.aspx">Tienda</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Carrito.aspx">Carrito</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <section class="d-flex justify-content-center align-items-center vh-100 container">
        <div class="card col-12 col-md-4">
            <div class="card-header p-4">
                <asp:Label ID="lblHeader" runat="server" Text="Productos" CssClass="h3"></asp:Label>
            </div>
            <div class="card-body p-4">
                <form id="form1" runat="server">
                    <h5 class="mb-2">Libros</h5>
                    <p>Puedes comprar el siguiente libro</p>
                    <asp:Button ID="btnSubmit" runat="server" Text="Comprar" CssClass="btn btn-primary mb-4 btn-block"/>
                </form>
            </div>
        </div>
    </section>
</body>
</html>
