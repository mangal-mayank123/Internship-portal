<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<?php $home_path = $_SERVER['DOCUMENT_ROOT'];?>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="<?php $home_path?>/bootstrap/jquery-1.11.2.min.js"></script>
<script src="<?php $home_path?>/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php $home_path?>/bootstrap/jPages.min.js"></script>
<script src="<?php $home_path?>/bootstrap/jquery-ui.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="<?php $home_path?>/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css"
	href="<?php $home_path?>/bootstrap/jPages.css">
	<link rel="stylesheet" type="text/css"
	href="<?php $home_path?>/bootstrap/jquery-ui.min.css">
<title>College partner</title>

<script>
function logoutFunc()
{
	
}

function homeFunc()
{
	
}

function redirectToPage(url)
{
	if(document.forms[0])
		{
			//alert("forms exist");
			document.forms[0].action=url;
			document.forms[0].method = "post";
			document.forms[0].submit();
		}
	else
		{
		//alert("no form");
		var f = document.createElement("form");
		f.setAttribute('method',"post");
		f.setAttribute('action',url);
		document.getElementsByTagName('body')[0].appendChild(f);
		document.forms[0].submit();
		}
}

function checkNumber(ele)
{
	var regex = /^[0-9]*$/;
	if(!regex.test(ele.value)	|| (parseInt(ele.value) < parseInt(0)) )
	{
	alert('Given field should be a positive number');
	ele.focus();
	ele.value='';
	return false;
	}
	return true;	
}

function checkEmail(ele)
{
	//var val='';
	 var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if(!regex.test(ele.value) )
	{
	alert('Given field should be an Email');
	ele.value='';
	ele.focus();
	return false;
	}
	return true;	
}



</script>

<style>
.navbar{
background-color: #9c27b0;
color: #FFFFFF;
border-radius: 0px;
}
.navbar:a{
color: #FFFFFF;
}
.color-white
{
color: #FFFFFF;
}
.navbar-brand
{
font-size: 25px;
font-weight: 250;
}
.header-btn .icon-bar{
    background:#FFF;
}
	
	
	
html {
  position: relative;
  min-height: 100%;
}
body {
  /* Margin bottom by footer height */
  margin-bottom: 60px;
}
.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 60px;
  background-color: #9c27b0;
}
</style>
</head>
<body>
	 <nav class="navbar navbar-static">
   <div class="container-fluid">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle header-btn" data-toggle="collapse" data-target="#myNavbar" value="Menu">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand color-white" href="/home.php" ><b>College Partner</b></a>
    </div>
     
      <div class="collapse navbar-collapse" id="myNavbar">
      
</nav>

</body>

</html>