<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page
   import="model.vo.AptVO, java.util.ArrayList, model.vo.AptNameVO"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>애프터부동산</title>

<link rel="icon" href="./Resources/img/logoIcon.png">
<!-- Font Awesome Icons -->
<link href="./Resources/vendor/fontawesome-free/css/all.min.css"
   rel="stylesheet" type="text/css">

<!-- Google Fonts -->

<link href="https://fonts.googleapis.com/css?family=Noto+Serif"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
   rel="stylesheet">
<link
   href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic'
   rel='stylesheet' type='text/css'>

<link
   href="https://fonts.googleapis.com/css?family=Do+Hyeon&amp;subset=korean"
   rel="stylesheet">

<link
   href="https://fonts.googleapis.com/css?family=Poor+Story&amp;subset=korean"
   rel="stylesheet">
<!-- Plugin CSS -->
<link href="./Resources/vendor/magnific-popup/magnific-popup.css"
   rel="stylesheet">

<!-- Theme CSS - Includes Bootstrap -->
<link href="./Resources/css/creative.min.css" rel="stylesheet">

<style type="text/css">
path:hover {
   fill:rgba(46,125,50,0.8);
   transition: .1s fill;

}

path {
   fill: rgba(120, 224, 143, 0.5);
   stroke: rgb(255, 255, 255);
   stroke-opacity: 0.5;
   filter:
}

path:before {
   content: attr(data-hover);
}

path:after {
   content: attr(data-after);
   position: absolute;
   top: 0;
   right: 0;
   height: 2px;
   width: 0;
   background: #3d3d3d;
   transition: 400ms ease all;
}

.gu {
   padding-top: 10px;
   background: #3d3d3d;
   color: #fff;
   border: none;
   position: relative;
   height: 40px;
   width: 150px;
   font-size: 1.0em;
   padding: 0 2em;
   cursor: pointer;
   transition: 800ms ease all;
   outline: none;
   border-radius: 5px;
}

.gu:focus, .gu:active {
   outline: none
}

.gu:hover {
   background-color: #d1ccc0;
   color: #3d3d3d;
}

.gu:before, .gu:after {
   content: '';
   position: absolute;
   top: 0;
   right: 0;
   height: 2px;
   width: 0;
   background: #3d3d3d;
   transition: 400ms ease all;
}

.gu:after {
   right: inherit;
   top: inherit;
   left: 0;
   bottom: 0;
}

.gu:hover:before, .gu:hover:after {
   width: 100%;
   transition: 800ms ease all;
}
/* An Overlay To Dim The Image And Make Text Readable*/
#color-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: linear-gradient(to bottom right, #34495e, #2c3e50);
  opacity: 0.6;
  z-index: -1;
}

.with-bg-size {
  background-image: url('./Resources/img/mainBG3.jpg');
  width: 100%;
  height: 100%;
  background-position: center;
  background-size: cover;
  
  -webkit-animation: back 5s infinite; /* Safari 4+ */
  -moz-animation:    back 5s infinite; /* Fx 5+ */
  -o-animation:      back 5s infinite; /* Opera 12+ */
  animation:         back 5s infinite; /* IE 10+, Fx 29+ */
  
}
/* The Keyframes*/
@keyframes back {
  25% {
    background-image: url('./Resources/img/mainBG7.jpg');
  }
  50% {
    background-image: url('./Resources/img/mainBG5.jpg'); 
     }
  
  75%{
    background-image: url('./Resources/img/mainBG6.jpg');
  }
  
/* Animation Does Not End At 100% Because It Makes The Images Transition In/Out Better For Some Reason*/
}

text{
   font-family:'Poor Story';
   fill: rgb(255, 255, 255); 
   text-anchor: middle; 
   font-size: 12px;
}

hr{
margin-top : 5px;
border : #f4623a 1.3px solid;
background-color : #f4623a;
}

form > input, form > select{
text-align: center;
width: 200px;
height : 50px;
border-radius: 10px;
border: #F79433 2px solid;
margin-top : 50px;
font-family:'Poor Story';
}

.text-center > div> h1{
margin-top : 50px;
color : white;
font-size : 50px;
font-weight: bold;
font-family:'Poor Story';
}


#submit1 {
  background-color: #f4623a;;
  border-radius: 40px;
  border: #dc7309;
  color: #fff;
  display: block;
  font-size: 1.3em;
  font-weight: bold;
  margin-left : auto;
  margin-right :auto;
  text-transform: uppercase;
  width : 200px;
  height : 50px;
}

