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
    	.heading-line{
    	width:16%;
    	margin:2% 42%;
    	height:1px;
    	background-color: #000;
    	}
    	.main-heading{
    	text-transform:uppercase;
    	font-size:36px;
    	font-weight:700;}
    	    	.body {
    	background-image: url("images/cloud.jpg");
    </style>

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body style = "background: url(images/cloud.jpg); background-size:100% 100%;">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                 
                    <li>
                      <a href="#">IDM</a> 
                    </li>
               
                   
                     <li>
                      <a href="idmLogin.jsp">logout</a> 
                    </li> 
                    
                    
                    
                    
                    
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
            	<!-- <h4>Welcome To</h4> -->
                <h1 class="main-heading">
                     Supporting Reputation-based Trust Management for Cloud Services</h1>
              <!--   <p class="heading-line text-center"></p>
                <h3> </h3> -->
            </div>
            
            
            <div>
            
          <table class="table table-hover" border="1">
					<thead>
						<tr>
							<th>User Name</th>
							<th>Email</th>
							<th>Password</th>
							<th>Mobile</th>
							<th>Profile Status</th>
							<th>Send IDM key</th>
							
							
						</tr>
					</thead>
					<tbody>
						<%
				    Connection con;
                	String query="select * from cscreg";
					try
					{
					    databasecon db = new databasecon();
					    con = (Connection) db.getconnection();
					    
					    Statement stmt=con.createStatement();
					    ResultSet rs=stmt.executeQuery(query);
					    while(rs.next())
					    {
					    	//int sid = rs.getInt("id");
					    	String username = rs.getString("username");
					    	String email = rs.getString("email");
					    	String password = rs.getString("password");
					    	String mobile = rs.getString("mobile");
					    	String status = rs.getString("status");
					    				    
				    %>
						<tr>
							<td><%=username%></td>
							<td><%=email %></td>
							<td><%=password %></td>
							<td><%=mobile %></td>
							<td><%=status %></td>
							<td> <div id="form_wrapper3" class="form_wrapper3">
  							 
        <form class="button active" action = "IDMResponse" method="post" name="s" onsubmit="return valid()">
        
							<input type="submit" name="sub" value="Activate" class="submit"></input>
							<div class="clear"></div>	
							</form>
							</div></td>
							
						
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
