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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<script type="text/javascript">

function valid()
{

var sm=document.s.sm.value;
if(sm=="")
{
alert("Pls Enter Service Model");
document.s.sm.focus();
return false;
}

var sn=document.s.sn.value;
if(sn=="")
{
alert("Pls Enter Service Name");
document.s.sn.focus();
return false;
}
var dm=document.s.dm.value;
if(dm=="")
{
alert("Pls Enter Deployment Model");
document.s.dm.focus();
return false;
}
var os=document.s.os.value;
if(os=="")
{
alert("Pls Enter OS");
document.s.os.focus();
return false;
}
var price=document.s.price.value;
if(price=="")
{
alert("Pls Enter the Service");
document.s.price.focus();
return false;
}
var cdate=document.s.cdate.value;
if(cdate=="")
{
alert("Pls Enter Date");
document.s.cdate.focus();
return false;
}



}

</script>
    
    
    

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
                      <a href="cspaddservice.jsp">Add Services</a> 
                    </li>
                    
                     <li>
                      <a href="cspservicelist.jsp">Service List</a> 
                    </li>
                    <li>
                      <a href="csplogin.jsp">Logout</a> 
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
            	
                <h1 class="main-heading">
                   Supporting Reputation-based Trust Management for Cloud Services
                </h1>
              
            </div>
            
             <form action="AddService" method="Post" name="s" onsubmit="return valid()"> 
            <div>
                 <div class="form-group">
		    		<label for="s model">Service Model:</label>
		   			<input type="text" class="form-control" id="sm" name="sm">
		 		 </div>
		  		<div class="form-group">
				    <label for="s name">Service Name:</label>
				    <input type="text" class="form-control" id="sn" name="sn">
		 		</div>
		 		<div class="form-group">
				    <label for="d model">Deployment Model:</label>
				    <input type="text" class="form-control" id="dm" name="dm">
		 		</div>
		 		<div class="form-group">
				    <label for="s os">Service OS:</label>
				    <input type="text" class="form-control" id="os" name="os">
		 		</div>
				<div class="form-group">
				    <label for="price">Price:</label>
				    <input type="number" class="form-control" id="price" name="price">
		 		</div>
				<div class="form-group">
				    <label for="date">Date:</label>
				    <input type="date" class="form-control" id="cdate" name="cdate">
		 		</div>
						 		
		        <button type="submit" class="btn btn-default">ADD</button>
		        <button type="reset" class="btn btn-default">RESET</button>
		
		  	</div>
		  	
		  	
		  		
		  	<table><tr> 
                <td colspan="2" align="center"><font size="2">
                <%
					String error=(String)request.getAttribute("addSuccess");
					if(error !=null){%>
					<font color="red">Product Upload Successfully....</font>	
						&nbsp;<%}
				%>
                  </font></td>
        </tr></table>
		  	
		  	
		  	
		  	</form>
  
            
            
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
