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

    // Insert student details into student_details table
    $dbo = new Database();
    $sql = "INSERT INTO student_details (roll_no, name) VALUES (:roll_no, :name)";
    $stmt = $dbo->conn->prepare($sql);
    $stmt->bindParam(":roll_no", $roll_no);
    $stmt->bindParam(":name", $name);

    try {
        $stmt->execute();
        echo "Student details inserted successfully.<br>";
        $student_id = $dbo->conn->lastInsertId(); // Get the ID of the last inserted student
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
        die();
    }

    // Insert student-course registration into course_registration table
    $sql = "INSERT INTO course_registration (student_id, course_id, session_id) VALUES (:student_id, :course_id, :session_id)";
    $stmt = $dbo->conn->prepare($sql);
    $stmt->bindParam(":student_id", $student_id);

    // Iterate through selected courses and sessions
    foreach ($courses as $course_id) {
        foreach ($session_ids as $session_id) {
            try {
                $stmt->bindParam(":course_id", $course_id);
                $stmt->bindParam(":session_id", $session_id);
                $stmt->execute();
                echo "Course registration for student $student_id in course $course_id for session $session_id inserted successfully.<br>";
            } catch (PDOException $e) {
                echo "Error: " . $e->getMessage();
                die();
            }
        }
    }
    // Close the database connection
    $dbo->conn = null;

    // Redirect to success.php
    header("Location: /attendanceapp/success.php");
    exit();
}
?>
