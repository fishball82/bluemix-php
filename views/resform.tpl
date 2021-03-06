<!DOCTYPE html>
<html>
<head>
<!--
this script is used for the limited booking time.
<script type="text/javascript">
window.onload = function(){
var nowDate = new Date();
var h=nowDate.getHours(); 
if(h<9||h>=17){
	document.getElementById('submit').disabled ='true';
	document.getElementById('submit').color ='#333';
	alert("Warning:it's not a booking time now,you can't use the submit button!")
}else{
	document.getElementById('submit').disabled ='false';
}
} 
</script>
-->
<script type="text/javascript" src="views/js/info_validate.js"></script>
<link rel="stylesheet" type="text/css" href="views/css/css.css">
<title>Reserve and Pick Up</title>
</head>
<body>
<div id="header">
<div>
<h1>&nbsp;&nbsp;<img src="../static/images/logo.png" height="40" width="40"/>&nbsp;&nbsp;Mango Mobile Store</h1>
</div>
<div id="content_left">
  <div id="phone_img"> <img src="/static/images/<?php echo $item->IMGSRC ?>"/> </div>
  <div id="statement">
    <p>Statement:</p>
    <p> Due to the strong demand, Phone only accept a limited number of applications. If you want to book the Phone, select retail stores and Phone models. If, your Phone booking application is successful, you will receive an email confirmation notice before 9:00 tonight.
</p><p>     
      If you do not receive an email, which represents the booking fails. Only the customers who receive an email can buy the Phone. You can apply for booking the cPhone every morning from 9:00 to 17:00. Please try again later to submit an application. </p>
  </div>
</div>
<div id="content_right">
  <form action="/reserve/php/order.php" method="post" onsubmit="return validate_form(this)">
    <div id="retail_store" >
    <h2>Select Retail Store</h2>
      <select name="rstore">
        <option value="none">-- Please select a retail store --</option>
        <option value="ifc_mall">ifc mall</option>
        <option value="mongkok">Mongkok</option>
        <option value="shatin">Shatin</option>
      </select>
    </div>
    <div id="model">
    <h2>Select Phone Model</h2>
    <p>choose the retail that you want to pick up the product</p>
      <input type="radio" name="model" value="16gb" checked="true"/>
      16GB <br>
      <input
					type="radio" name="model" value="32gb" />
      32GB <br>
      <input
					type="radio" name="model" value="64gb" />
      64GB <br>
      <input
					type="radio" name="model" value="128gb" />
      128GB <br>
    </div>
    <h2>Your Contact</h2>
    <div id="contact"> 
    First Name:
      <input type="text" name="fname" class="editbox"
        onmouseover="this.style.borderColor='black'
 	this.style.backgroundColor='#CCC'" 
    onmouseout="this.style.borderColor='black'
	this.style.backgroundColor='#ffffff'"
        >
      <br><br>
      Last Name:
      <input type="text" name="lname" class="editbox"   onmouseover="this.style.borderColor='black'
 	this.style.backgroundColor='#CCC'" 
    onmouseout="this.style.borderColor='black'
	this.style.backgroundColor='#ffffff'">
      <br><br>
      Email:
      <input
					type="email" name="email" class="editbox"   onmouseover="this.style.borderColor='black'
 	this.style.backgroundColor='#CCC'" 
    onmouseout="this.style.borderColor='black'
	this.style.backgroundColor='#ffffff'">
      <br><br>
      Phone:
      <input type="text"
					name="rphone" class="editbox"   onmouseover="this.style.borderColor='black'
 	this.style.backgroundColor='#CCC'" 
    onmouseout="this.style.borderColor='black'
	this.style.backgroundColor='#ffffff'">
      <br>
    </div>
    <br>
    <div id="button">
      <input type="submit" value="Submit" id="submit" class="buttoncss">
      <input type="reset"
					value="Reset" class="buttoncss">
    </div>
    <br>
  </form>
</div>
</body>
</html>
