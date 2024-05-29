<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/add.css">
    <title>Add Student</title>
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
    <form action="/attendanceapp/database/formhandler.php" method="post">
        <h1>ADD NEW STUDENT</h1>
        <div class="inputgroup topmarginsmall">
            <input type="text" id="roll_no" name="roll_no" required>
            <label for="roll_no">Student Number:</label>
        </div>

        <div class="inputgroup topmarginsmall">
            <input type="text" id="name" name="name" required>
            <label for="name">Name:</label>
        </div>

        <label for="session">Select Session:</label><br>
        <div class="checkbox-group">
            <input type="checkbox" id="session1" name="session_ids[]" value="1">
            <label for="session1">FIRST SEMESTER</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="session2" name="session_ids[]" value="2">
            <label for="session2">SECOND SEMESTER</label>
        </div>

        <label for="courses">Select Courses:</label><br>
        <div class="checkbox-group">
            <input type="checkbox" id="course1" name="courses[]" value="1">
            <label for="course1">Web-based System Development</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="course2" name="courses[]" value="2">
            <label for="course2">Elementary Statistics</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="course3" name="courses[]" value="3">
            <label for="course3">Computer Programming I</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="course4" name="courses[]" value="4">
            <label for="course4">Discrete Mathematical Structures in Computer Science I</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="course5" name="courses[]" value="5">
            <label for="course5">Discrete Mathematical Structures in Computer Science II</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="course6" name="courses[]" value="6">
            <label for="course6">Computer Programming II</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="course7" name="courses[]" value="7">
            <label for="course7">Analytic Geometry and Calculus I</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="course8" name="courses[]" value="8">
            <label for="course8">Logic Design and Digital Computer Circuits</label>
        </div>

        <button class="topmargin" type="submit">ADD STUDENT</button>
    </form>
</body>
</html>
