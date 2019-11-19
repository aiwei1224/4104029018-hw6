<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="team8"/>
  <jsp:setProperty property="user" name="database" value="team8"/>
  <jsp:setProperty property="password" name="database" value="NCHUTeam8!"/>
</jsp:useBean>
<%
  database.connectDB();
  database.query("select * from drink where sid=2;");
  ResultSet rs = database.getRS();
  database.CloseDb();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 什麼版本IE 就用什麼版本的標準模式 -->
<!-- width通常設為device-width，用意是適應各家裝置的大小，這樣寫CSS時就能放心的把版面寬度設為100% initial-scale=1 表不能縮放-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="前端與網頁資料庫之實例應用">
<meta name="author" content="venus_bert">

<title>StarBucks</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Semantic UI CSS -->
<link href="vendors/semantic-ui/dist/semantic.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendors/sweetalert/dist/sweetalert.css">

  </head>

  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
  <div class="navbar-header">
  <!-- 當在手機上的大小時 -->
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
  <span class="sr-only">Toggle navigation</span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span> </button>
  <a class="navbar-brand" href="index.html"><img src="images/staricon.jpg"></a>
  <a class="navbar-brand" href="index.html">HOME</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  <ul class="nav navbar-nav">
  <li>
  <a href="starbucks.jsp" style="font-family:Microsoft JhengHei;">StarBucks</a>
  </li>

  <li>
  <a href="comebuy.jsp" style="font-family:Microsoft JhengHei;">comebuy</a>
  </li>

  <li>
  <a href="50.jsp" style="font-family:Microsoft JhengHei;">50嵐</a>
  </li>

  </ul>
  </div>
  </div>
  </nav>


    <div class="page-header">
    <img class="img-responsive" src="">

    </div>

<div class="container">
  <div class="row">
      <% if(rs !=null){ while(rs.next()){
        String id =rs.getString("id");
        String name=rs.getString("name") ;
        String image=rs.getString("image") ;
        String price=rs.getString("price") ; %>
      <div class="col s6">
          <div class="card horizontal">
              <div class="card-image" style="padding:2vh;">
                  <img src="<%=image%>" style="width:17vh;height:19vh;"></div>
                  <div class="card-stacked">
                      <div class="card-content">
                          <h style="font-size:20px;font-weight:bold;"><%=name%></h>
                          <p>價錢：<%=price%></p>
                      </div>
                      <div class="card-action">
                        <select id='number"+ data[j].id +"' class='ui fluid dropdown'>
                        <option value='1'>1</option>
                        <option value='2'>2</option>
                        <option value='3'>3</option>
                        <option value='4'>4</option>
                        <option value='5'>5</option>
                        <option value='6'>6</option>
                        <option value='7'>7</option>
                        <option value='8'>8</option>
                        <option value='9'>9</option>
                        <option value='10'>10</option>
                       </select>
                        <br></br>
                        <button class='fluid ui black button' style='font-family: &quot;Microsoft JhengHei&quot;;' onclick=" + "getValue("+ data[j].id+");"+"> 訂購 </button>
                      </div>
                  </div>
              </div>
          </div>
      <% } }%>

  </div>

  <hr>
   <footer>
      <button class="ui facebook button" onclick="self.location.href='https://www.facebook.com/'"/>
          <i class="facebook icon"></i>
          Facebook
      </button>
      <button class="ui google plus button" onclick="self.location.href='https://www.google.com.tw/'"/>
          <i class="google  icon"></i>
          Google
      </button>
      <button class="ui youtube button" onclick="self.location.href='https://www.youtube.com/?hl=zh-TW&gl=TW&tab=w1'"/>
          <i class="youtube icon" ></i>
          YouTube
      </button>
  </footer>



    </div>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

  </body>
</html>
