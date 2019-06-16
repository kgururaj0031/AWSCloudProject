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

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.eid.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.eid.focus();
return false;
}

var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
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
                      <a href="tmlogin.jsp">Login</a> 
                    </li>
                    
                     <li>
                      <a href="index.html">Back</a> 
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
            
             <form action="tmlogin" method="Post" name="s" onsubmit="return valid()"> 
            <div>
                 <div class="form-group">
		    		<label for="email">Username:</label>
		   			<input type="email" class="form-control" id="eid" name="eid">
		 		 </div>
		  		<div class="form-group">
				    <label for="pwd">Password:</label>
				    <input type="password" class="form-control" id="pass" name="pass">
		 		</div>
		 		
		        <button type="submit" class="btn btn-default">Submit</button>
		
		  	</div>
		  	
		  	
		  		
		  	<table><tr> 
                <td colspan="2" align="center"><font size="2">
                <%
					String error=(String)request.getAttribute("loginFailed");
					if(error !=null){%>
					<font color="red">Invalid User </font>	
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
