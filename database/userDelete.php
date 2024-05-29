<?php
// Include the database connection file
$path = $_SERVER['DOCUMENT_ROOT'];
require_once $path . "/attendanceapp/database/database.php";

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $roll_no = $_POST["roll_no"];

    // Initialize database connection
    $dbo = new Database();

    // Check if the student exists
    $sql = "SELECT id FROM student_details WHERE roll_no = :roll_no";
    $stmt = $dbo->conn->prepare($sql);
    $stmt->bindParam(":roll_no", $roll_no);

    try {
        $stmt->execute();
        $student = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($student) {
            // Student exists, delete the record
            $student_id = $student['id'];
            $sql = "DELETE FROM student_details WHERE roll_no = :roll_no";
            $stmt = $dbo->conn->prepare($sql);
            $stmt->bindParam(":roll_no", $roll_no);
            $stmt->execute();
            echo "Student record deleted successfully.<br>";
        } else {
            echo "Student with roll number $roll_no does not exist.<br>";
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
