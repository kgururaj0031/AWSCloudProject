<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
   String fname = null,username=null,id=null,pname=null;
id=(String)session.getAttribute("id");
if (id==null)
{
	id=(String)request.getAttribute("id");
}
try{

   Connection con;
   //con =  databasecon.getconnection(); 
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carmor","root","");
   Statement st = con.createStatement();

   //id=(String)session.getAttribute("id");
  
   String s = "select id,username from cscreg where id='"+id+"'";
   ResultSet rs = st.executeQuery(s);
   if(rs.next())
   {
   id=rs.getString(1);
   username=rs.getString(2);
   session.setAttribute("id",id);
   }
   else
   out.print("Please check your login credentials");   
  %>
<%
}
catch(Exception e)
{
System.out.println(e);
}
%>
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
}
    </style>

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
                      <a href="cscsearch.jsp">Search</a> 
                    </li>
                    
                     <li>
                      <a href="viewService.jsp">View Service</a> 
                    </li>
                    
                     <li>
                      <a href="cscpurchased.jsp">Purchased</a> 
                    </li>
                    
                    <li>
                      <a href="csclogin.jsp">logout</a> 
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
       

       
        <!-- /.row --><div class="w3ls-banner">
	<div class="heading">
		<h1>PURCHASE SUMMARY</h1>
	</div>

		<div class="container_1">
			<div class="heading">
				<h3>PLEASE ENTER THE BELOW DETAILS TO COMPLETE THE PURCHASE</h3></br></br>
			</div>
			<div class="agile-form">
				<form action="purchaseSuccess.jsp" method="post">
									<ul class="field-list">
									<li>
							<label class="form-label">
							   DURATION OF THE SERVICE
							   <span class="form-required"> </span>
							</label>
							<div class="form-input">
								<select class="form-dropdown" name="duration_of_service"  id="duration_of_service" required>
									<option value="">&nbsp;</option>
									<option value="3Months" name="3Months" id="3Months"> 3 Months </option>
									<option value="6Months" name="6Months" id="6Months"> 6 Months </option>
									<option value="1Year" name="1Year" id="1Year"> 1 Year </option>
									<option value="Morethan1year" name="Morethan1year" id="Morethan1year"> More Than 1 Year </option>
								</select>
							</div>
						</li>
						<li>
							<label class="form-label"> 
								NAME ON THE CARD
								<span class="form-required"> </span>
							</label>
							<div class="form-input">
								<input type="text" id="name" name="name" placeholder="Enter Name on the Card" required >
							</div>
						</li>
												<li>
							<label class="form-label"> 
								CARD NUMBER
								<span class="form-required"> </span>
							</label>
							<div class="form-input">
								<input type="text" id="cardnum" name="cardnum" placeholder="Enter Card Number" required >
							</div>
						</li>
						<li>
							<label class="form-label">
							   CARD TYPE
							   <span class="form-required"> </span>
							</label>
							<div class="form-input">
								<select class="form-dropdown" name="gender" required>
									<option value="">&nbsp;</option>
									<option value="Visa"> Visa </option>
									<option value="Debit"> Debit </option>
									<option value="Other"> Other </option>
								</select>
							</div>
						</li>
						<li>
							<label class="form-label">
							   EXPIRY DATE
							   <span class="form-required"> </span>
							</label>
							<div class="form-input dob">
								<span class="form-sub-label">
									<select name="month">
										<option>&nbsp;</option>
										<option value="January"> January </option>
										<option value="February"> February </option>
										<option value="March"> March </option>
										<option value="April"> April </option>
										<option value="May"> May </option>
										<option value="June"> June </option>
										<option value="July"> July </option>
										<option value="August"> August </option>
										<option value="September"> September </option>
										<option value="October"> October </option>
										<option value="November"> November </option>
										<option value="December"> December </option>
									 </select>
									<label class="form-sub-label1"> Month </label>
								</span>
								<span class="form-sub-label">
									<input type="text" class="year" id="year" name="year" placeholder=" " required>
									<label class="form-sub-label1"> Year </label>
								</span>
							</div>
						</li>
						<li> 
							<label class="form-label">
							   CVV
							   <span class="form-required"> </span>
							</label>
							<div class="form-input">
								<input type="text" id="cvv" name="cvv" placeholder="cvv" required >
							</div>
						</li>						
					</ul>
					</br>
					</br>
					<input type="image" id="image" width="100" height="40" src="images/purchase.png">
				</form>	
			</div>
		</div>
</div>
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
