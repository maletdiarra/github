 
<!DOCTYPE html>
<html>

    <head>
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <title>Top Express</title>
        <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
        <meta name="description" content="AdminDesigns - SHARED ON GFXFree.Net">
        <meta name="author" content="AdminDesigns">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Font CSS (Via CDN) -->
        <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'>
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700">

        <!-- Datatables CSS -->
        <link rel="stylesheet" type="text/css" href="../../../../vendor/plugins/datatables/media/css/dataTables.bootstrap.css">

        <%--<link href="../../../../assets/skin/default_skin/css/jquery.steps.css" rel="stylesheet">--%>
        
        <link rel="stylesheet" type="text/css" href="../../../../vendor/plugins/magnific/magnific-popup.css">
        
        <!-- Theme CSS -->
        <link rel="stylesheet" type="text/css" href="../../../../assets/skin/default_skin/css/theme.css">

        <!-- Admin Panels CSS -->
        <link rel="stylesheet" type="text/css" href="../../../../assets/admin-tools/admin-plugins/admin-panels/adminpanels.css">

        <!-- Admin Forms CSS -->
        <link rel="stylesheet" type="text/css" href="../../../../assets/admin-tools/admin-forms/css/admin-forms.css">

        
         <!-- Admin Modals CSS -->
        <link rel="stylesheet" type="text/css" href="../../../../assets/admin-tools/admin-plugins/admin-modal/adminmodal.css">

        <!-- Favicon -->
        <link rel="shortcut icon" href="../../../../assets/img/favicon.ico">


        <link href="../../../../vendor/plugins/chosen/chosen.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

    </head>

    <body class="dashboard-page sb-l-o sb-r-c">

        <%
            DirectionService directionService = new DirectionService();
            DepartementService departementService = new DepartementService();
            List<OrgDirection> listDirection = directionService.FindAll();
            List<OrgDepartement> ListDepartement = departementService.FindAll();
        %>

        <!-- Start: Main -->
        <div id="main">

            <!-- Start: Header -->
            <header class="navbar navbar-fixed-top bg-light">
                <div class="navbar-branding">
                    <a class="navbar-brand" href="dashboard.html">
                        <img src="../../../../assets/img/logos/logo.gif"/>
                        Top Express
                    </a>
                    <span id="toggle_sidemenu_l" class="glyphicons glyphicons-show_lines"></span>
                    <ul class="nav navbar-nav pull-right hidden">
                        <li>
                            <a href="#" class="sidebar-menu-toggle">
                                <span class="octicon octicon-ruby fs20 mr10 pull-right "></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <ul class="nav navbar-nav navbar-left">
                    <li>
                        <a class="sidebar-menu-toggle" href="#">
                            <span class="octicon octicon-ruby fs18"></span>
                        </a>
                    </li>
                    <li>
                        <a class="topbar-menu-toggle" href="#">
                            <span class="glyphicons glyphicons-magic fs16"></span>
                        </a>
                    </li>
                    <li>
                        <span id="toggle_sidemenu_l2" class="glyphicon glyphicon-log-in fa-flip-horizontal hidden"></span>
                    </li>
                    <li class="dropdown hidden">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="glyphicons glyphicons-settings fs14"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="javascript:void(0);">
                                    <span class="fa fa-times-circle-o pr5 text-primary"></span> Reset LocalStorage </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <span class="fa fa-slideshare pr5 text-info"></span> Force Global Logout </a>
                            </li>
                            <li class="divider mv5"></li>
                            <li>
                                <a href="javascript:void(0);">
                                    <span class="fa fa-tasks pr5 text-danger"></span> Run Cron Job </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <span class="fa fa-wrench pr5 text-warning"></span> Maintenance Mode </a>
                            </li>
                        </ul>
                    </li>
                    <li class="hidden-xs">
                        <a class="request-fullscreen toggle-active" href="#">
                            <span class="octicon octicon-screen-full fs18"></span>
                        </a>
                    </li>
                </ul>
                <%--<form class="navbar-form navbar-left navbar-search ml5" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search..." value="Search...">
                    </div>
                </form>--%>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown"> <%--<img src="../../../../assets/img/avatars/1.jpg" alt="avatar" class="mw30 br64 mr15">--%>
                            <span>Sidik OUATTARA</span>
                            <span class="caret caret-tp hidden-xs"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-persist pn w250 bg-white" role="menu">

                            <li class="br-t of-h">
                                <a href="#" class="fw600 p12 animated animated-short fadeInDown">
                                    <span class="fa fa-power-off pr5"></span> Deconnexion </a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </header>
            <!-- End: Header -->

            <!-- Start: Sidebar -->
            <aside id="sidebar_left" class="nano nano-primary">
                <div class="nano-content">

                    <!-- Start: Sidebar Header -->
                    <header class="sidebar-header">
                        <div class="user-menu">
                            <div class="row text-center mbn">
                                <div class="col-xs-4">
                                    <a href="dashboard.html" class="text-primary" data-toggle="tooltip" data-placement="top" title="Accueil">
                                        <span class="glyphicons glyphicons-home"></span>
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="pages_messages.html" class="text-info" data-toggle="tooltip" data-placement="top" title="Messages">
                                        <span class="glyphicons glyphicons-inbox"></span>
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="pages_profile.html" class="text-alert" data-toggle="tooltip" data-placement="top" title="Tasks">
                                        <span class="glyphicons glyphicons-bell"></span>
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="pages_timeline.html" class="text-system" data-toggle="tooltip" data-placement="top" title="Activity">
                                        <span class="glyphicons glyphicons-imac"></span>
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="pages_profile.html" class="text-danger" data-toggle="tooltip" data-placement="top" title="Settings">
                                        <span class="glyphicons glyphicons-settings"></span>
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="pages_gallery.html" class="text-warning" data-toggle="tooltip" data-placement="top" title="Cron Jobs">
                                        <span class="glyphicons glyphicons-restart"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- End: Sidebar Header -->

                    <!-- sidebar menu -->
                    <jsp:include page="../../../../imports/main/menu_admin.html" >
                    <jsp:param name="menu" value="home" />
                    <jsp:param name="active" value="org" />
                </jsp:include>
                
                <?php include("../menu.php"); ?>
                    <div class="sidebar-toggle-mini">
                        <a href="#">
                            <span class="fa fa-sign-out"></span>
                        </a>
                    </div>
                </div>
            </aside>

            <!-- Start: Content-Wrapper -->
            <section id="content_wrapper">

                <!-- Start: Topbar-Dropdown -->
                <div id="topbar-dropmenu">
                    <div class="topbar-menu row">
                        <div class="col-xs-4 col-sm-2">
                            <a href="#" class="metro-tile bg-success">
                                <span class="metro-icon glyphicons glyphicons-inbox"></span>
                                <p class="metro-title">Messages</p>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-2">
                            <a href="#" class="metro-tile bg-info">
                                <span class="metro-icon glyphicons glyphicons-parents"></span>
                                <p class="metro-title">Users</p>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-2">
                            <a href="#" class="metro-tile bg-alert">
                                <span class="metro-icon glyphicons glyphicons-headset"></span>
                                <p class="metro-title">Support</p>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-2">
                            <a href="#" class="metro-tile bg-primary">
                                <span class="metro-icon glyphicons glyphicons-cogwheels"></span>
                                <p class="metro-title">Settings</p>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-2">
                            <a href="#" class="metro-tile bg-warning">
                                <span class="metro-icon glyphicons glyphicons-facetime_video"></span>
                                <p class="metro-title">Videos</p>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-2">
                            <a href="#" class="metro-tile bg-system">
                                <span class="metro-icon glyphicons glyphicons-picture"></span>
                                <p class="metro-title">Pictures</p>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- End: Topbar-Dropdown -->

                <!-- Start: Topbar -->
                <header id="topbar">
                    <div class="topbar-left">
                        <ul class="nav nav-list nav-list-topbar pull-left">
                            <%--
                            <li>
                                <a href="javascript:void(0);">Dashboard</a>
                            </li>
                            --%>
                            <li class="active">
                                <a href="javascript:void(0);">Gestion des d�partements</a>
                            </li>
                            <%--<li>
                                <a href="../vehicule/modele">Mod�les</a>
                            </li>
                            <li>
                                <a href="ecommerce_settings.html">Settings</a>
                            </li>--%>
                        </ul>
                    </div>
                    <div class="topbar-right">
                        <a href="admin/organisation/employe/add.php" class="btn btn-danger btn-sm fw600 ml10 btn-gradient btn-rounded"><span class="fa fa-plus pr5"></span> Employ�</a>
                        <a href="admin/organisation/service/list.php" class="btn btn-danger btn-sm fw600 ml10 btn-gradient btn-rounded"><span class="fa fa-plus pr5"></span> Service</a>
                        <a href="admin/organisation/direction/add.php" class="btn btn-danger btn-sm fw600 ml10 btn-gradient btn-rounded"><span class="fa fa-plus pr5"></span> Direction</a>
                    </div>

                </header>
                <!-- End: Topbar -->

                <!-- Begin: Content -->
                <!-- Begin: Content -->
                <section id="content" class="table-layout animated fadeIn">

                    <!-- begin: .tray-center -->
                    <div class="tray tray-center p25 va-t posr">

                        <!-- create new order panel -->
                        <div class="panel mb25 mt5">
                            <div class="panel-heading">
                                <span class="panel-title"><span class="fa fa-car pr5"></span> Gestion des d�partements</span>

                            </div>
                            <div class="panel-body p20 pb10">

                                <div class="tab-content pn br-n admin-form">
                                    <input type="hidden" name="action" value="organisation" />
                                    <input type="hidden" name="section" value="departement" />
                                    <input type="hidden" name="operation" value="add" />
                                    <div id="tab1_1" class="tab-pane active">


                                        <div class="row">
                                            <div class="col-md-12" style="margin-top: 10px;">

                                                <div class="panel" id="p13" data-panel-fullscreen="false" data-panel-title="false" data-panel-remove="false" data-panel-collapse="false">
                                                    <div class="panel-heading ui-sortable-handle">
                                                        <span class="panel-title"> Ajouter un d�partement</span>
                                                        <span class="panel-controls"><a href="#" class="panel-control-loader"></a><a href="#" class="panel-control-color"></a></span></div>
                                                    <div class="panel-body">
                                                        <form method="post" action="admin/organisation/departement/list.php">
                                                            <div class="row">
                                                                <div class="col-md-4">
                                                                    <h6 style="margin: 0;">Les champs pr�c�d�s du caract�re ast�risque (*) sont obligatoires</6>
                                                                        <div class="row">
                                                                            <div class="form-group" style="margin-top: 5px;">
                                                                                <label>D�partement *</label>
                                                                                <input id="dept" name="dept" type="text" class="form-control required">
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="form-group">
                                                                                <label>Choix de la direction *</label>
                                                                                <select name="direction" id="direction" class="chosen-select form-control">
                                                                                    <option value=""> </option>
                                                                                    <% for (OrgDirection o : listDirection) {%>
                                                                                    <option value="<%= o.getId()%>"><%= o.getLibelle()%> </option>
                                                                                    <% }%>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                </div>
                                                                <div class="col-md-offset-1 col-md-7">
                                                                    <div class="row" style="background-color: #EBE8E8;">
                                                                        <div class="">
                                                                            <h6 class="mb1" style="color:#000;">Rechercher un manager</h6>
                                                                            <h6 class="m1">Veuillez entrer le matricule</h6>
                                                                        </div>
                                                                        <div class="col-md-11 mrn prn">
                                                                            <div class="form-group">
                                                                                <input id="manager" name="manager" maxlength="12" class="form-control required" type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-1 mln pln">
                                                                            <button type="button" class="btn btn-sm btn-dark" onclick="funcGetManager($('#manager').val());">
                                                                                <i class="fa fa-search"></i>
                                                                            </button>
                                                                        </div>        
                                                                        <div class="col-md-12">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label>Nom </label>
                                                                                        <input id="nom" name="nom" class="form-control required" disabled="" type="text">

                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label>Prenom </label>
                                                                                        <input id="prenom" name="prenom" class="form-control" disabled="" type="text">

                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>

                                                                    </div>
                                                                    <div class="row" style="margin-top: 10px;">
                                                                        <div class="form-group">
                                                                            <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>Enregistrer</strong></button>
                                                                        </div>
                                                                    </div>
                                                                    <input type="hidden" name="idEmploye" id="idEmploye" value="" />
                                                                    <input type="hidden" name="action" value="organisation" />
                                                                    <input type="hidden" name="section" value="departement" />
                                                                    <input type="hidden" name="operation" value="add" />

                                                                </div>

                                                            </div>
                                                        </form>  




                                                        <!-- end section row -->

                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-md-12" style="margin-top: 10px;">

                                                <div class="panel" id="spy4">
                                                    <div class="panel-heading" style="padding:0;">
                                                        <span class="panel-title">
                                                            <span class="glyphicons glyphicons-table"></span>Liste des d�partements</span>

                                                    </div>
                                                    <div class="panel-body pn">
                                                        <div class="table-responsive">
                                                            <table class="table table-bordered mbn" id="datatable2">
                                                                <thead>
                                                                    <tr>
                                                                        <th>#</th>
                                                                        <th>Departement</th>
                                                                        <th>Direction</th>
                                                                        <th>Manager</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%int i = 1;%>
                                                                    <% for (OrgDepartement mo : ListDepartement) {%>
                                                                    <% if (mo.getActive() ==1) {%>
                                                                    <tr class="text-center">
                                                                        <td>
                                                                            <%
                                                                                try {
                                                                                    if (mo.getId() != null) {
                                                                                        out.println(i);
                                                                                    }
                                                                                } catch (Exception e) {
                                                                                }
                                                                            %>
                                                                        </td>
                                                                        <td>
                                                                            <%
                                                                                try {
                                                                                    if (mo.getId() != null) {
                                                                                        out.println(mo.getLibelle());
                                                                                    }
                                                                                } catch (Exception e) {
                                                                                }
                                                                            %>
                                                                        </td>
                                                                        <td>
                                                                            <%
                                                                                try {
                                                                                    if (mo.getId() != null) {
                                                                                        out.println(mo.getDirection().getLibelle());
                                                                                    }
                                                                                } catch (Exception e) {
                                                                                }
                                                                            %>
                                                                        </td>
                                                                        <td>
                                                                            <%
                                                                                try {
                                                                                    if (mo.getId() != null) {
                                                                                        out.println(mo.getChef().getNom() + " " + mo.getChef().getPrenom());
                                                                                    }
                                                                                } catch (Exception e) {
                                                                                }
                                                                            %>
                                                                        </td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-xs btn-default active-animation" ref-id="<%= mo.getId() %>" ref-lib="<%= mo.getLibelle() %>" ref-dir="<% if(mo.getDirection()!=null){out.print(mo.getDirection().getId());} %>" ref-man="<% if(mo.getChef()!=null){out.print(mo.getChef().getNom()+" "+mo.getChef().getPrenom());} %>" ref-man-id="<% if(mo.getChef()!=null){out.print(mo.getChef().getId());} %>" ref-form="#modal-form-departement" data-effect="mfp-sign"><i class="fa fa-edit"></i>
                                                                            </button>

                                                                        </td>

                                                                    </tr>
                                                                    <% i++; %>
                                                                    <% }%>
                                                                    <% }%>

                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>



                                    </div>
                                    <!-- end: .tray-center -->
                                </div>
                            </div>
                        </div>



                    </div>
                    <!-- begin: .tray-right -->
                    <aside class="tray tray-right tray290 va-t pn" data-tray-height="match">

                        <!-- menu quick links -->
                        <div class="p20 admin-form">

                            <h4 class="mt5 text-muted fw500"> Rechercher un employ�</h4>

                            <hr class="short">
                            <h6 class="fw400">Matricule</h6>
                            <div class="section mb10">
                                <label for="customer-id" class="field prepend-icon">
                                    <input type="text" name="customer-id" id="customer-id" class="gui-input" placeholder="">
                                    <label for="customer-id" class="field-icon"><i class="fa fa-eye"></i>
                                    </label>
                                </label>
                            </div>


                            <h6 class="fw400">Login</h6>
                            <div class="section mb10">
                                <label for="customer-id" class="field prepend-icon">
                                    <input type="text" name="customer-id" id="customer-id" class="gui-input" placeholder="">
                                    <label for="customer-id" class="field-icon"><i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>

                            <h6 class="fw400">Nom de l'employ�</h6>
                            <div class="section mb10">
                                <label for="customer-id" class="field prepend-icon">
                                    <input type="text" name="customer-id" id="customer-id" class="gui-input" placeholder="">
                                    <label for="customer-id" class="field-icon"><i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>


                            

                            <hr class="short">

                            <div class="section row">
                                <div class="col-sm-12">
                                    <button class="btn btn-default btn-sm ph25" type="button">Rechercher</button>
                                    <%--<label class="field option ml15">
                                        <input type="checkbox" name="info">
                                        <span class="checkbox"></span> <span class="text-muted">Save Search</span>
                                    </label>--%>
                                </div>
                                <div class="col-sm-7 hidden">
                                    <label class="field option mt10">
                                        <input type="checkbox" name="info" checked>
                                        <span class="checkbox"></span>Save Search
                                    </label>
                                </div>
                            </div>

                        </div>

                    </aside>
                    <!-- end: .tray-right -->

                </section>
                <!-- End: Content -->
                <!-- End: Content -->

            </section>
            <!-- End: Content-Wrapper -->


             <%-- Zone popup --%> 
            <div class="row">
                
                
                
                <div id="modal-form-departement" class=" popup-basic admin-form mfp-with-anim mfp-hide" style="width:550px; max-width: none;">
                    <div class="panel">
                        <div class="panel-heading">
                            <span class="panel-title"><i class="fa fa-edit"></i>Modification departement</span>
                        </div>
                        <!-- end .panel-heading section -->

                        <form method="post" action="manager/action" id="comment" enctype="multipart/form-data">
                            <div class="panel-body p25">

                                
                                <div class="section row">
                                    <div class="col-md-6">
                                         <div class="form-group">
                                            <label>Departement</label>
                                            <input id="departement_new" name="departement_new" class="form-control required br-dark" type="text">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Direction</label>
                                            <select class="form-control" id="direction_old" name="direction_old">
                                                <% for (OrgDirection o : listDirection) {%>
                                                    <option value="<%= o.getId()%>"><%= o.getLibelle()%> </option>
                                                <% }%>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Manager actuel </label>
                                            <input id="manager_old" name="manager_old" class="form-control required br-dark" readonly="true" type="text">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select name="active" class="form-control">
                                                <option value="1" selected="true">Actif</option>
                                                <option value="0">Inactif</option>
                                            </select>
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <h5 class="m1 text-danger">Modifier le manager du departement</h5>
                                       
                                        
                                        
                                       
                                         <div class="row" style="background-color: #EBE8E8;">
                                            <div class="">
                                                <h6 class="mb1" style="color:#000;">Rechercher un manager</h6>
                                                <h6 class="m1">Veuillez entrer le matricule</h6>
                                            </div>
                                            <div class="col-md-10 mrn prn">
                                                <div class="form-group">
                                                    <input id="manager" name="manager" maxlength="12" class="form-control required" type="text">
                                                </div>
                                            </div>
                                            <div class="col-md-1 mln pln">
                                                <button type="button" class="btn btn-sm btn-dark" onclick="funcGetManager($('#manager').val());">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>        
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Nom </label>
                                                            <input id="nom" name="nom" class="form-control required" disabled="" type="text">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Prenom </label>
                                                            <input id="prenom" name="prenom" class="form-control" disabled="" type="text">

                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                        
                                    </div>
                                </div>


                            </div>
                            <!-- end section row section -->


                    </div>
                    <!-- end .form-body section -->

                    <div class="panel-footer">
                        <button type="submit" class="btn btn-sm btn-dark">Modifier</button>
                    </div>
                    <!-- end .form-footer section -->


                    <input type="hidden" value="" name="id_departement" id="id_departement"></input>
                    <input type="hidden" value="" name="departement_old" id="departement_old"></input>
                    
                    <input name="idEmploye" id="idEmploye" value="" type="hidden">
                    <input name="idManager" id="idManager" value="" type="hidden">
                    <input name="action" value="organisation" type="hidden">
                    <input name="section" value="departement" type="hidden">
                    <input name="operation" value="edit" type="hidden">
                    </form>
                </div>            


                
            </div>

            

        </div>
        <!-- End: Main -->

        <!-- BEGIN: PAGE SCRIPTS -->
        <script>
            var CONTEXT_MSG_ADD_DEPARTEMENT = '<% if (session.getAttribute("isAddDepartement") != null) {
                    out.print(session.getAttribute("isAddDepartement").toString());
                    session.removeAttribute("isAddDepartement");
                }%>';
        </script>
        <!-- jQuery -->
        <script type="text/javascript" src="../../../../vendor/jquery/jquery-1.11.1.min.js"></script>

        <script type="text/javascript" src="../../../../vendor/jquery/jquery_ui/jquery-ui.min.js"></script>

        <!-- Bootstrap -->
        <script type="text/javascript" src="../../../../assets/js/bootstrap/bootstrap.min.js"></script>

        <!-- FileUpload JS -->
        <script type="text/javascript" src="../../../../vendor/plugins/fileupload/fileupload.js"></script>
        <script type="text/javascript" src="../../../../assets/js/bootstrap/holder.min.js"></script>

        <!-- Tagmanager JS -->
        <script type="text/javascript" src="../../../../vendor/plugins/tagsinput/tagsinput.min.js"></script>


        <script type="text/javascript" src="../../../../vendor/plugins/datatables/media/js/jquery.dataTables.js"></script>

        <!-- Datatables Tabletools addon -->
        <script type="text/javascript" src="../../../../vendor/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>


        <!-- Datatables Bootstrap Modifications  -->
        <script type="text/javascript" src="../../../../vendor/plugins/datatables/media/js/dataTables.bootstrap.js"></script>
        <script type="text/javascript" src="../../../../vendor/plugins/datatables/extensions/Editor/js/editor.bootstrap.js"></script>

        
         <script type="text/javascript" src="../../../../vendor/plugins/magnific/jquery.magnific-popup.js"></script>

      
        <!-- Theme Javascript -->
        <script type="text/javascript" src="../../../../assets/js/utility/utility.js"></script>
        <script type="text/javascript" src="../../../../assets/js/main.js"></script>
        <script type="text/javascript" src="../../../../assets/js/demo.js"></script>
        <script type="text/javascript">
                jQuery(document).ready(function () {

                    "use strict";

                    // Init Theme Core    
                    Core.init();

                    // Init Theme Core    
                    Demo.init();
                    
                    if (CONTEXT_MSG_ADD_DEPARTEMENT !== "") {

                    var $noteStyle = '';
                    var $msg = '';
                    if (CONTEXT_MSG_ADD_DEPARTEMENT === "-1") {
                        $noteStyle = "danger";
                        $msg = "L'Employ� est deja manager de d�partement";
                    } else if (CONTEXT_MSG_ADD_DEPARTEMENT === "1") {
                        $noteStyle = "success";
                        $msg = "Departement ajout�e avec succ�s!!!";
                    }

                    new PNotify({
                        title: 'Enregistrement departement',
                        shadow: true,
                        text: $msg,
                        type: $noteStyle,
                        width: "290px",
                        delay: 1500
                    });

                }
                    
                    // grant file-upload preview onclick functionality
                   
                                    
                                  // Form Skin Switcher
            $('.active-animation').on('click', function (ex) {
                
                ex.preventDefault();
                
                var $activeModal = $(this).attr('ref-form');
                var $id =$(this).attr('ref-id');
                var $lib =$(this).attr('ref-lib');
                var $dir =$(this).attr('ref-dir');
                var $man =$(this).attr('ref-man');
                var $man_id =$(this).attr('ref-man-id');
                $.magnificPopup.open({
                    removalDelay: 500, //delay removal by X to allow out-animation,
                    items: {
                        src: $activeModal
                    },
                    // overflowY: 'hidden', // 
                    callbacks: {
                        beforeOpen: function (e) {
                            var Animation = $('.active-animation').attr('data-effect');
                            this.st.mainClass = Animation;
                            $("#id_departement").val($id);
                            $("#departement_old").val($lib);
                            $("#departement_new").val($lib);
                            $("#manager_old").val($man);
                            $("#idManager").val($man_id);
                            
                            $('#direction_old option[value="'+$dir+'"]').prop('selected', true);
                            
                            $('#modal-form-departement #manager').val("");
                            $('#modal-form-departement #nom').val("");
                            $('#modal-form-departement #prenom').val("");
                            
                           
                            
                        }
                    },
                    midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
                });

            });




                    


                    $('#datatable2').dataTable({
                        "aoColumnDefs": [{
                                'bSortable': false,
                                'aTargets': [-1]
                            }],
                        "oLanguage": {
                            "oPaginate": {
                                "sPrevious": "",
                                "sNext": ""
                            }
                        },
                        "iDisplayLength": -1,
                        "aLengthMenu": [
                            [5, 10, 25, 50, -1],
                            [5, 10, 25, 50, "All"]
                        ],
                        "sDom": '<"dt-panelmenu clearfix"lfr>t<"dt-panelfooter clearfix"ip>',
                        "oTableTools": {
                            "sSwfPath": "../../../../vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf"
                        }
                    });

                });


                function funcGetManager(v) {

                    if (v !== "") {

                        $.ajax({
                            url: 'list',
                            type: 'POST',
                            dataType: 'json',
                            data: {"manag": v, "action": "organisation", "section": "manager", "operation": "findManagerAjx"},
                            beforeSend: function () {

                                //document.getElementById('loading').style.display = 'block';
                                $('#nom').val('');
                                $('#prenom').val('');

                            },
                            success: function (data) {

                                if (data.isValid) {

                                    var $noteStyle = '';
                                    var $msg = '';

                                    if (data.result === "-1") {
                                        $msg = "Employ� non trouv�";
                                        $noteStyle = "danger";
                                    } else if (data.result === "0") {
                                        $msg = "Employ� d�j� manager";
                                        $noteStyle = "warning";

                                    } else if (data.result === "1") {
                                        $('#nom').val(data.nom);
                                        $('#prenom').val(data.prenom);
                                        $('#idEmploye').val(data.id);
                                    }

                                    if (data.result === "-1" || data.result === "0") {
                                        new PNotify({
                                            title: 'Recherche manager',
                                            shadow: true,
                                            text: $msg,
                                            type: $noteStyle,
                                            width: "290px",
                                            delay: 1400
                                        });
                                    }
                                }
               

                            },
                            error: function (jqXHR, exception) {
                                if (jqXHR.status === 0) {
                                    alert('Pas de connection. \n V�rifiez le r�seau.');
                                } else if (jqXHR.status == 404) {
                                    alert('La ressource demand�e est introuvable');
                                } else if (jqXHR.status == 500) {
                                    alert('Impossible de joindre le serveur.');
                                } else if (exception === 'parsererror') {
                                    alert('Echec lors du parse du r�sultat.');
                                } else if (exception === 'timeout') {
                                    alert('Time out error.');
                                } else if (exception === 'abort') {
                                    alert('Echec de la requ�te.');
                                } else {
                                    alert('Erreur non intercept�e.\n' + jqXHR.responseText);
                                }

                                //document.getElementById('loading').style.display = 'none';
                            }
                        });
                        return false; // Pour emp�cher le submit vers la page 'action'

                    }
                }
        </script>

        <%--<script src="../../../../assets/js/jquery.steps.min.js"></script>--%>

        <!-- Jquery Validate -->
        <script src="../../../../vendor/plugins/validate/jquery.validate.min.js"></script>



        <%--
        <script>
          var config = {
            '.chosen-select'           : {},
            '.chosen-select-deselect'  : {allow_single_deselect:true},
            '.chosen-select-no-single' : {disable_search_threshold:10},
            '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
            '.chosen-select-width'     : {width:"95%"}
          }
          for (var selector in config) {
            $(selector).chosen(config[selector]);
          }
        </script>--%>




        <!-- END: PAGE SCRIPTS -->

    </body>

</html>
