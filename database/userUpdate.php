<?php
// Include the database connection file
$path = $_SERVER['DOCUMENT_ROOT'];
require_once $path . "/attendanceapp/database/database.php";

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $roll_no = $_POST["roll_no"];
    $name = $_POST["name"];
    $faculty_ids = $_POST["faculty_id"]; // Array of selected faculty IDs
    $session_ids = $_POST["session_ids"]; // Array of selected session IDs
    $courses = $_POST["courses"]; // Array of selected course IDs

    // Initialize database connection
    $dbo = new Database();

    // Check if the student already exists
    $sql = "SELECT id FROM student_details WHERE roll_no = :roll_no";
    $stmt = $dbo->conn->prepare($sql);
    $stmt->bindParam(":roll_no", $roll_no);

    try {
        $stmt->execute();
        $student = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($student) {
            // Student exists, update the name
            $student_id = $student['id'];
            $sql = "UPDATE student_details SET name = :name WHERE roll_no = :roll_no";
            $stmt = $dbo->conn->prepare($sql);
            $stmt->bindParam(":name", $name);
            $stmt->bindParam(":roll_no", $roll_no);
            $stmt->execute();
            echo "Student details updated successfully.<br>";
        } else {
            // Student does not exist, insert a new record
            $sql = "INSERT INTO student_details (roll_no, name) VALUES (:roll_no, :name)";
            $stmt = $dbo->conn->prepare($sql);
            $stmt->bindParam(":roll_no", $roll_no);
            $stmt->bindParam(":name", $name);
            $stmt->execute();
            echo "Student details inserted successfully.<br>";
            $student_id = $dbo->conn->lastInsertId(); // Get the ID of the last inserted student
        }
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
        die();
    }
    $dbo->conn = null;

    // Redirect to success.php
    header("Location: /attendanceapp/success.php");
    exit();
}
?>