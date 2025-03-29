<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

$host = "localhost";
$dbname = "jemadari";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $endpoint = $_GET['endpoint'] ?? '';

    if ($endpoint === 'students') {
        $stmt = $conn->query("SELECT name, program FROM students");
        echo json_encode($stmt->fetchAll(PDO::FETCH_ASSOC));
    } elseif ($endpoint === 'subjects') {
        $stmt = $conn->query("SELECT subject_year, subject_name FROM subjects");
        $subjects = [];
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $subjects["Year " . $row['subject_year']][] = $row['subject_name'];
        }
        echo json_encode($subjects);
    } else {
        echo json_encode(["message" => "Invalid endpoint"]);
    }
} catch (PDOException $e) {
    echo json_encode(["error" => $e->getMessage()]);
}
?>
