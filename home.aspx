<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="cmms.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="index.css">
    <title></title>
    <style>


section {
  width: 100%;
  display: inline-block;
  background: #333;
  height: 50vh;
  text-align: center;
  font-size: 22px;
  font-weight: 700;
  text-decoration: underline;
}

.footer-distributed{
  background: rgb(0, 0, 0);
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
  box-sizing: border-box;
  width: 100%;
  text-align: left;
  font: bold 16px sans-serif;
  padding: 55px 50px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
  display: inline-block;
  vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
  width: 40%;
}

/* The company logo */

.footer-distributed h3{
  color:  #ffffff;
  font: normal 36px 'Open Sans', cursive;
  margin: 0;
}

.footer-distributed h3 span{
  color:  lightseagreen;
}

/* Footer links */

.footer-distributed .footer-links{
  color:  #ffffff;
  margin: 20px 0 12px;
  padding: 0;
}

.footer-distributed .footer-links a{
  display:inline-block;
  line-height: 1.8;
  font-weight:400;
  text-decoration: none;
  color:  inherit;
}

.footer-distributed .footer-company-name{
  color:  #222;
  font-size: 14px;
  font-weight: normal;
  margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
  width: 35%;
}

.footer-distributed .footer-center i{
  background-color:  #33383b;
  color: #ffffff;
  font-size: 25px;
  width: 38px;
  height: 38px;
  border-radius: 50%;
  text-align: center;
  line-height: 42px;
  margin: 10px 15px;
  vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
  font-size: 17px;
  line-height: 38px;
}

.footer-distributed .footer-center p{
  display: inline-block;
  color: #ffffff;
  font-weight:400;
  vertical-align: middle;
  margin:0;
}

.footer-distributed .footer-center p span{
  display:block;
  font-weight: normal;
  font-size:14px;
  line-height:2;
}

.footer-distributed .footer-center p a{
  color:  lightseagreen;
  text-decoration: none;;
}

.footer-distributed .footer-links a:before {
  content: "|";
  font-weight:300;
  font-size: 20px;
  left: 0;
  color: #fff;
  display: inline-block;
  padding-right: 5px;
}

.footer-distributed .footer-links .link-1:before {
  content: none;
}

/* Footer Right */

.footer-distributed .footer-right{
  width: 20%;
}

.footer-distributed .footer-company-about{
  line-height: 20px;
  color:  #92999f;
  font-size: 13px;
  font-weight: normal;
  margin: 0;
}

.footer-distributed .footer-company-about span{
  display: block;
  color:  #ffffff;
  font-size: 14px;
  font-weight: bold;
  margin-bottom: 20px;
}

.footer-distributed .footer-icons{
  margin-top: 25px;
}

.footer-distributed .footer-icons a{
  display: inline-block;
  width: 35px;
  height: 35px;
  cursor: pointer;
  background-color:  #33383b;
  border-radius: 2px;

  font-size: 20px;
  color: #ffffff;
  text-align: center;
  line-height: 35px;

  margin-right: 3px;
  margin-bottom: 5px;
}

/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 880px) {

  .footer-distributed{
    font: bold 14px sans-serif;
  }

  .footer-distributed .footer-left,
  .footer-distributed .footer-center,
  .footer-distributed .footer-right{
    display: block;
    width: 100%;
    margin-bottom: 40px;
    text-align: center;
  }

  .footer-distributed .footer-center i{
    margin-left: 0;
  }

}
.logo{
  height: 10vh;
  width: 10vh;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
    <div class="menu">
      <div class="logo">
        <a href="#">404.Solution</a>
      </div>
      <ul>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="reg.aspx">Registration </a></li>
        <li><a href="login.aspx" id="login">login</a></li>
        
      </ul>
    </div>
  </nav>
  <form>
  <div class="img">
	  <div class="center">
	    <div class="title">Get Your Problem </div>
	    <div class="sub_title">Solved With Us</div>
	    <div class="btns">
	      <button>Learn More</button>
	      <button>Subscribe</button>
	    </div>
	  </div>
  </div>
  <br><br><br>
  
  <div><h2 style="text-align:center;">How to complain? </h2></div>
  <br>
   
   <div class="row">
  		<div class="column">
    		<div class="card">
      			<h3>First</h3><br>
      				<p>You can complain directly with us you have been dealing with.
      				Complaints are often sorted out immediately this way.</p>
    		</div>
  		</div>
  		
  		<div class="column">
    		<div class="card">
      			<h3>Second</h3><br>
      				<p>If you do not know who to contact, or you have a name but no telephone number, then call our enquiries team on 18XX XXX XXX</p>
   			 </div>
  		</div>
  
  		<div class="column">
    		<div class="card">
      			<h3>Third</h3><br><br>
      				<p>The Best way to complain you can use our online complaints form.</p>
    		</div>
  		</div>
  	</div>
  	<br><br><p style="text-align:center">Your complaint will be recorded and dealt with by the most appropriate team or person in your area.</p><br><br><hr><br><br>
  </form>
</body>
</html>



<footer class="footer-distributed">

  <div class="footer-left">

    <h3>404.Solution Pvt Ltd<span><img style="height: 20vh;" src="../../assets/Images/logp.png" alt=""></span></h3>

    <p class="footer-links">
      <a href="index.aspx" class="link-1">Home</a>

      <a href="complain.aspx">complain</a>

      <a href="logout.aspx">logout</a>

      <a href="viewdata.aspx">viewdata</a>

      <a href="#">Contact</a>
    </p>

    <p class="footer-company-name">404.Solution Pvt Ltd © 2023</p>
  </div>

  <div class="footer-center">

    <div>
      <i class="fa fa-map-marker"></i>
      <p><span>444 S. Cedros Ave</span> Solana Beach, India</p>
    </div>

    <div>
      <i class="fa fa-phone"></i>
      <p>+1.555.555.5555</p>
    </div>

    <div>
      <i class="fa fa-envelope"></i>
      <p><a href="mailto:support@company.com">support@company.com</a></p>
    </div>

  </div>

  <div class="footer-right">

    <p style="color: white;" class="footer-company-about">
      <span>About the company</span>
      E-commerce (electronic commerce) is the buying and selling of goods and services, or the transmitting of funds or data, over an electronic network, primarily the internet.
    </p>

  </div>

</footer>

    </form>
</body>
</html>