#submit1::after {
  height: 0;
  left: 0;
  top: 0;
  width: 100%;
}

#submit1:hover:after {
  height: 100%;
}

#submit1,
#submit1::after {
  -webkit-transition: all 0.3s;
   -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
   transition: all 0.3s;
}

#submit1::before,
#submit1::after {
  background: #fff;
  content: '';
  position: absolute;
  z-index: -1;
}

#submit1:hover {
  background-color : #934d06;
}

form{
border-radius : 15px;
width : 900px;
height : 250px;
border : #f4623a 2px solid;
margin-left : auto;
margin-right : auto;  
}

</style>

</head>

<body id="page-top">

   <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
      id="mainNav">
      <div class="container">
         <a class="navbar-brand js-scroll-trigger" href="/afterAPT_v1/apt"
            style="font-family: 'Do Hyeon'; font-size: 25px;"> <img
            src="./Resources/img/logoIcon.png" width=30
            style="margin-right: 10px;">애프터 부동산
         </a>
         <button class="navbar-toggler navbar-toggler-right" type="button"
            data-toggle="collapse" data-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarResponsive"></div>
      </div>
   </nav>

   <!-- Masthead -->
   <header class="masthead with-bg-size">
      <div id='color-overlay'></div>
      <div class="container h-100">
         <div
            class="row h-100 align-items-center justify-content-center text-center">
            <div
               style='width: 100%; height: 50%; background-color: rgba(0, 0, 0, 0.8); border-radius : 15px;'>
               <%
                  ArrayList<AptVO> gudong = (ArrayList<AptVO>) request.getAttribute("gudong");
                  ArrayList<AptNameVO> aptname = (ArrayList<AptNameVO>) request.getAttribute("aptname");
                  if (aptname != null) {
               %>
               <h1>"<%=gudong.get(0).getGu()%> <%=gudong.get(0).getDong()%> "</h1>
               <hr style="border-color:#F79433; width:290px;">
               <form method='get' action='/afterAPT_v1/apt'>

                  <select name = 'kaptname'>
                     <%
                        for (AptNameVO vo : aptname) {
                     %>
                     <option><%=vo.getKaptname()%></option>
                     <%
                        }
                     %>
                  </select> 
                  <input type='text' name = 'price' placeholder="가격(만원)"> 
                  <input type='text' name = 'area' placeholder="면적(m&sup2;)">
                  <input type='text' name = 'floor' placeholder="층">
                  <br>
                  <input id="submit1" type="submit" value="GO">
                  
               </form>
               <%
                  }
               %>




            </div>

            
         </div>
      </div>
   </header>

   <!-- Contact Section -->
   <section class="page-section" id="contact">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-lg-8 text-center">
               <h2 class="mt-0" style="font-family: 'Do Hyeon'; font-size: 55px;">..MORE..</h2>
               <hr class="divider my-4">
               <p class="text-muted mb-5">다른 곳에서 정보를 얻어보세용~~</p>
            </div>
         </div>
         <div class="row">

            <div class="col-lg-4 ml-auto text-center">
               <a href="https://land.naver.com/" class="mx-2"> <i
                  class="fab fa-chrome fa-3x mb-3 text-muted"></i>
               </a>
            </div>
            <div class="col-lg-4 ml-auto text-center">
               <a href="http://www.k-apt.go.kr/" class="mx-2"> <i
                  class="fab fa-pushed fa-3x mb-3 text-muted"></i>
               </a>
            </div>
            <div class="col-lg-4 ml-auto text-center">
               <a href="http://www.molit.go.kr/portal.do" class="mx-2"> <i
                  class="fab fa-readme fa-3x mb-3 text-muted"></i>
               </a>
            </div>
         </div>
      </div>
   </section>

   <!-- Footer -->
   <footer class="bg-light py-5">
      <div class="container">
         <div class="small text-center text-muted">Copyright &copy;
            애프터부동산 project 2019</div>
      </div>
   </footer>

   <!-- Bootstrap core JavaScript -->
   <script src="./Resources/vendor/jquery/jquery.min.js"></script>
   <script src="./Resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   <!-- Plugin JavaScript -->
   <script src="./Resources/vendor/jquery-easing/jquery.easing.min.js"></script>
   <script
      src="./Resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

   <!-- Custom scripts for this template -->
   <script src="./Resources/js/creative.min.js"></script>


</body>

</html>