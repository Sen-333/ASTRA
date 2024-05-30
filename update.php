<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/update.css">
    <title>Update Student Name</title>
</head>
<body>
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
    <form action="/attendanceapp/database/userUpdate.php" method="POST">
        <h1>Update Student Name</h1>
        <div class="inputgroup topmarginsmall">
            <input type="text" id="roll_no" name="roll_no" required>
            <label for="roll_no">Student Number:</label>
        </div>

        <div class="inputgroup topmarginsmall">
            <input type="text" id="name" name="name" required>
            <label for="name">Updated Name:</label>
        </div>
        <button class="topmargin" type="submit">SUBMIT</button>
    </form>
</body>
</html>
