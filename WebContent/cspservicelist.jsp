<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<%@ page import="java.sql.*"%>
<%@ page import="databaseconnection.databasecon"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>CloudArmor</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/modern-business.css" rel="stylesheet">
<style type="text/css">
.heading-line {
	width: 16%;
	margin: 2% 42%;
	height: 1px;
	background-color: #000;
}

.main-heading {
	text-transform: uppercase;
	font-size: 36px;
	font-weight: 700;
}
    	.body {
    	background-image: url("images/cloud.jpg");
</style>

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body style = "background: url(images/cloud.jpg); background-size:100% 100%;">

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">Home</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">

					<li><a href="cspaddservice.jsp">Add Services</a></li>

					<li><a href="cspservicelist.jsp">Service List</a></li>
					<li><a href="csplogin.jsp">Logout</a></li>



				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>


	<!-- Page Content -->
	<div class="container">

		<!-- Marketing Icons Section -->
		<div class="row">
			<div class="col-lg-12 text-center">

				<h1 class="main-heading">Supporting Reputation-based Trust
					Management for Cloud Services</h1>

			</div>

			<div>

				<table class="table table-hover" border="1">
					<thead>
						<tr>
							<th>Service Id</th>
							<th>Service Model</th>
							<th>Service Name</th>
							<th>Service OS</th>
							<th>Deploy Model</th>
							<th>Price</th>
							<th>Date</th>

						</tr>
					</thead>
					<tbody>
						<%
				    Connection con;
                	String query="select * from addservice";
					try
					{
					    databasecon db = new databasecon();
					    con = (Connection) db.getconnection();
					    
					    Statement stmt=con.createStatement();
					    ResultSet rs=stmt.executeQuery(query);
					    while(rs.next())
					    {
					    	int sid = rs.getInt("id");
					    	String smodel = rs.getString("smodel");
					    	String sname = rs.getString("sname");
					    	String sos = rs.getString("sos");
					    	String dmodel = rs.getString("dmodel");
					    	String price = rs.getString("price");
					    	String cdate = rs.getString("cdate");
					    				    
				    %>
						<tr>
							<td><%=sid%></td>
							<td><%=smodel %></td>
							<td><%=sname %></td>
							<td><%=sos %></td>
							<td><%=dmodel%></td>
							<td><%=price%></td>
							<td><%=cdate%></td>
							        
						</tr>
						<%

					}
					%>
					</tbody>
					

				</table>

				<%
						    rs.close();
						    stmt.close();
						    con.close();
						    }
						catch(Exception e)
						{
						    e.printStackTrace();
						    }
			  	%>

			</div>

		</div>

		<!-- /.row -->
		<hr>
		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Script to Activate the Carousel -->
	<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
