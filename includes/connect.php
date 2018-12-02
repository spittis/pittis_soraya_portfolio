<?php
$host = "localhost";
$user = "root";
$password = "root"; 
$db = "db_skills"; 

$conn = mysqli_connect($host, $user, $password, $db);

if (!$conn) { 
    echo "connection isn't working";
    exit; 
}

if (isset($_GET["modelNo"])) { 
    $piece = $_GET["modelNo"];

    $myQuery = "SELECT * FROM suitpiece WHERE section='$piece'";

    $result = mysqli_query($conn, $myQuery); 
    $rows = array(); 

    
    while($row = mysqli_fetch_assoc($result)) {
      $rows[] = $row;
    }
}



echo json_encode($rows);
?>