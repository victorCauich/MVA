<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Objetos de Aprendizaje</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie-edge">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/objetosAprendizaje.css">

</head>
<body background="img/UAC.jpg">

<section name="parteSuperior">
  <div class="container">
    <div class="row">
      <div class="col-6 col-sm-5 col-md-5 col-lg-5 col-xl-5"><br><br>
        <img src="img/logo.png" style="width: 180px;" class="" alt="Responsive image"/>
      </div>
      <div class="col-6 col-sm-7 col-md-7 col-lg-7 col-xl-7"><br><br><br>
        <p><h4 class="stroke2">Sistema de Consulta de Objetos de Aprendizaje</h4></p>
        <div id ="separador">
          <br><br><br>
          <br><br><br>
        </div>
      </div>
    </div>
  </div>
  </div>
</section>

<section name="busquedaGeneral">
  <div id="cover-texto">
    <div class="container">
      <div class="row">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
          <form action="ResultadoBusqueda" method="post" class="form-inline justify-content-center">
            <div class="form-group">
              <input type="text" size="60" class="form-control form-control-lg" name="busquedaSimple" placeholder="¿Que deseas buscar?">
            </div>
            <button type="submit" class="btn btn-sucess btn-lg btn-primary stroke2">Realiza tu busqueda</button><br>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<br>

<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>

