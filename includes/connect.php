<?php
$host = "localhost";
$user = "root";
$password = "root"; 
$db = "db_portfolio"; 

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
    echo json_encode($rows);
}



?>

<?php 

$user = "root";
$pwd = "root";

try {
    $conn = new PDO('mysql:host=localhost;dbname=db_portfolio',$user, $pwd);
    //var_dump($conn); //check connection - instead of doing a var element, use var_dump to 
    

} catch (PDOException $exception) {
    echo 'error with connection' . $exception->getMessage();
}

?>