<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/loader.css">
    <title>LoginPage</title>
</head>
<header>
       <div class= "imgcontainer">
              <div class="logo"">
                     <div class="img1">
                            <img src= "UPlogo.png" class="logo1">
                     </div>
                     <div class="img2">
                     <img src= "Logo.png" class="logo2">
                     </div>
              </div>
       </div>
</header>

<body>
    <div class="loginform">
              <div class= "title"> Student Attendance System</div>
              <div class= "title"> Faculty Login</div>
             <div class="inputgroup topmargin">
                    <input type="text" id="txtUsername" required>
                    <label for="txtUsername" id="lblUsername">USER NAME</label>
             </div>

             <div class="inputgroup topmargin">
                    <input type="password" id="txtPassword" required>
                    <label for="txtPassword" id="lblPassword">PASSWORD</label>
             </div>
             <div class="divcallforaction topmargin">
                <button class="btnlogin inactivecolor" id="btnLogin">LOGIN</button>
             </div>  
             
             <div class="diverror topmargin" id="diverror">
              <label class="errormessage" id="errormessage">ERROR GOES HERE</label>
             </div>
    </div>
    <div class="lockscreen" id="lockscreen">
       <div class="spinner" id="spinner"></div>
         <lable class="lblwait topmargin" id="lblwait">PLEASE WAIT</lable>
    </div>

         <script src="js/jquery.js"></script>
        <script src="js/login.js"></script>
</body>
</html>