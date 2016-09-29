<html>
<head>
<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

*{margin:0;padding:0;}

body{
  background:white;
  font-family:'Open Sans',sans-serif;
}

.button{
  border-radius:10px;
  width:100px;
  background:rgb(94,200,170);
  display:block;
  margin:0 auto;
  margin-top:1%;
  padding:10px;
  text-align:center;
  text-decoration:none;
  color:#fff;
  cursor:pointer;
  transition:background .3s;
  -webkit-transition:background .3s;
}
.button:hover{
  background:#2288bb;
}

#login
{
  width:500px;
  margin:0 auto;
  margin-top:5px;
  margin-bottom:2%;
  transition:opacity 1s;
  -webkit-transition:opacity 1s;
}
#triangle{
  width:0;
  border-top: 12px solid transparent;
  border-right:12px solid transparent;
  border-bottom:12px solid rgb(94,200,170);;
  border-left:12px solid transparent;
  margin:0 auto;
}
#login h1{
  background:rgb(94,200,170);
  padding:20px 0;
  font-size:140%;
  font-weight:300;
  text-align:center;
  color:#fff;
}
.backg{
  background:#f0f0f0;
  padding:10% 4%;
}
form{
  background:white;
  padding:6% 4%;
}
input[type="text"],input[type="password"]{
  width:92%;
  background:#fff;
  margin-bottom:5%;
  margin-left:20px;
  border:1px solid #ccc;
  padding:4%;
  font-family:'Open Sans',sans-serif;
  font-size:95%;

}
input[type="submit"],input[type="submit"],form a{
  background:rgb(94,200,170);
  border:0;
  padding:5% 45% 5% 45%;
  font-family:'Open Sans',sans-serif;
  font-size:100%;
  color:#fff;
  cursor:pointer;
  transition:background .3s;
  -webkit-transition:background .3s;
  text-decoration: none;
}
.login
 {
    background-color:white;
    padding: 5px;
 }
.login a
 {
    text-decoration:none;
    padding-left:20px;
    font-size:15px;
    color:rgb(94,200,170);
 }
 body{
      background-image:url(images/back.jpg);
     background-repeat:no-repeat;
     background-attachment: scroll;
     
       
 }
</style>
</head>
<body>
<div class="login">LOGIN
    <a href="sellerlogin.html">seller</a>
    <a href="bidderlogin.html">bidder</a>
    <a href="adminlogin.html">admin</a>
    <a href="bidding.jsp" style="color:rgb(90,150,200); font-weight: bold;">BIDDING</a>
</div>
<span href="#" class="button" id="toggle-login">Bidding</span>

<div id="login">
  <div id="triangle"></div>
  <h1>Log in</h1>
  <form action="BiddingLogin" method="post" class="backg">
    <input type="text" placeholder="username" name="bus" />
    <input type="password" placeholder="password" name="bpass" /><br><br>
    <input type="submit" value="Log in">   
    <br><br><br><br>
        <a href="index.jsp">Close</a>
  </form>
</div>

<script>
$('#toggle-login').click(function(){
  $('#login').toggle();
});
</script>

</body>
</html>