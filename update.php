<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student Name</title>
</head>
<body>
    <h2>Update Student Name</h2>
    <form action="/attendanceapp/database/userUpdate.php" method="POST">
        <label for="roll_no">Student Number:</label>
        <input type="text" id="roll_no" name="roll_no" required><br><br>

        <label for="name">Updated Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <input type="submit" value="Update">
    </form>
</body>
</html>
