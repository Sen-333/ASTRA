<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Student Record</title>
</head>
<body>
    <h2>Delete Student Record</h2>
    <form action="/attendanceapp/database/userDelete.php" method="post">
        <label for="roll_no">Roll Number:</label>
        <input type="text" id="roll_no" name="roll_no" required><br><br>

        <input type="submit" value="Delete">
    </form>
</body>
</html>
