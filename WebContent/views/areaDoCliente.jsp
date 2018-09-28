<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Usu�rios - �rea do Cliente</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/dist/css/skins/skin-blue.min.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="<%=request.getContextPath()%>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">FitNet</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">FitNet</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="<%=request.getContextPath()%>/dist/img/avatar5.png" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs">Fulano Junior</span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="<%=request.getContextPath()%>/dist/img/avatar5.png" class="img-circle" alt="User Image">

                <p>
                  Fulano Junior - Web Developer
                  <small>Membro desde Abr. 2018</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sair</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<%=request.getContextPath()%>/dist/img/avatar5.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${usuarioLogado}</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MENU</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="active"><a href="#1"><i class="fa fa-users"></i> <span>Agendar Avalia��o</span></a></li>
        <li class="active"><a href="<%=request.getContextPath()%>/ControllerListarTreinos"><i class="fa fa-users"></i> <span>Marcar Treino</span></a></li>
        <li class="active"><a href="#2"><i class="fa fa-users"></i> <span>Resultados</span></a></li>
        <li class="active"><a href="#3"><i class="fa fa-users"></i> <span>Ficha de Avalia��o</span></a></li>
        
      </ul>
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">Financeiro</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="active"><a href="#4"><i class="fa fa-users"></i> <span>2� via Boleto</span></a></li>
        <li class="active"><a href="#4"><i class="fa fa-users"></i> <span>Extrato de Pagamentos</span></a></li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Treinos
        <small>Gerenciamento de treinos</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Usu�rios</li>
      </ol>
    </section>

    <!-- Main content -->

    <section class="content container-fluid">

      <div class="row">

        <div class="col-md-8">
      	<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">Next</a></li>
		  </ul>
		</nav>
          <div class="box">
          
            <div class="box-header">
              <h3 class="box-title">Treinos marcados</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>Intrutor</th>
                    <th>Data do Treino</th>
                    <th>Hor�rio de Inicio</th>
                    <th>Hor�rio de Termino</th>
                    <th>Modalidade</th>
                    <th>Realizado</th>
                    <th>Fun��es</th>
                  </tr>
                </thead>
                <tbody id="table-user">

                <c:forEach items="${listaTreino}" var="treino">  
                  <tr>
                    <td>${treino.instrutor.nome}</td>
                    <td><fmt:formatDate type="date" value="${treino.dataTreino}"/></td>
                    <td><fmt:formatDate type="time" value="${treino.horaInicio}"/></td>
                    <td><fmt:formatDate type="time" value="${treino.horaTermino}"/></td>
                    <td>${treino.modalidade.descricao}</td>
                    <td>-</td>
                  <td>
                      <button type="button" class="btn btn-primary btn-xs btn-flat">Editar</button>
                      <button type="button" class="btn btn-secondary btn-xs btn-flat">Detalhes</button>
                      <button type="button" class="btn btn-danger btn-xs btn-flat">Excluir</button>
                    </td>
                  </tr>
                 </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>

        </div>
        <div class="col-md-4">

          <div class="row">
          
            
          </div>

          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Agendar Novo Treino</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" id="form-user-create" action="<%=request.getContextPath()%>/ControllerInserirTreino" method="get">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputName">Instrutor</label>
                  <input type="text" class="form-control" id="exampleInputName" placeholder="Digite o nome do usu�rio" name="txtNomeAreaCli" required="true">
                </div>

                <div class="form-group">
                  <label for="exampleInputBirth">Data do Treino</label>
                  <input type="date" class="form-control" id="exampleInputBirth" name="cbBoxDataAreaCli" required="true">
                </div>
                <div class="form-group">
                  <label for="exampleInputCountry">Hora de In�cil</label>
                  <select class="form-control" id="exampleInputCountry" name="cbBoxHoraIniAreaCli" required="true">
                    <option value="" selected="selected">Selecione a Hora</option>
                    <option value="5:00">5:00</option>
                    <option value="6:00">6:00</option>
                    <option value="7:00">7:00</option>
                    <option value="8:00">8:00</option>
                    <option value="9:00">9:00</option>
                    <option value="10:00">10:00</option>
                    <option value="11:00">11:00</option>
                    <option value="12:00">12:00</option>
                    <option value="13:00">13:00</option>
                    <option value="14:00">14:00</option>
                    <option value="11">15:00</option>
                    <option value="12">16:00</option>
                    <option value="13">17:00</option>
                    <option value="15">18:00</option>
                    <option value="16">19:00</option>
                    <option value="17">20:00</option>
                    <option value="18">21:00</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="exampleInputCountry">Hora de Termino</label>
                  <select class="form-control" id="exampleInputCountry" name="cbBoxHoraFimAreaCli" required="true">
                    <option value="" selected="selected">Selecione a Hora</option>
                    <option value="1">6:00</option>
                    <option value="2">7:00</option>
                    <option value="3">8:00</option>
                    <option value="4">9:00</option>
                    <option value="5">10:00</option>
                    <option value="6">11:00</option>
                    <option value="7">12:00</option>
                    <option value="8">13:00</option>
                    <option value="9">14:00</option>
                    <option value="10">15:00</option>
                    <option value="11">16:00</option>
                    <option value="12">17:00</option>
                    <option value="13">18:00</option>
                    <option value="14">19:00</option>
                    <option value="15">20:00</option>
                    <option value="16">21:00</option>
                    <option value="17">22:00</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="exampleInputCountry">Modalidades</label>
                  <select class="form-control" id="exampleInputCountry" name="cbBoxModalidadeAreaCli" required="true">
                    <option value="" selected="selected">Selecione uma Modalidade</option>
                    <option value="1">Muscula��o</option>
                    <option value="2">Aer�bica</option>
                    <option value="3">Jump</option>
                    <option value="4">Funcional</option>
                    <option value="5">Exerc�cios Cardios</option>
                    <option value="6">Pilates</option>
                    <option value="7">Jiu Jitsu</option>
                    <option value="8">Box</option>
                    <option value="9">Muay Thai</option>
                    <option value="10">Hidrogin�stica</option>
                    <option value="11">Nata��o</option>
                  </select>
                </div>
              </div>
         
              <div class="box-footer">
                <button type="submit" class="btn btn-success">Comfirmar</button>
              </div>
            </form>
          </div>

        </div>
      </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      <a target="_blank" href="<%=request.getContextPath()%>">FitNet</a>
    </div>
    <!-- Default to the left -->
    
  </footer>

</div>

</body>
</html>